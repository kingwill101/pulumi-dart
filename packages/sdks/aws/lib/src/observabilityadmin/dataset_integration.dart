import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_integration_args.dart';
import 'dataset_integration_state.dart';

/// Manages a CloudWatch Observability Admin Dataset Integration. A dataset integration enables CloudWatch to forward the account's telemetry to a dataset using an IAM role that you provide.
///
/// &gt; **NOTE:** Only one dataset integration can exist per account and Region. Creating a second one fails with a `ConflictException`. To manage an existing dataset integration, import it.
///
/// &gt; **NOTE:** A successful apply does not prove that forwarding works. If the execution role's trust policy names the wrong account in `aws:SourceAccount` or `aws:SourceArn`, or the role lacks the permissions below, the integration is still created but nothing is forwarded.
///
/// Before you create the integration:
///
/// * The caller needs `iam:PassRole` on the execution role to create or update the integration.
/// * The execution role must be in the same account as the integration and must trust `logs.amazonaws.com`. Both trust policy conditions must name that account, as in the example below.
/// * The role's `logs:IntegrateWithDataset` permissions decide which log groups are forwarded. `log-group:*` forwards all log groups in the account. Log groups in the Delivery log class are never forwarded.
/// * If the destination dataset is encrypted with a customer managed AWS KMS key, the key policy must allow the execution role `kms:Encrypt`, `kms:Decrypt`, and `kms:GenerateDataKey`.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const currentGetRegion = aws.getRegion({});
/// const example = new aws.iam.Role("example", {
///     name: "example-dataset-integration",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: "logs.amazonaws.com",
///             },
///             Condition: {
///                 StringEquals: {
///                     "aws:SourceAccount": current.then(current => current.accountId),
///                 },
///                 ArnLike: {
///                     "aws:SourceArn": Promise.all([currentGetPartition, currentGetRegion, current]).then(([currentGetPartition, currentGetRegion, current]) => `arn:${currentGetPartition.partition}:observabilityadmin:${currentGetRegion.region}:${current.accountId}:dataset-integration/default`),
///                 },
///             },
///         }],
///     }),
/// });
/// const exampleRolePolicy = new aws.iam.RolePolicy("example", {
///     role: example.name,
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [
///             {
///                 Effect: "Allow",
///                 Action: "logs:IntegrateWithDataset",
///                 Resource: Promise.all([currentGetPartition, currentGetRegion, current]).then(([currentGetPartition, currentGetRegion, current]) => `arn:${currentGetPartition.partition}:logs:${currentGetRegion.region}:${current.accountId}:log-group:*`),
///             },
///             {
///                 Effect: "Allow",
///                 Action: "cloudwatch:PutRecords",
///                 Resource: "*",
///             },
///         ],
///     }),
/// });
/// const exampleDatasetIntegration = new aws.observabilityadmin.DatasetIntegration("example", {roleArn: example.arn}, {
///     dependsOn: [exampleRolePolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_partition = aws.get_partition()
/// current_get_region = aws.get_region()
/// example = aws.iam.Role("example",
///     name="example-dataset-integration",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "logs.amazonaws.com",
///             },
///             "Condition": {
///                 "StringEquals": {
///                     "aws:SourceAccount": current.account_id,
///                 },
///                 "ArnLike": {
///                     "aws:SourceArn": f"arn:{current_get_partition.partition}:observabilityadmin:{current_get_region.region}:{current.account_id}:dataset-integration/default",
///                 },
///             },
///         }],
///     }))
/// example_role_policy = aws.iam.RolePolicy("example",
///     role=example.name,
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [
///             {
///                 "Effect": "Allow",
///                 "Action": "logs:IntegrateWithDataset",
///                 "Resource": f"arn:{current_get_partition.partition}:logs:{current_get_region.region}:{current.account_id}:log-group:*",
///             },
///             {
///                 "Effect": "Allow",
///                 "Action": "cloudwatch:PutRecords",
///                 "Resource": "*",
///             },
///         ],
///     }))
/// example_dataset_integration = aws.observabilityadmin.DatasetIntegration("example", role_arn=example.arn,
/// opts = pulumi.ResourceOptions(depends_on=[example_role_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var currentGetRegion = Aws.GetRegion.Invoke();
///
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "example-dataset-integration",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "logs.amazonaws.com",
///                     },
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["StringEquals"] = new Dictionary<string, object?>
///                         {
///                             ["aws:SourceAccount"] = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                         ["ArnLike"] = new Dictionary<string, object?>
///                         {
///                             ["aws:SourceArn"] = Output.Tuple(currentGetPartition, currentGetRegion, current).Apply(values =>
///                             {
///                                 var currentGetPartition = values.Item1;
///                                 var currentGetRegion = values.Item2;
///                                 var current = values.Item3;
///                                 return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:observabilityadmin:{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}:{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:dataset-integration/default";
///                             }),
///                         },
///                     },
///                 },
///             },
///         }),
///     });
///
///     var exampleRolePolicy = new Aws.Iam.RolePolicy("example", new()
///     {
///         Role = example.Name,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Action"] = "logs:IntegrateWithDataset",
///                     ["Resource"] = Output.Tuple(currentGetPartition, currentGetRegion, current).Apply(values =>
///                     {
///                         var currentGetPartition = values.Item1;
///                         var currentGetRegion = values.Item2;
///                         var current = values.Item3;
///                         return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:logs:{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}:{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:log-group:*";
///                     }),
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Action"] = "cloudwatch:PutRecords",
///                     ["Resource"] = "*",
///                 },
///             },
///         }),
///     });
///
///     var exampleDatasetIntegration = new Aws.Observabilityadmin.DatasetIntegration("example", new()
///     {
///         RoleArn = example.Arn,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleRolePolicy,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/observabilityadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetRegion, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "logs.amazonaws.com",
/// 					},
/// 					"Condition": map[string]interface{}{
/// 						"StringEquals": map[string]interface{}{
/// 							"aws:SourceAccount": current.AccountId,
/// 						},
/// 						"ArnLike": map[string]string{
/// 							"aws:SourceArn": fmt.Sprintf("arn:%v:observabilityadmin:%v:%v:dataset-integration/default", currentGetPartition.Partition, currentGetRegion.Region, current.AccountId),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example-dataset-integration"),
/// 			AssumeRolePolicy: json0,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []interface{}{
/// 				map[string]string{
/// 					"Effect":   "Allow",
/// 					"Action":   "logs:IntegrateWithDataset",
/// 					"Resource": fmt.Sprintf("arn:%v:logs:%v:%v:log-group:*", currentGetPartition.Partition, currentGetRegion.Region, current.AccountId),
/// 				},
/// 				map[string]string{
/// 					"Effect":   "Allow",
/// 					"Action":   "cloudwatch:PutRecords",
/// 					"Resource": "*",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		exampleRolePolicy, err := iam.NewRolePolicy(ctx, "example", &iam.RolePolicyArgs{
/// 			Role:   example.Name,
/// 			Policy: json1,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = observabilityadmin.NewDatasetIntegration(ctx, "example", &observabilityadmin.DatasetIntegrationArgs{
/// 			RoleArn: example.Arn,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleRolePolicy,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_caller_identity" "current" {
/// }
/// data "aws_partition" "currentGetPartition" {
/// }
/// data "aws_region" "currentGetRegion" {
/// }
///
/// resource "aws_iam_role" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name = "example-dataset-integration"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = "sts:AssumeRole"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "logs.amazonaws.com"
///       }
///       "Condition" = {
///         "StringEquals" = {
///           "aws:SourceAccount" = data.aws_caller_identity.current.account_id
///         }
///         "ArnLike" = {
///           "aws:SourceArn" ="arn:${data.aws_partition.currentGetPartition.partition}:observabilityadmin:${data.aws_region.currentGetRegion.region}:${data.aws_caller_identity.current.account_id}:dataset-integration/default"
///         }
///       }
///     }]
///   })
/// }
/// resource "aws_iam_role_policy" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   role = aws_iam_role.example.name
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Effect"   = "Allow"
///       "Action"   = "logs:IntegrateWithDataset"
///       "Resource" ="arn:${data.aws_partition.currentGetPartition.partition}:logs:${data.aws_region.currentGetRegion.region}:${data.aws_caller_identity.current.account_id}:log-group:*"
///       }, {
///       "Effect"   = "Allow"
///       "Action"   = "cloudwatch:PutRecords"
///       "Resource" = "*"
///     }]
///   })
/// }
/// resource "aws_observabilityadmin_dataset_integration" "example" {
///   depends_on = [aws_iam_role_policy.example]
///   lifecycle {
///     create_before_destroy = true
///   }
///   role_arn = aws_iam_role.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.observabilityadmin.DatasetIntegration;
/// import com.pulumi.aws.observabilityadmin.DatasetIntegrationArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         final var currentGetRegion = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .name("example-dataset-integration")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "logs.amazonaws.com")
///                         )),
///                         jsonProperty("Condition", jsonObject(
///                             jsonProperty("StringEquals", jsonObject(
///                                 jsonProperty("aws:SourceAccount", current.accountId())
///                             )),
///                             jsonProperty("ArnLike", jsonObject(
///                                 jsonProperty("aws:SourceArn", String.format("arn:%s:observabilityadmin:%s:%s:dataset-integration/default", currentGetPartition.partition(),currentGetRegion.region(),current.accountId()))
///                             ))
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var exampleRolePolicy = new RolePolicy("exampleRolePolicy", RolePolicyArgs.builder()
///             .role(example.name())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(
///                         jsonObject(
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Action", "logs:IntegrateWithDataset"),
///                             jsonProperty("Resource", String.format("arn:%s:logs:%s:%s:log-group:*", currentGetPartition.partition(),currentGetRegion.region(),current.accountId()))
///                         ),
///                         jsonObject(
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Action", "cloudwatch:PutRecords"),
///                             jsonProperty("Resource", "*")
///                         )
///                     ))
///                 )))
///             .build());
///
///         var exampleDatasetIntegration = new DatasetIntegration("exampleDatasetIntegration", DatasetIntegrationArgs.builder()
///             .roleArn(example.arn())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleRolePolicy)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       name: example-dataset-integration
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service: logs.amazonaws.com
///               Condition:
///                 StringEquals:
///                   aws:SourceAccount: ${current.accountId}
///                 ArnLike:
///                   aws:SourceArn: arn:${currentGetPartition.partition}:observabilityadmin:${currentGetRegion.region}:${current.accountId}:dataset-integration/default
///   exampleRolePolicy:
///     type: aws:iam:RolePolicy
///     name: example
///     properties:
///       role: ${example.name}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Action: logs:IntegrateWithDataset
///               Resource: arn:${currentGetPartition.partition}:logs:${currentGetRegion.region}:${current.accountId}:log-group:*
///             - Effect: Allow
///               Action: cloudwatch:PutRecords
///               Resource: '*'
///   exampleDatasetIntegration:
///     type: aws:observabilityadmin:DatasetIntegration
///     name: example
///     properties:
///       roleArn: ${example.arn}
///     options:
///       dependsOn:
///         - ${exampleRolePolicy}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
///   currentGetRegion:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the dataset integration.
///
///
/// Using `pulumi import`, import CloudWatch Observability Admin Dataset Integrations using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:observabilityadmin/datasetIntegration:DatasetIntegration example arn:aws:observabilityadmin:us-east-1:123456789012:dataset-integration/default
/// ```
class DatasetIntegration extends pulumi.CustomResource {
  /// ARN of the dataset integration.
  late final pulumi.Output<String> arn;
  /// Timestamp when the dataset integration was created, in [RFC3339 format](https://datatracker.ietf.org/doc/html/rfc3339#section-5.8).
  late final pulumi.Output<String> createdAt;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the IAM role that grants CloudWatch permission to access the resources needed for the dataset integration.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> roleArn;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Timestamp when the dataset integration was last updated, in [RFC3339 format](https://datatracker.ietf.org/doc/html/rfc3339#section-5.8).
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [DatasetIntegration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetIntegration]. {@macro pulumi_observabilityadmin_dataset_integration_dataset_integration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetIntegration(
    String name, {
    DatasetIntegrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:observabilityadmin/datasetIntegration:DatasetIntegration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [DatasetIntegration] resource's state with the given [name] and [id].
  static DatasetIntegration get(
    String name,
    pulumi.Input<String> id, {
    DatasetIntegrationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DatasetIntegration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DatasetIntegration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:observabilityadmin/datasetIntegration:DatasetIntegration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [DatasetIntegration] resource.
  DatasetIntegration.reference(String urn)
    : super(
        'aws:observabilityadmin/datasetIntegration:DatasetIntegration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }
}

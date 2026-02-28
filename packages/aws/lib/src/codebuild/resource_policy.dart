import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_args.dart';

/// Provides a CodeBuild Resource Policy Resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codebuild.ReportGroup("example", {
///     name: "example",
///     type: "TEST",
///     exportConfig: {
///         type: "NO_EXPORT",
///     },
/// });
/// const current = aws.getPartition({});
/// const currentGetCallerIdentity = aws.getCallerIdentity({});
/// const exampleResourcePolicy = new aws.codebuild.ResourcePolicy("example", {
///     resourceArn: example.arn,
///     policy: pulumi.jsonStringify({
///         Version: "2012-10-17",
///         Id: "default",
///         Statement: [{
///             Sid: "default",
///             Effect: "Allow",
///             Principal: {
///                 AWS: Promise.all([current, currentGetCallerIdentity]).then(([current, currentGetCallerIdentity]) => `arn:${current.partition}:iam::${currentGetCallerIdentity.accountId}:root`),
///             },
///             Action: [
///                 "codebuild:BatchGetReportGroups",
///                 "codebuild:BatchGetReports",
///                 "codebuild:ListReportsForReportGroup",
///                 "codebuild:DescribeTestCases",
///             ],
///             Resource: example.arn,
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.codebuild.ReportGroup("example",
///     name="example",
///     type="TEST",
///     export_config={
///         "type": "NO_EXPORT",
///     })
/// current = aws.get_partition()
/// current_get_caller_identity = aws.get_caller_identity()
/// example_resource_policy = aws.codebuild.ResourcePolicy("example",
///     resource_arn=example.arn,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2012-10-17",
///         "Id": "default",
///         "Statement": [{
///             "Sid": "default",
///             "Effect": "Allow",
///             "Principal": {
///                 "AWS": f"arn:{current.partition}:iam::{current_get_caller_identity.account_id}:root",
///             },
///             "Action": [
///                 "codebuild:BatchGetReportGroups",
///                 "codebuild:BatchGetReports",
///                 "codebuild:ListReportsForReportGroup",
///                 "codebuild:DescribeTestCases",
///             ],
///             "Resource": example.arn,
///         }],
///     }))
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
///     var example = new Aws.CodeBuild.ReportGroup("example", new()
///     {
///         Name = "example",
///         Type = "TEST",
///         ExportConfig = new Aws.CodeBuild.Inputs.ReportGroupExportConfigArgs
///         {
///             Type = "NO_EXPORT",
///         },
///     });
///
///     var current = Aws.GetPartition.Invoke();
///
///     var currentGetCallerIdentity = Aws.GetCallerIdentity.Invoke();
///
///     var exampleResourcePolicy = new Aws.CodeBuild.ResourcePolicy("example", new()
///     {
///         ResourceArn = example.Arn,
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Id"] = "default",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "default",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = Output.Tuple(current, currentGetCallerIdentity).Apply(values =>
///                         {
///                             var current = values.Item1;
///                             var currentGetCallerIdentity = values.Item2;
///                             return $"arn:{current.Apply(getPartitionResult => getPartitionResult.Partition)}:iam::{currentGetCallerIdentity.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root";
///                         }),
///                     },
///                     ["Action"] = new[]
///                     {
///                         "codebuild:BatchGetReportGroups",
///                         "codebuild:BatchGetReports",
///                         "codebuild:ListReportsForReportGroup",
///                         "codebuild:DescribeTestCases",
///                     },
///                     ["Resource"] = example.Arn,
///                 },
///             },
///         })),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codebuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := codebuild.NewReportGroup(ctx, "example", &codebuild.ReportGroupArgs{
/// 			Name: pulumi.String("example"),
/// 			Type: pulumi.String("TEST"),
/// 			ExportConfig: &codebuild.ReportGroupExportConfigArgs{
/// 				Type: pulumi.String("NO_EXPORT"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetCallerIdentity, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = codebuild.NewResourcePolicy(ctx, "example", &codebuild.ResourcePolicyArgs{
/// 			ResourceArn: example.Arn,
/// 			Policy: example.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2012-10-17",
/// 					"Id":      "default",
/// 					"Statement": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"Sid":    "default",
/// 							"Effect": "Allow",
/// 							"Principal": map[string]interface{}{
/// 								"AWS": fmt.Sprintf("arn:%v:iam::%v:root", current.Partition, currentGetCallerIdentity.AccountId),
/// 							},
/// 							"Action": []string{
/// 								"codebuild:BatchGetReportGroups",
/// 								"codebuild:BatchGetReports",
/// 								"codebuild:ListReportsForReportGroup",
/// 								"codebuild:DescribeTestCases",
/// 							},
/// 							"Resource": arn,
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return pulumi.String(json0), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.codebuild.ReportGroup;
/// import com.pulumi.aws.codebuild.ReportGroupArgs;
/// import com.pulumi.aws.codebuild.inputs.ReportGroupExportConfigArgs;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.codebuild.ResourcePolicy;
/// import com.pulumi.aws.codebuild.ResourcePolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new ReportGroup("example", ReportGroupArgs.builder()
///             .name("example")
///             .type("TEST")
///             .exportConfig(ReportGroupExportConfigArgs.builder()
///                 .type("NO_EXPORT")
///                 .build())
///             .build());
///
///         final var current = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         final var currentGetCallerIdentity = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var exampleResourcePolicy = new ResourcePolicy("exampleResourcePolicy", ResourcePolicyArgs.builder()
///             .resourceArn(example.arn())
///             .policy(example.arn().applyValue(_arn -> serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Id", "default"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Sid", "default"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("AWS", String.format("arn:%s:iam::%s:root", current.partition(),currentGetCallerIdentity.accountId()))
///                         )),
///                         jsonProperty("Action", jsonArray(
///                             "codebuild:BatchGetReportGroups",
///                             "codebuild:BatchGetReports",
///                             "codebuild:ListReportsForReportGroup",
///                             "codebuild:DescribeTestCases"
///                         )),
///                         jsonProperty("Resource", _arn)
///                     )))
///                 ))))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:codebuild:ReportGroup
///     properties:
///       name: example
///       type: TEST
///       exportConfig:
///         type: NO_EXPORT
///   exampleResourcePolicy:
///     type: aws:codebuild:ResourcePolicy
///     name: example
///     properties:
///       resourceArn: ${example.arn}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Id: default
///           Statement:
///             - Sid: default
///               Effect: Allow
///               Principal:
///                 AWS: arn:${current.partition}:iam::${currentGetCallerIdentity.accountId}:root
///               Action:
///                 - codebuild:BatchGetReportGroups
///                 - codebuild:BatchGetReports
///                 - codebuild:ListReportsForReportGroup
///                 - codebuild:DescribeTestCases
///               Resource: ${example.arn}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
///   currentGetCallerIdentity:
///     fn::invoke:
///       function: aws:getCallerIdentity
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
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeBuild resource.
///
///
/// Using `pulumi import`, import CodeBuild Resource Policy using the CodeBuild Resource Policy arn. For example:
///
/// ```sh
/// $ pulumi import aws:codebuild/resourcePolicy:ResourcePolicy example arn:aws:codebuild:us-west-2:123456789:report-group/report-group-name
/// ```
class ResourcePolicy extends pulumi.CustomResource {
  /// A JSON-formatted resource policy. For more information, see [Sharing a Projec](https://docs.aws.amazon.com/codebuild/latest/userguide/project-sharing.html#project-sharing-share) and [Sharing a Report Group](https://docs.aws.amazon.com/codebuild/latest/userguide/report-groups-sharing.html#report-groups-sharing-share).
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ARN of the Project or ReportGroup resource you want to associate with a resource policy.
  late final pulumi.Output<String> resourceArn;

  /// Creates a new [ResourcePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePolicy]. {@macro pulumi_codebuild_resource_policy_resource_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePolicy(
    String name, {
    ResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codebuild/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}

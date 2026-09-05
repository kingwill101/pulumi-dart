import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_args.dart';
import 'resource_policy_state.dart';

/// Provides a Glue resource policy. Only one can exist per region.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const currentGetRegion = aws.getRegion({});
/// const glue_example_policy = Promise.all([currentGetPartition, currentGetRegion, current]).then(([currentGetPartition, currentGetRegion, current]) => aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             identifiers: ["*"],
///             type: "AWS",
///         }],
///         actions: ["glue:CreateTable"],
///         resources: [`arn:${currentGetPartition.partition}:glue:${currentGetRegion.region}:${current.accountId}:*`],
///     }],
/// }));
/// const example = new aws.glue.ResourcePolicy("example", {policy: glue_example_policy.then(glue_example_policy => glue_example_policy.json)});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_partition = aws.get_partition()
/// current_get_region = aws.get_region()
/// glue_example_policy = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "identifiers": ["*"],
///         "type": "AWS",
///     }],
///     "actions": ["glue:CreateTable"],
///     "resources": [f"arn:{current_get_partition.partition}:glue:{current_get_region.region}:{current.account_id}:*"],
/// }])
/// example = aws.glue.ResourcePolicy("example", policy=glue_example_policy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
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
///     var glue_example_policy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                         Type = "AWS",
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "glue:CreateTable",
///                 },
///                 Resources = new[]
///                 {
///                     $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:glue:{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}:{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:*",
///                 },
///             },
///         },
///     });
///
///     var example = new Aws.Glue.ResourcePolicy("example", new()
///     {
///         Policy = glue_example_policy.Apply(glue_example_policy => glue_example_policy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json)),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
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
/// 		glue_example_policy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Identifiers: []string{
/// 								"*",
/// 							},
/// 							Type: "AWS",
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"glue:CreateTable",
/// 					},
/// 					Resources: []string{
/// 						fmt.Sprintf("arn:%v:glue:%v:%v:*", currentGetPartition.Partition, currentGetRegion.Region, current.AccountId),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = glue.NewResourcePolicy(ctx, "example", &glue.ResourcePolicyArgs{
/// 			Policy: pulumi.String(glue_example_policy.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_getpartition" "currentGetPartition" {
/// }
/// data "aws_getregion" "currentGetRegion" {
/// }
/// data "aws_iam_getpolicydocument" "glue-example-policy" {
///   statements {
///     principals {
///       identifiers = ["*"]
///       type        = "AWS"
///     }
///     actions   = ["glue:CreateTable"]
///     resources = ["arn:${data.aws_getpartition.currentGetPartition.partition}:glue:${data.aws_getregion.currentGetRegion.region}:${data.aws_getcalleridentity.current.account_id}:*"]
///   }
/// }
///
/// resource "aws_glue_resourcepolicy" "example" {
///   policy = data.aws_iam_getpolicydocument.glue-example-policy.json
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.glue.ResourcePolicy;
/// import com.pulumi.aws.glue.ResourcePolicyArgs;
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
///         final var glue-example-policy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .identifiers("*")
///                     .type("AWS")
///                     .build())
///                 .actions("glue:CreateTable")
///                 .resources(String.format("arn:%s:glue:%s:%s:*", currentGetPartition.partition(),currentGetRegion.region(),current.accountId()))
///                 .build())
///             .build());
///
///         var example = new ResourcePolicy("example", ResourcePolicyArgs.builder()
///             .policy(glue_example_policy.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:ResourcePolicy
///     properties:
///       policy: ${["glue-example-policy"].json}
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
///   glue-example-policy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - identifiers:
///                   - '*'
///                 type: AWS
///             actions:
///               - glue:CreateTable
///             resources:
///               - arn:${currentGetPartition.partition}:glue:${currentGetRegion.region}:${current.accountId}:*
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Glue Resource Policy using the region where the resource resides. For example:
///
/// ```sh
/// $ pulumi import aws:glue/resourcePolicy:ResourcePolicy Test us-east-1
/// ```
class ResourcePolicy extends pulumi.CustomResource {
  /// Indicates that you are using both methods to grant cross-account. Valid values are `TRUE` and `FALSE`. Note the provider will not perform drift detetction on this field as its not return on read.
  late final pulumi.Output<String?> enableHybrid;
  /// The policy to be applied to the aws glue data catalog.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ResourcePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePolicy]. {@macro pulumi_glue_resource_policy_resource_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePolicy(
    String name, {
    ResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    enableHybrid = registerOutput<String?>('enableHybrid');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [ResourcePolicy] resource's state with the given [name] and [id].
  static ResourcePolicy get(
    String name,
    pulumi.Input<String> id, {
    ResourcePolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourcePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourcePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enableHybrid = registerOutput<String?>('enableHybrid');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [ResourcePolicy] resource.
  ResourcePolicy.reference(String urn)
    : super(
        'aws:glue/resourcePolicy:ResourcePolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    enableHybrid = registerOutput<String?>('enableHybrid');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }
}

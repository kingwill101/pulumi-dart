import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_system_policy_args.dart';
import 'file_system_policy_state.dart';

/// Provides an Elastic File System (EFS) File System Policy resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const fs = new aws.efs.FileSystem("fs", {creationToken: "my-product"});
/// const policy = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         conditions: [{
///             test: "Bool",
///             variable: "aws:SecureTransport",
///             values: ["true"],
///         }],
///         principals: [{
///             type: "AWS",
///             identifiers: ["*"],
///         }],
///         sid: "ExampleStatement01",
///         effect: "Allow",
///         actions: [
///             "elasticfilesystem:ClientMount",
///             "elasticfilesystem:ClientWrite",
///         ],
///         resources: [fs.arn],
///     }],
/// });
/// const policyFileSystemPolicy = new aws.efs.FileSystemPolicy("policy", {
///     fileSystemId: fs.id,
///     policy: policy.json,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// fs = aws.efs.FileSystem("fs", creation_token="my-product")
/// policy = aws.iam.get_policy_document_output(statements=[{
///     "conditions": [{
///         "test": "Bool",
///         "variable": "aws:SecureTransport",
///         "values": ["true"],
///     }],
///     "principals": [{
///         "type": "AWS",
///         "identifiers": ["*"],
///     }],
///     "sid": "ExampleStatement01",
///     "effect": "Allow",
///     "actions": [
///         "elasticfilesystem:ClientMount",
///         "elasticfilesystem:ClientWrite",
///     ],
///     "resources": [fs.arn],
/// }])
/// policy_file_system_policy = aws.efs.FileSystemPolicy("policy",
///     file_system_id=fs.id,
///     policy=policy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fs = new Aws.Efs.FileSystem("fs", new()
///     {
///         CreationToken = "my-product",
///     });
///
///     var policy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "Bool",
///                         Variable = "aws:SecureTransport",
///                         Values = new[]
///                         {
///                             "true",
///                         },
///                     },
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Sid = "ExampleStatement01",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "elasticfilesystem:ClientMount",
///                     "elasticfilesystem:ClientWrite",
///                 },
///                 Resources = new[]
///                 {
///                     fs.Arn,
///                 },
///             },
///         },
///     });
///
///     var policyFileSystemPolicy = new Aws.Efs.FileSystemPolicy("policy", new()
///     {
///         FileSystemId = fs.Id,
///         Policy = policy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/efs"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		fs, err := efs.NewFileSystem(ctx, "fs", &efs.FileSystemArgs{
/// 			CreationToken: pulumi.String("my-product"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("Bool"),
/// 							Variable: pulumi.String("aws:SecureTransport"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("true"),
/// 							},
/// 						},
/// 					},
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("AWS"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 						},
/// 					},
/// 					Sid:    pulumi.String("ExampleStatement01"),
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("elasticfilesystem:ClientMount"),
/// 						pulumi.String("elasticfilesystem:ClientWrite"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						fs.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = efs.NewFileSystemPolicy(ctx, "policy", &efs.FileSystemPolicyArgs{
/// 			FileSystemId: fs.ID().ToIDOutput().ToStringOutput(),
/// 			Policy:       policy.Json(),
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
/// data "aws_iam_getpolicydocument" "policy" {
///   statements {
///     conditions {
///       test     = "Bool"
///       variable = "aws:SecureTransport"
///       values   = ["true"]
///     }
///     principals {
///       type        = "AWS"
///       identifiers = ["*"]
///     }
///     sid       = "ExampleStatement01"
///     effect    = "Allow"
///     actions   = ["elasticfilesystem:ClientMount", "elasticfilesystem:ClientWrite"]
///     resources = [aws_efs_filesystem.fs.arn]
///   }
/// }
///
/// resource "aws_efs_filesystem" "fs" {
///   creation_token = "my-product"
/// }
/// resource "aws_efs_filesystempolicy" "policy" {
///   file_system_id = aws_efs_filesystem.fs.id
///   policy         = data.aws_iam_getpolicydocument.policy.json
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.efs.FileSystem;
/// import com.pulumi.aws.efs.FileSystemArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.efs.FileSystemPolicy;
/// import com.pulumi.aws.efs.FileSystemPolicyArgs;
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
///         var fs = new FileSystem("fs", FileSystemArgs.builder()
///             .creationToken("my-product")
///             .build());
///
///         final var policy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("Bool")
///                     .variable("aws:SecureTransport")
///                     .values("true")
///                     .build())
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers("*")
///                     .build())
///                 .sid("ExampleStatement01")
///                 .effect("Allow")
///                 .actions(
///                     "elasticfilesystem:ClientMount",
///                     "elasticfilesystem:ClientWrite")
///                 .resources(fs.arn())
///                 .build())
///             .build());
///
///         var policyFileSystemPolicy = new FileSystemPolicy("policyFileSystemPolicy", FileSystemPolicyArgs.builder()
///             .fileSystemId(fs.id())
///             .policy(policy.applyValue(_policy -> _policy.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fs:
///     type: aws:efs:FileSystem
///     properties:
///       creationToken: my-product
///   policyFileSystemPolicy:
///     type: aws:efs:FileSystemPolicy
///     name: policy
///     properties:
///       fileSystemId: ${fs.id}
///       policy: ${policy.json}
/// variables:
///   policy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - conditions:
///               - test: Bool
///                 variable: aws:SecureTransport
///                 values:
///                   - 'true'
///             principals:
///               - type: AWS
///                 identifiers:
///                   - '*'
///             sid: ExampleStatement01
///             effect: Allow
///             actions:
///               - elasticfilesystem:ClientMount
///               - elasticfilesystem:ClientWrite
///             resources:
///               - ${fs.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import the EFS file system policies using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:efs/fileSystemPolicy:FileSystemPolicy foo fs-6fa144c6
/// ```
class FileSystemPolicy extends pulumi.CustomResource {
  /// A flag to indicate whether to bypass the `aws.efs.FileSystemPolicy` lockout safety check. The policy lockout safety check determines whether the policy in the request will prevent the principal making the request will be locked out from making future `PutFileSystemPolicy` requests on the file system. Set `bypassPolicyLockoutSafetyCheck` to `true` only when you intend to prevent the principal that is making the request from making a subsequent `PutFileSystemPolicy` request on the file system. The default value is `false`.
  late final pulumi.Output<bool?> bypassPolicyLockoutSafetyCheck;
  /// The ID of the EFS file system.
  late final pulumi.Output<String> fileSystemId;
  /// The JSON formatted file system policy for the EFS file system. see [Docs](https://docs.aws.amazon.com/efs/latest/ug/access-control-overview.html#access-control-manage-access-intro-resource-policies) for more info.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [FileSystemPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FileSystemPolicy]. {@macro pulumi_efs_file_system_policy_file_system_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FileSystemPolicy(
    String name, {
    FileSystemPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:efs/fileSystemPolicy:FileSystemPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    bypassPolicyLockoutSafetyCheck = registerOutput<bool?>('bypassPolicyLockoutSafetyCheck');
    fileSystemId = registerOutput<String>('fileSystemId');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [FileSystemPolicy] resource's state with the given [name] and [id].
  static FileSystemPolicy get(
    String name,
    pulumi.Input<String> id, {
    FileSystemPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FileSystemPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FileSystemPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:efs/fileSystemPolicy:FileSystemPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bypassPolicyLockoutSafetyCheck = registerOutput<bool?>('bypassPolicyLockoutSafetyCheck');
    fileSystemId = registerOutput<String>('fileSystemId');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [FileSystemPolicy] resource.
  FileSystemPolicy.reference(String urn)
    : super(
        'aws:efs/fileSystemPolicy:FileSystemPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bypassPolicyLockoutSafetyCheck = registerOutput<bool?>('bypassPolicyLockoutSafetyCheck');
    fileSystemId = registerOutput<String>('fileSystemId');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }
}

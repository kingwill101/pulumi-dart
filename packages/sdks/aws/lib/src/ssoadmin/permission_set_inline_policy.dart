import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_set_inline_policy_args.dart';
import 'permission_set_inline_policy_state.dart';

/// Provides an IAM inline policy for a Single Sign-On (SSO) Permission Set resource
///
/// &gt; **NOTE:** AWS Single Sign-On (SSO) only supports one IAM inline policy per `aws.ssoadmin.PermissionSet` resource.
/// Creating or updating this resource will automatically [Provision the Permission Set](https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ProvisionPermissionSet.html) to apply the corresponding updates to all assigned accounts.
///
/// &gt; **NOTE:** We suggest using `jsonencode()` or `aws.iam.getPolicyDocument` when assigning a value to `inline_policy`. They seamlessly translate Terraform language into JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const examplePermissionSet = new aws.ssoadmin.PermissionSet("example", {
///     name: "Example",
///     instanceArn: example.then(example => example.arns?.[0]),
/// });
/// const exampleGetPolicyDocument = aws.iam.getPolicyDocument({
///     statements: [{
///         sid: "1",
///         actions: [
///             "s3:ListAllMyBuckets",
///             "s3:GetBucketLocation",
///         ],
///         resources: ["arn:aws:s3:::*"],
///     }],
/// });
/// const examplePermissionSetInlinePolicy = new aws.ssoadmin.PermissionSetInlinePolicy("example", {
///     inlinePolicy: exampleGetPolicyDocument.then(exampleGetPolicyDocument => exampleGetPolicyDocument.json),
///     instanceArn: example.then(example => example.arns?.[0]),
///     permissionSetArn: examplePermissionSet.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_permission_set = aws.ssoadmin.PermissionSet("example",
///     name="Example",
///     instance_arn=example.arns[0])
/// example_get_policy_document = aws.iam.get_policy_document(statements=[{
///     "sid": "1",
///     "actions": [
///         "s3:ListAllMyBuckets",
///         "s3:GetBucketLocation",
///     ],
///     "resources": ["arn:aws:s3:::*"],
/// }])
/// example_permission_set_inline_policy = aws.ssoadmin.PermissionSetInlinePolicy("example",
///     inline_policy=example_get_policy_document.json,
///     instance_arn=example.arns[0],
///     permission_set_arn=example_permission_set.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var examplePermissionSet = new Aws.SsoAdmin.PermissionSet("example", new()
///     {
///         Name = "Example",
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///     });
///
///     var exampleGetPolicyDocument = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "1",
///                 Actions = new[]
///                 {
///                     "s3:ListAllMyBuckets",
///                     "s3:GetBucketLocation",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:s3:::*",
///                 },
///             },
///         },
///     });
///
///     var examplePermissionSetInlinePolicy = new Aws.SsoAdmin.PermissionSetInlinePolicy("example", new()
///     {
///         InlinePolicy = exampleGetPolicyDocument.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///         PermissionSetArn = examplePermissionSet.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePermissionSet, err := ssoadmin.NewPermissionSet(ctx, "example", &ssoadmin.PermissionSetArgs{
/// 			Name:        pulumi.String("Example"),
/// 			InstanceArn: pulumi.String(example.Arns[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetPolicyDocument, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid: pulumi.StringRef("1"),
/// 					Actions: []string{
/// 						"s3:ListAllMyBuckets",
/// 						"s3:GetBucketLocation",
/// 					},
/// 					Resources: []string{
/// 						"arn:aws:s3:::*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssoadmin.NewPermissionSetInlinePolicy(ctx, "example", &ssoadmin.PermissionSetInlinePolicyArgs{
/// 			InlinePolicy:     pulumi.String(exampleGetPolicyDocument.Json),
/// 			InstanceArn:      pulumi.String(example.Arns[0]),
/// 			PermissionSetArn: examplePermissionSet.Arn,
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.PermissionSet;
/// import com.pulumi.aws.ssoadmin.PermissionSetArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.ssoadmin.PermissionSetInlinePolicy;
/// import com.pulumi.aws.ssoadmin.PermissionSetInlinePolicyArgs;
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
///         final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         var examplePermissionSet = new PermissionSet("examplePermissionSet", PermissionSetArgs.builder()
///             .name("Example")
///             .instanceArn(example.arns()[0])
///             .build());
///
///         final var exampleGetPolicyDocument = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("1")
///                 .actions(
///                     "s3:ListAllMyBuckets",
///                     "s3:GetBucketLocation")
///                 .resources("arn:aws:s3:::*")
///                 .build())
///             .build());
///
///         var examplePermissionSetInlinePolicy = new PermissionSetInlinePolicy("examplePermissionSetInlinePolicy", PermissionSetInlinePolicyArgs.builder()
///             .inlinePolicy(exampleGetPolicyDocument.json())
///             .instanceArn(example.arns()[0])
///             .permissionSetArn(examplePermissionSet.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePermissionSet:
///     type: aws:ssoadmin:PermissionSet
///     name: example
///     properties:
///       name: Example
///       instanceArn: ${example.arns[0]}
///   examplePermissionSetInlinePolicy:
///     type: aws:ssoadmin:PermissionSetInlinePolicy
///     name: example
///     properties:
///       inlinePolicy: ${exampleGetPolicyDocument.json}
///       instanceArn: ${example.arns[0]}
///       permissionSetArn: ${examplePermissionSet.arn}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
///   exampleGetPolicyDocument:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: '1'
///             actions:
///               - s3:ListAllMyBuckets
///               - s3:GetBucketLocation
///             resources:
///               - arn:aws:s3:::*
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SSO Permission Set Inline Policies using the `permission_set_arn` and `instance_arn` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/permissionSetInlinePolicy:PermissionSetInlinePolicy example arn:aws:sso:::permissionSet/ssoins-2938j0x8920sbj72/ps-80383020jr9302rk,arn:aws:sso:::instance/ssoins-2938j0x8920sbj72
/// ```
class PermissionSetInlinePolicy extends pulumi.CustomResource {
  /// The IAM inline policy to attach to a Permission Set.
  late final pulumi.Output<String> inlinePolicy;
  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  late final pulumi.Output<String> instanceArn;
  /// The Amazon Resource Name (ARN) of the Permission Set.
  late final pulumi.Output<String> permissionSetArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [PermissionSetInlinePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PermissionSetInlinePolicy]. {@macro pulumi_ssoadmin_permission_set_inline_policy_permission_set_inline_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PermissionSetInlinePolicy(
    String name, {
    PermissionSetInlinePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/permissionSetInlinePolicy:PermissionSetInlinePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    inlinePolicy = registerOutput<String>('inlinePolicy');
    instanceArn = registerOutput<String>('instanceArn');
    permissionSetArn = registerOutput<String>('permissionSetArn');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [PermissionSetInlinePolicy] resource's state with the given [name] and [id].
  static PermissionSetInlinePolicy get(
    String name,
    pulumi.Input<String> id, {
    PermissionSetInlinePolicyState? state,
  }) {
    return PermissionSetInlinePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PermissionSetInlinePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/permissionSetInlinePolicy:PermissionSetInlinePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    inlinePolicy = registerOutput<String>('inlinePolicy');
    instanceArn = registerOutput<String>('instanceArn');
    permissionSetArn = registerOutput<String>('permissionSetArn');
    region = registerOutput<String>('region');
  }
}

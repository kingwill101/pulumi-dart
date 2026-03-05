import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_policy_args.dart';
import 'secret_policy_state.dart';

/// Provides a resource to manage AWS Secrets Manager secret policy.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleSecret = new aws.secretsmanager.Secret("example", {name: "example"});
/// const example = aws.iam.getPolicyDocument({
///     statements: [{
///         sid: "EnableAnotherAWSAccountToReadTheSecret",
///         effect: "Allow",
///         principals: [{
///             type: "AWS",
///             identifiers: ["arn:aws:iam::123456789012:root"],
///         }],
///         actions: ["secretsmanager:GetSecretValue"],
///         resources: ["*"],
///     }],
/// });
/// const exampleSecretPolicy = new aws.secretsmanager.SecretPolicy("example", {
///     secretArn: exampleSecret.arn,
///     policy: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_secret = aws.secretsmanager.Secret("example", name="example")
/// example = aws.iam.get_policy_document(statements=[{
///     "sid": "EnableAnotherAWSAccountToReadTheSecret",
///     "effect": "Allow",
///     "principals": [{
///         "type": "AWS",
///         "identifiers": ["arn:aws:iam::123456789012:root"],
///     }],
///     "actions": ["secretsmanager:GetSecretValue"],
///     "resources": ["*"],
/// }])
/// example_secret_policy = aws.secretsmanager.SecretPolicy("example",
///     secret_arn=example_secret.arn,
///     policy=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleSecret = new Aws.SecretsManager.Secret("example", new()
///     {
///         Name = "example",
///     });
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "EnableAnotherAWSAccountToReadTheSecret",
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "arn:aws:iam::123456789012:root",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "secretsmanager:GetSecretValue",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var exampleSecretPolicy = new Aws.SecretsManager.SecretPolicy("example", new()
///     {
///         SecretArn = exampleSecret.Arn,
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleSecret, err := secretsmanager.NewSecret(ctx, "example", &secretsmanager.SecretArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid:    pulumi.StringRef("EnableAnotherAWSAccountToReadTheSecret"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "AWS",
/// 							Identifiers: []string{
/// 								"arn:aws:iam::123456789012:root",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"secretsmanager:GetSecretValue",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretsmanager.NewSecretPolicy(ctx, "example", &secretsmanager.SecretPolicyArgs{
/// 			SecretArn: exampleSecret.Arn,
/// 			Policy:    pulumi.String(example.Json),
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
/// import com.pulumi.aws.secretsmanager.Secret;
/// import com.pulumi.aws.secretsmanager.SecretArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.secretsmanager.SecretPolicy;
/// import com.pulumi.aws.secretsmanager.SecretPolicyArgs;
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
///         var exampleSecret = new Secret("exampleSecret", SecretArgs.builder()
///             .name("example")
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("EnableAnotherAWSAccountToReadTheSecret")
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers("arn:aws:iam::123456789012:root")
///                     .build())
///                 .actions("secretsmanager:GetSecretValue")
///                 .resources("*")
///                 .build())
///             .build());
///
///         var exampleSecretPolicy = new SecretPolicy("exampleSecretPolicy", SecretPolicyArgs.builder()
///             .secretArn(exampleSecret.arn())
///             .policy(example.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSecret:
///     type: aws:secretsmanager:Secret
///     name: example
///     properties:
///       name: example
///   exampleSecretPolicy:
///     type: aws:secretsmanager:SecretPolicy
///     name: example
///     properties:
///       secretArn: ${exampleSecret.arn}
///       policy: ${example.json}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: EnableAnotherAWSAccountToReadTheSecret
///             effect: Allow
///             principals:
///               - type: AWS
///                 identifiers:
///                   - arn:aws:iam::123456789012:root
///             actions:
///               - secretsmanager:GetSecretValue
///             resources:
///               - '*'
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Secrets Manager secret.
///
///
/// Using `pulumi import`, import `aws.secretsmanager.SecretPolicy` using the secret Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:secretsmanager/secretPolicy:SecretPolicy example arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456
/// ```
class SecretPolicy extends pulumi.CustomResource {
  /// Makes an optional API call to Zelkova to validate the Resource Policy to prevent broad access to your secret.
  late final pulumi.Output<bool?> blockPublicPolicy;
  /// Valid JSON document representing a [resource policy](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html). Unlike `aws.secretsmanager.Secret`, where `policy` can be set to `"{}"` to delete the policy, `"{}"` is not a valid policy since `policy` is required.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Secret ARN.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> secretArn;

  /// Creates a new [SecretPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecretPolicy]. {@macro pulumi_secretsmanager_secret_policy_secret_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecretPolicy(
    String name, {
    SecretPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/secretPolicy:SecretPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    blockPublicPolicy = registerOutput<bool?>('blockPublicPolicy');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    secretArn = registerOutput<String>('secretArn');
  }

  /// Gets an existing [SecretPolicy] resource's state with the given [name] and [id].
  static SecretPolicy get(
    String name,
    pulumi.Input<String> id, {
    SecretPolicyState? state,
  }) {
    return SecretPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecretPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/secretPolicy:SecretPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    blockPublicPolicy = registerOutput<bool?>('blockPublicPolicy');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    secretArn = registerOutput<String>('secretArn');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_rotation_args.dart';
import 'secret_rotation_rotation_rules.dart';
import 'secret_rotation_state.dart';

/// Provides a resource to manage AWS Secrets Manager secret rotation. To manage a secret, see the `aws.secretsmanager.Secret` resource. To manage a secret value, see the `aws.secretsmanager.SecretVersion` resource.
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
/// const example = new aws.secretsmanager.SecretRotation("example", {
///     secretId: exampleAwsSecretsmanagerSecret.id,
///     rotationLambdaArn: exampleAwsLambdaFunction.arn,
///     rotationRules: {
///         automaticallyAfterDays: 30,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.secretsmanager.SecretRotation("example",
///     secret_id=example_aws_secretsmanager_secret["id"],
///     rotation_lambda_arn=example_aws_lambda_function["arn"],
///     rotation_rules={
///         "automatically_after_days": 30,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecretsManager.SecretRotation("example", new()
///     {
///         SecretId = exampleAwsSecretsmanagerSecret.Id,
///         RotationLambdaArn = exampleAwsLambdaFunction.Arn,
///         RotationRules = new Aws.SecretsManager.Inputs.SecretRotationRotationRulesArgs
///         {
///             AutomaticallyAfterDays = 30,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretsmanager.NewSecretRotation(ctx, "example", &secretsmanager.SecretRotationArgs{
/// 			SecretId:          pulumi.Any(exampleAwsSecretsmanagerSecret.Id),
/// 			RotationLambdaArn: pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 			RotationRules: &secretsmanager.SecretRotationRotationRulesArgs{
/// 				AutomaticallyAfterDays: pulumi.Int(30),
/// 			},
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
/// resource "aws_secretsmanager_secretrotation" "example" {
///   secret_id           = exampleAwsSecretsmanagerSecret.id
///   rotation_lambda_arn = exampleAwsLambdaFunction.arn
///   rotation_rules = {
///     automatically_after_days = 30
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.secretsmanager.SecretRotation;
/// import com.pulumi.aws.secretsmanager.SecretRotationArgs;
/// import com.pulumi.aws.secretsmanager.inputs.SecretRotationRotationRulesArgs;
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
///         var example = new SecretRotation("example", SecretRotationArgs.builder()
///             .secretId(exampleAwsSecretsmanagerSecret.id())
///             .rotationLambdaArn(exampleAwsLambdaFunction.arn())
///             .rotationRules(SecretRotationRotationRulesArgs.builder()
///                 .automaticallyAfterDays(30)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:secretsmanager:SecretRotation
///     properties:
///       secretId: ${exampleAwsSecretsmanagerSecret.id}
///       rotationLambdaArn: ${exampleAwsLambdaFunction.arn}
///       rotationRules:
///         automaticallyAfterDays: 30
/// ```
///
///
/// ### Managed External Secret Rotation
///
/// For managed external secrets that are rotated by AWS partner integrations:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.secretsmanager.Secret("example", {
///     name: "example-salesforce-client-secret",
///     type: "SalesforceClientSecret",
/// });
/// const exampleSecretRotation = new aws.secretsmanager.SecretRotation("example", {
///     secretId: example.id,
///     externalSecretRotationRoleArn: exampleAwsIamRole.arn,
///     externalSecretRotationMetadatas: [
///         {
///             key: "adminSecretArn",
///             value: example.arn,
///         },
///         {
///             key: "apiVersion",
///             value: "v65.0",
///         },
///     ],
///     rotationRules: {
///         automaticallyAfterDays: Number(rotationDays),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.secretsmanager.Secret("example",
///     name="example-salesforce-client-secret",
///     type="SalesforceClientSecret")
/// example_secret_rotation = aws.secretsmanager.SecretRotation("example",
///     secret_id=example.id,
///     external_secret_rotation_role_arn=example_aws_iam_role["arn"],
///     external_secret_rotation_metadatas=[
///         {
///             "key": "adminSecretArn",
///             "value": example.arn,
///         },
///         {
///             "key": "apiVersion",
///             "value": "v65.0",
///         },
///     ],
///     rotation_rules={
///         "automatically_after_days": int(rotation_days),
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecretsManager.Secret("example", new()
///     {
///         Name = "example-salesforce-client-secret",
///         Type = "SalesforceClientSecret",
///     });
///
///     var exampleSecretRotation = new Aws.SecretsManager.SecretRotation("example", new()
///     {
///         SecretId = example.Id,
///         ExternalSecretRotationRoleArn = exampleAwsIamRole.Arn,
///         ExternalSecretRotationMetadatas = new[]
///         {
///             new Aws.SecretsManager.Inputs.SecretRotationExternalSecretRotationMetadataArgs
///             {
///                 Key = "adminSecretArn",
///                 Value = example.Arn,
///             },
///             new Aws.SecretsManager.Inputs.SecretRotationExternalSecretRotationMetadataArgs
///             {
///                 Key = "apiVersion",
///                 Value = "v65.0",
///             },
///         },
///         RotationRules = new Aws.SecretsManager.Inputs.SecretRotationRotationRulesArgs
///         {
///             AutomaticallyAfterDays = rotationDays,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := secretsmanager.NewSecret(ctx, "example", &secretsmanager.SecretArgs{
/// 			Name: pulumi.String("example-salesforce-client-secret"),
/// 			Type: pulumi.String("SalesforceClientSecret"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretsmanager.NewSecretRotation(ctx, "example", &secretsmanager.SecretRotationArgs{
/// 			SecretId:                      example.ID().ToIDOutput().ToStringOutput(),
/// 			ExternalSecretRotationRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			ExternalSecretRotationMetadatas: secretsmanager.SecretRotationExternalSecretRotationMetadataArray{
/// 				&secretsmanager.SecretRotationExternalSecretRotationMetadataArgs{
/// 					Key:   pulumi.String("adminSecretArn"),
/// 					Value: example.Arn,
/// 				},
/// 				&secretsmanager.SecretRotationExternalSecretRotationMetadataArgs{
/// 					Key:   pulumi.String("apiVersion"),
/// 					Value: pulumi.String("v65.0"),
/// 				},
/// 			},
/// 			RotationRules: &secretsmanager.SecretRotationRotationRulesArgs{
/// 				AutomaticallyAfterDays: pulumi.Any(rotationDays),
/// 			},
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
/// resource "aws_secretsmanager_secret" "example" {
///   name = "example-salesforce-client-secret"
///   type = "SalesforceClientSecret"
/// }
/// resource "aws_secretsmanager_secretrotation" "example" {
///   secret_id                         = aws_secretsmanager_secret.example.id
///   external_secret_rotation_role_arn = exampleAwsIamRole.arn
///   external_secret_rotation_metadatas {
///     key   = "adminSecretArn"
///     value = aws_secretsmanager_secret.example.arn
///   }
///   external_secret_rotation_metadatas {
///     key   = "apiVersion"
///     value = "v65.0"
///   }
///   rotation_rules = {
///     automatically_after_days = rotationDays
///   }
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
/// import com.pulumi.aws.secretsmanager.SecretRotation;
/// import com.pulumi.aws.secretsmanager.SecretRotationArgs;
/// import com.pulumi.aws.secretsmanager.inputs.SecretRotationExternalSecretRotationMetadataArgs;
/// import com.pulumi.aws.secretsmanager.inputs.SecretRotationRotationRulesArgs;
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
///         var example = new Secret("example", SecretArgs.builder()
///             .name("example-salesforce-client-secret")
///             .type("SalesforceClientSecret")
///             .build());
///
///         var exampleSecretRotation = new SecretRotation("exampleSecretRotation", SecretRotationArgs.builder()
///             .secretId(example.id())
///             .externalSecretRotationRoleArn(exampleAwsIamRole.arn())
///             .externalSecretRotationMetadatas(
///                 SecretRotationExternalSecretRotationMetadataArgs.builder()
///                     .key("adminSecretArn")
///                     .value(example.arn())
///                     .build(),
///                 SecretRotationExternalSecretRotationMetadataArgs.builder()
///                     .key("apiVersion")
///                     .value("v65.0")
///                     .build())
///             .rotationRules(SecretRotationRotationRulesArgs.builder()
///                 .automaticallyAfterDays(rotationDays)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:secretsmanager:Secret
///     properties:
///       name: example-salesforce-client-secret
///       type: SalesforceClientSecret
///   exampleSecretRotation:
///     type: aws:secretsmanager:SecretRotation
///     name: example
///     properties:
///       secretId: ${example.id}
///       externalSecretRotationRoleArn: ${exampleAwsIamRole.arn}
///       externalSecretRotationMetadatas:
///         - key: adminSecretArn
///           value: ${example.arn}
///         - key: apiVersion
///           value: v65.0
///       rotationRules:
///         automaticallyAfterDays: ${rotationDays}
/// ```
///
///
/// For more information about managed external secrets and partner-specific metadata requirements, see the [AWS documentation](https://docs.aws.amazon.com/secretsmanager/latest/userguide/managed-external-secrets.html) and [partner-specific guides](https://docs.aws.amazon.com/secretsmanager/latest/userguide/mes-partners.html).
///
/// ### Rotation Configuration
///
/// To enable automatic secret rotation, the Secrets Manager service requires usage of a Lambda function. The [Rotate Secrets section in the Secrets Manager User Guide](https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html) provides additional information about deploying a prebuilt Lambda functions for supported credential rotation (e.g., RDS) or deploying a custom Lambda function.
///
/// &gt; **NOTE:** Configuring rotation causes the secret to rotate once as soon as you enable rotation. Before you do this, you must ensure that all of your applications that use the credentials stored in the secret are updated to retrieve the secret from AWS Secrets Manager. The old credentials might no longer be usable after the initial rotation and any applications that you fail to update will break as soon as the old credentials are no longer valid.
///
/// &gt; **NOTE:** If you cancel a rotation that is in progress (by removing the `rotation` configuration), it can leave the VersionStage labels in an unexpected state. Depending on what step of the rotation was in progress, you might need to remove the staging label AWSPENDING from the partially created version, specified by the SecretVersionId response value. You should also evaluate the partially rotated new version to see if it should be deleted, which you can do by removing all staging labels from the new version's VersionStage field.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `secretId` (String) Amazon Resource Name (ARN) of the Secrets Manager secret.
///
///
/// Using `pulumi import`, import `aws.secretsmanager.SecretRotation` using the secret Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:secretsmanager/secretRotation:SecretRotation example arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456
/// ```
class SecretRotation extends pulumi.CustomResource {
  /// Configuration block for metadata required by the external secret partner. Required for managed external secrets. See details below.
  late final pulumi.Output<List<Map<String, dynamic>>?> externalSecretRotationMetadatas;
  /// ARN of the IAM role that allows Secrets Manager to rotate the secret held by a third-party partner. Required for managed external secrets.
  late final pulumi.Output<String?> externalSecretRotationRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Whether to rotate the secret immediately or wait until the next scheduled rotation window. The rotation schedule is defined in `rotationRules`. For secrets that use a Lambda rotation function to rotate, if you don't immediately rotate the secret, Secrets Manager tests the rotation configuration by running the testSecret step (https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html) of the Lambda rotation function. The test creates an AWSPENDING version of the secret and then removes it. Defaults to `true`.
  late final pulumi.Output<bool?> rotateImmediately;
  /// Whether automatic rotation is enabled for this secret.
  late final pulumi.Output<bool> rotationEnabled;
  /// ARN of the Lambda function that can rotate the secret. Must be supplied if the secret is not managed by AWS.
  late final pulumi.Output<String?> rotationLambdaArn;
  /// Structure that defines the rotation configuration for this secret. Defined below.
  late final pulumi.Output<SecretRotationRotationRules> rotationRules;
  /// Secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist.
  late final pulumi.Output<String> secretId;

  /// Creates a new [SecretRotation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecretRotation]. {@macro pulumi_secretsmanager_secret_rotation_secret_rotation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecretRotation(
    String name, {
    SecretRotationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/secretRotation:SecretRotation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    externalSecretRotationMetadatas = registerOutput<List<Map<String, dynamic>>?>('externalSecretRotationMetadatas');
    externalSecretRotationRoleArn = registerOutput<String?>('externalSecretRotationRoleArn');
    region = registerOutput<String>('region');
    rotateImmediately = registerOutput<bool?>('rotateImmediately');
    rotationEnabled = registerOutput<bool>('rotationEnabled');
    rotationLambdaArn = registerOutput<String?>('rotationLambdaArn');
    rotationRules = registerOutput<SecretRotationRotationRules>('rotationRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecretRotationRotationRules.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secretId = registerOutput<String>('secretId');
  }

  /// Gets an existing [SecretRotation] resource's state with the given [name] and [id].
  static SecretRotation get(
    String name,
    pulumi.Input<String> id, {
    SecretRotationState? state,
  }) {
    return SecretRotation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecretRotation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/secretRotation:SecretRotation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    externalSecretRotationMetadatas = registerOutput<List<Map<String, dynamic>>?>('externalSecretRotationMetadatas');
    externalSecretRotationRoleArn = registerOutput<String?>('externalSecretRotationRoleArn');
    region = registerOutput<String>('region');
    rotateImmediately = registerOutput<bool?>('rotateImmediately');
    rotationEnabled = registerOutput<bool>('rotationEnabled');
    rotationLambdaArn = registerOutput<String?>('rotationLambdaArn');
    rotationRules = registerOutput<SecretRotationRotationRules>('rotationRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecretRotationRotationRules.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secretId = registerOutput<String>('secretId');
  }
}

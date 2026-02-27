import 'package:pulumi/pulumi.dart';
import '../secret_rotation_rotation_rules/secret_rotation_rotation_rules.dart';
import 'secret_rotation_args.dart';

/// Provides a resource to manage AWS Secrets Manager secret rotation. To manage a secret, see the `aws.secretsmanager.Secret` resource. To manage a secret value, see the `aws.secretsmanager.SecretVersion` resource.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### Rotation Configuration
///
/// To enable automatic secret rotation, the Secrets Manager service requires usage of a Lambda function. The [Rotate Secrets section in the Secrets Manager User Guide](https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html) provides additional information about deploying a prebuilt Lambda functions for supported credential rotation (e.g., RDS) or deploying a custom Lambda function.
///
/// > **NOTE:** Configuring rotation causes the secret to rotate once as soon as you enable rotation. Before you do this, you must ensure that all of your applications that use the credentials stored in the secret are updated to retrieve the secret from AWS Secrets Manager. The old credentials might no longer be usable after the initial rotation and any applications that you fail to update will break as soon as the old credentials are no longer valid.
///
/// > **NOTE:** If you cancel a rotation that is in progress (by removing the `rotation` configuration), it can leave the VersionStage labels in an unexpected state. Depending on what step of the rotation was in progress, you might need to remove the staging label AWSPENDING from the partially created version, specified by the SecretVersionId response value. You should also evaluate the partially rotated new version to see if it should be deleted, which you can do by removing all staging labels from the new version's VersionStage field.
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
/// Using `pulumi import`, import `aws.secretsmanager.SecretRotation` using the secret Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:secretsmanager/secretRotation:SecretRotation example arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456
/// ```
class SecretRotation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies whether to rotate the secret immediately or wait until the next scheduled rotation window. The rotation schedule is defined in `rotation_rules`. For secrets that use a Lambda rotation function to rotate, if you don't immediately rotate the secret, Secrets Manager tests the rotation configuration by running the testSecret step (https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html) of the Lambda rotation function. The test creates an AWSPENDING version of the secret and then removes it. Defaults to `true`.
  late final Output<bool?> rotateImmediately;

  /// Specifies whether automatic rotation is enabled for this secret.
  late final Output<bool> rotationEnabled;

  /// Specifies the ARN of the Lambda function that can rotate the secret. Must be supplied if the secret is not managed by AWS.
  late final Output<String?> rotationLambdaArn;

  /// A structure that defines the rotation configuration for this secret. Defined below.
  late final Output<SecretRotationRotationRules> rotationRules;

  /// Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist.
  late final Output<String> secretId;

  SecretRotation(
    String name, {
    SecretRotationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/secretRotation:SecretRotation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.rotateImmediately = registerOutput<bool?>('rotateImmediately');
    this.rotationEnabled = registerOutput<bool>('rotationEnabled');
    this.rotationLambdaArn = registerOutput<String?>('rotationLambdaArn');
    this.rotationRules =
        registerOutput<SecretRotationRotationRules>('rotationRules');
    this.secretId = registerOutput<String>('secretId');
  }
}

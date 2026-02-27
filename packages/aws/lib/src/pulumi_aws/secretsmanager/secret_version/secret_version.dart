import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_version_args.dart';

/// Provides a resource to manage AWS Secrets Manager secret version including its secret value. To manage secret metadata, see the `aws.secretsmanager.Secret` resource.
///
/// > **NOTE:** If the `AWSCURRENT` staging label is present on this version during resource deletion, that label cannot be removed and will be skipped to prevent errors when fully deleting the secret. That label will leave this secret version active even after the resource is deleted from this provider unless the secret itself is deleted. Move the `AWSCURRENT` staging label before or after deleting this resource from this provider to fully trigger version deprecation if necessary.
///
///
/// ## Example Usage
///
/// ### Simple String Value
///
///
///
/// ### Key-Value Pairs
///
/// Secrets Manager also accepts key-value pairs in JSON.
///
///
///
///
/// Reading key-value pairs from JSON back into a native map
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `secret_id` - (String) ID of the secret.
/// * `version_id` - (String) ID of the secret version.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import `aws.secretsmanager.SecretVersion` using the secret ID and version ID. For example:
///
/// ```sh
/// $ pulumi import aws:secretsmanager/secretVersion:SecretVersion example 'arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456|xxxxx-xxxxxxx-xxxxxxx-xxxxx'
/// ```
class SecretVersion extends pulumi.CustomResource {
  /// The ARN of the secret.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<bool> hasSecretStringWo;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies binary data that you want to encrypt and store in this version of the secret. This is required if `secret_string` or `secret_string_wo` is not set. Needs to be encoded to base64.
  late final pulumi.Output<String?> secretBinary;

  /// Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist.
  late final pulumi.Output<String> secretId;

  /// Specifies text data that you want to encrypt and store in this version of the secret. This is required if `secret_binary` or `secret_string_wo` is not set.
  late final pulumi.Output<String?> secretString;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Specifies text data that you want to encrypt and store in this version of the secret. This is required if `secret_binary` or `secret_string` is not set.
  late final pulumi.Output<String?> secretStringWo;

  /// Used together with `secret_string_wo` to trigger an update. Increment this value when an update to `secret_string_wo` is required.
  late final pulumi.Output<int?> secretStringWoVersion;

  /// The unique identifier of the version of the secret.
  late final pulumi.Output<String> versionId;

  /// Specifies a list of staging labels that are attached to this version of the secret. A staging label must be unique to a single version of the secret. If you specify a staging label that's already associated with a different version of the same secret then that staging label is automatically removed from the other version and attached to this version. If you do not specify a value, then AWS Secrets Manager automatically moves the staging label `AWSCURRENT` to this new version on creation.
  ///
  /// > **NOTE:** If `version_stages` is configured, you must include the `AWSCURRENT` staging label if this secret version is the only version or if the label is currently present on this secret version, otherwise this provider will show a perpetual difference.
  late final pulumi.Output<List<String>> versionStages;

  SecretVersion(
    String name, {
    SecretVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/secretVersion:SecretVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.hasSecretStringWo = registerOutput<bool>('hasSecretStringWo');
    this.region = registerOutput<String>('region');
    this.secretBinary = registerOutput<String?>('secretBinary');
    this.secretId = registerOutput<String>('secretId');
    this.secretString = registerOutput<String?>('secretString');
    this.secretStringWo = registerOutput<String?>('secretStringWo');
    this.secretStringWoVersion = registerOutput<int?>('secretStringWoVersion');
    this.versionId = registerOutput<String>('versionId');
    this.versionStages = registerOutput<List<String>>('versionStages');
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecretVersion resources.
class SecretVersionState {
  /// The ARN of the secret.
  final pulumi.Input<String>? arn;
  final pulumi.Input<bool>? hasSecretStringWo;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies binary data that you want to encrypt and store in this version of the secret. This is required if `secret_string` or `secret_string_wo` is not set. Needs to be encoded to base64.
  final pulumi.Input<String>? secretBinary;
  /// Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist.
  final pulumi.Input<String>? secretId;
  /// Specifies text data that you want to encrypt and store in this version of the secret. This is required if `secret_binary` or `secret_string_wo` is not set.
  final pulumi.Input<String>? secretString;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Specifies text data that you want to encrypt and store in this version of the secret. This is required if `secret_binary` or `secret_string` is not set.
  final pulumi.Input<String>? secretStringWo;
  /// Used together with `secret_string_wo` to trigger an update. Increment this value when an update to `secret_string_wo` is required.
  final pulumi.Input<int>? secretStringWoVersion;
  /// The unique identifier of the version of the secret.
  final pulumi.Input<String>? versionId;
  /// Specifies a list of staging labels that are attached to this version of the secret. A staging label must be unique to a single version of the secret. If you specify a staging label that's already associated with a different version of the same secret then that staging label is automatically removed from the other version and attached to this version. If you do not specify a value, then AWS Secrets Manager automatically moves the staging label `AWSCURRENT` to this new version on creation.
  ///
  /// > **NOTE:** If `version_stages` is configured, you must include the `AWSCURRENT` staging label if this secret version is the only version or if the label is currently present on this secret version, otherwise this provider will show a perpetual difference.
  final pulumi.Input<List<String>>? versionStages;

  /// Creates a new [SecretVersionState].
  /// [arn] The ARN of the secret.
  /// [hasSecretStringWo] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretBinary] Specifies binary data that you want to encrypt and store in this version of the secret. This is required if `secret_string` or `secret_string_wo` is not set. Needs to be encoded to base64.
  /// [secretId] Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist.
  /// [secretString] Specifies text data that you want to encrypt and store in this version of the secret. This is required if `secret_binary` or `secret_string_wo` is not set.
  /// [secretStringWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [secretStringWoVersion] Used together with `secret_string_wo` to trigger an update. Increment this value when an update to `secret_string_wo` is required.
  /// [versionId] The unique identifier of the version of the secret.
  /// [versionStages] Specifies a list of staging labels that are attached to this version of the secret. A staging label must be unique to a single version of the secret. If you specify a staging label that's already associated with a different version of the same secret then that staging label is automatically removed from the other version and attached to this version. If you do not specify a value, then AWS Secrets Manager automatically moves the staging label `AWSCURRENT` to this new version on creation.
  SecretVersionState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? hasSecretStringWo,
    pulumi.Output<String>? region,
    pulumi.Output<String>? secretBinary,
    pulumi.Output<String>? secretId,
    pulumi.Output<String>? secretString,
    pulumi.Output<String>? secretStringWo,
    pulumi.Output<int>? secretStringWoVersion,
    pulumi.Output<String>? versionId,
    pulumi.Output<List<String>>? versionStages,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      hasSecretStringWo = pulumi.Input.asOptionalInput<bool>(hasSecretStringWo),
      region = pulumi.Input.asOptionalInput<String>(region),
      secretBinary = pulumi.Input.asOptionalInput<String>(secretBinary),
      secretId = pulumi.Input.asOptionalInput<String>(secretId),
      secretString = pulumi.Input.asOptionalInput<String>(secretString),
      secretStringWo = pulumi.Input.asOptionalInput<String>(secretStringWo),
      secretStringWoVersion = pulumi.Input.asOptionalInput<int>(secretStringWoVersion),
      versionId = pulumi.Input.asOptionalInput<String>(versionId),
      versionStages = pulumi.Input.asOptionalInput<List<String>>(versionStages);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'hasSecretStringWo': ?hasSecretStringWo,
      'region': ?region,
      'secretBinary': ?secretBinary,
      'secretId': ?secretId,
      'secretString': ?secretString,
      'secretStringWo': ?secretStringWo,
      'secretStringWoVersion': ?secretStringWoVersion,
      'versionId': ?versionId,
      'versionStages': ?versionStages,
    };
  }

  factory SecretVersionState.fromMap(Map<String, dynamic> map) {
    return SecretVersionState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      hasSecretStringWo: map['hasSecretStringWo'] == null ? null : pulumi.Output.create<bool>(map['hasSecretStringWo'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secretBinary: map['secretBinary'] == null ? null : pulumi.Output.create<String>(map['secretBinary'] as String),
      secretId: map['secretId'] == null ? null : pulumi.Output.create<String>(map['secretId'] as String),
      secretString: map['secretString'] == null ? null : pulumi.Output.create<String>(map['secretString'] as String),
      secretStringWo: map['secretStringWo'] == null ? null : pulumi.Output.create<String>(map['secretStringWo'] as String),
      secretStringWoVersion: map['secretStringWoVersion'] == null ? null : pulumi.Output.create<int>(map['secretStringWoVersion'] as int),
      versionId: map['versionId'] == null ? null : pulumi.Output.create<String>(map['versionId'] as String),
      versionStages: map['versionStages'] == null ? null : pulumi.Output.create<List<String>>((map['versionStages'] as List).cast<String>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretsmanager_secret_version_secret_version_args_doc}
/// The set of arguments for SecretVersion.
/// {@endtemplate}
/// {@macro pulumi_secretsmanager_secret_version_secret_version_args_doc}
class SecretVersionArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Binary data that you want to encrypt and store in this version of the secret. This is required if `secretString` or `secretStringWo` is not set. Needs to be encoded to base64.
  final pulumi.Input<String>? secretBinary;
  /// Secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist.
  final pulumi.Input<String> secretId;
  /// Text data that you want to encrypt and store in this version of the secret. This is required if `secretBinary` or `secretStringWo` is not set.
  final pulumi.Input<String>? secretString;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Text data that you want to encrypt and store in this version of the secret. This is required if `secretBinary` or `secretString` is not set.
  final pulumi.Input<String>? secretStringWo;
  /// Version identifier that works together with `secretStringWo` to trigger an update. Increment this value when an update to `secretStringWo` is required.
  final pulumi.Input<int>? secretStringWoVersion;
  /// List of staging labels that are attached to this version of the secret. A staging label must be unique to a single version of the secret. If you specify a staging label that's already associated with a different version of the same secret then that staging label is automatically removed from the other version and attached to this version. If you do not specify a value, then AWS Secrets Manager automatically moves the staging label `AWSCURRENT` to this new version on creation.
  ///
  /// &gt; **NOTE:** If `versionStages` is configured, you must include the `AWSCURRENT` staging label if this secret version is the only version or if the label is currently present on this secret version, otherwise this provider will show a perpetual difference.
  final pulumi.Input<List<String>>? versionStages;

  /// Creates a new [SecretVersionArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretBinary] Binary data that you want to encrypt and store in this version of the secret. This is required if `secretString` or `secretStringWo` is not set. Needs to be encoded to base64.
  /// [secretId] Secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist.
  /// [secretString] Text data that you want to encrypt and store in this version of the secret. This is required if `secretBinary` or `secretStringWo` is not set.
  /// [secretStringWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [secretStringWoVersion] Version identifier that works together with `secretStringWo` to trigger an update. Increment this value when an update to `secretStringWo` is required.
  /// [versionStages] List of staging labels that are attached to this version of the secret. A staging label must be unique to a single version of the secret. If you specify a staging label that's already associated with a different version of the same secret then that staging label is automatically removed from the other version and attached to this version. If you do not specify a value, then AWS Secrets Manager automatically moves the staging label `AWSCURRENT` to this new version on creation.
  const SecretVersionArgs({
    this.region,
    this.secretBinary,
    required this.secretId,
    this.secretString,
    this.secretStringWo,
    this.secretStringWoVersion,
    this.versionStages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'secretBinary': ?secretBinary,
      'secretId': secretId,
      'secretString': ?secretString,
      'secretStringWo': ?secretStringWo,
      'secretStringWoVersion': ?secretStringWoVersion,
      'versionStages': ?versionStages,
    };
  }

  factory SecretVersionArgs.fromMap(Map<String, dynamic> map) {
    return SecretVersionArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretBinary: (() { final guardedValue = map['secretBinary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretId: pulumi.Input.fromValue(map['secretId'] as String),
      secretString: (() { final guardedValue = map['secretString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretStringWo: (() { final guardedValue = map['secretStringWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretStringWoVersion: (() { final guardedValue = map['secretStringWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      versionStages: (() { final guardedValue = map['versionStages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

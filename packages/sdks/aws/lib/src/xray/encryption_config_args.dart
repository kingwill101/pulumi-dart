// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_xray_encryption_config_encryption_config_args_doc}
/// The set of arguments for EncryptionConfig.
/// {@endtemplate}
/// {@macro pulumi_xray_encryption_config_encryption_config_args_doc}
class EncryptionConfigArgs {
  /// AWS KMS customer master key (CMK) ARN.
  final pulumi.Input<String?>? keyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Type of encryption. Set to `KMS` to use your own key for encryption. Set to `NONE` for default encryption.
  final pulumi.Input<String> type;

  /// Creates a new [EncryptionConfigArgs].
  /// [keyId] AWS KMS customer master key (CMK) ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Type of encryption. Set to `KMS` to use your own key for encryption. Set to `NONE` for default encryption.
  const EncryptionConfigArgs({
    this.keyId,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': ?keyId,
      'region': ?region,
      'type': type,
    };
  }

  factory EncryptionConfigArgs.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigArgs(
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

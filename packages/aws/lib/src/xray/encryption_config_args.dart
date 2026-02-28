// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_xray_encryption_config_encryption_config_args_doc}
/// The set of arguments for EncryptionConfig.
/// {@endtemplate}
/// {@macro pulumi_xray_encryption_config_encryption_config_args_doc}
class EncryptionConfigArgs {
  /// An AWS KMS customer master key (CMK) ARN.
  final pulumi.Input<String>? keyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The type of encryption. Set to `KMS` to use your own key for encryption. Set to `NONE` for default encryption.
  final pulumi.Input<String> type;

  /// Creates a new [EncryptionConfigArgs].
  /// [keyId] An AWS KMS customer master key (CMK) ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] The type of encryption. Set to `KMS` to use your own key for encryption. Set to `NONE` for default encryption.
  EncryptionConfigArgs({
    String? keyId,
    String? region,
    required String type,
  })  : keyId = pulumi.Input.asOptionalInput<String>(keyId),
        region = pulumi.Input.asOptionalInput<String>(region),
        type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyIdValue = keyId;
    if (keyIdValue != null) {
      map['keyId'] = keyIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['type'] = type;
    return map;
  }

  factory EncryptionConfigArgs.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigArgs(
      keyId: map['keyId'] == null ? null : map['keyId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      type: map['type'] as String,
    );
  }
}

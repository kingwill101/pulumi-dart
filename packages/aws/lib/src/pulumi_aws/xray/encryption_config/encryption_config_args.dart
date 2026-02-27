// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EncryptionConfig.
class EncryptionConfigArgs {
  /// An AWS KMS customer master key (CMK) ARN.
  final pulumi.Input<String>? keyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The type of encryption. Set to `KMS` to use your own key for encryption. Set to `NONE` for default encryption.
  final pulumi.Input<String> type;

  EncryptionConfigArgs({
    this.keyId,
    this.region,
    required this.type,
  });

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
      keyId: pulumi.Input.asOptionalInput<String>(map['keyId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}

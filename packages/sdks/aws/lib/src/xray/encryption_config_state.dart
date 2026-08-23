// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EncryptionConfig resources.
class EncryptionConfigState {
  /// AWS KMS customer master key (CMK) ARN.
  final pulumi.Input<String>? keyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Type of encryption. Set to `KMS` to use your own key for encryption. Set to `NONE` for default encryption.
  final pulumi.Input<String>? type;

  /// Creates a new [EncryptionConfigState].
  /// [keyId] AWS KMS customer master key (CMK) ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Type of encryption. Set to `KMS` to use your own key for encryption. Set to `NONE` for default encryption.
  const EncryptionConfigState({
    this.keyId,
    this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': ?keyId,
      'region': ?region,
      'type': ?type,
    };
  }

  factory EncryptionConfigState.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigState(
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EncryptionConfig resources.
class EncryptionConfigState {
  /// An AWS KMS customer master key (CMK) ARN.
  final pulumi.Input<String>? keyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The type of encryption. Set to `KMS` to use your own key for encryption. Set to `NONE` for default encryption.
  final pulumi.Input<String>? type;

  /// Creates a new [EncryptionConfigState].
  /// [keyId] An AWS KMS customer master key (CMK) ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] The type of encryption. Set to `KMS` to use your own key for encryption. Set to `NONE` for default encryption.
  EncryptionConfigState({
    pulumi.Output<String>? keyId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? type,
  }) :
      keyId = pulumi.Input.asOptionalInput<String>(keyId),
      region = pulumi.Input.asOptionalInput<String>(region),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': ?keyId,
      'region': ?region,
      'type': ?type,
    };
  }

  factory EncryptionConfigState.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigState(
      keyId: map['keyId'] == null ? null : pulumi.Output.create<String>(map['keyId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}


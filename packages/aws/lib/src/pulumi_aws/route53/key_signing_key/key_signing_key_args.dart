// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for KeySigningKey.
class KeySigningKeyArgs {
  /// Identifier of the Route 53 Hosted Zone.
  final pulumi.Input<String> hostedZoneId;

  /// Amazon Resource Name (ARN) of the Key Management Service (KMS) Key. This must be unique for each key-signing key (KSK) in a single hosted zone. This key must be in the `us-east-1` Region and meet certain requirements, which are described in the [Route 53 Developer Guide](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-configuring-dnssec-cmk-requirements.html) and [Route 53 API Reference](https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateKeySigningKey.html).
  final pulumi.Input<String> keyManagementServiceArn;

  /// Name of the key-signing key (KSK). Must be unique for each key-signing key in the same hosted zone.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Status of the key-signing key (KSK). Valid values: `ACTIVE`, `INACTIVE`. Defaults to `ACTIVE`.
  final pulumi.Input<String>? status;

  KeySigningKeyArgs({
    required this.hostedZoneId,
    required this.keyManagementServiceArn,
    this.name,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostedZoneId'] = hostedZoneId;
    map['keyManagementServiceArn'] = keyManagementServiceArn;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory KeySigningKeyArgs.fromMap(Map<String, dynamic> map) {
    return KeySigningKeyArgs(
      hostedZoneId: pulumi.Input.asInput<String>(map['hostedZoneId']),
      keyManagementServiceArn:
          pulumi.Input.asInput<String>(map['keyManagementServiceArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
    );
  }
}

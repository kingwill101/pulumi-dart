// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_key_signing_key_key_signing_key_args_doc}
/// The set of arguments for KeySigningKey.
/// {@endtemplate}
/// {@macro pulumi_route53_key_signing_key_key_signing_key_args_doc}
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

  /// Creates a new [KeySigningKeyArgs].
  /// [hostedZoneId] Identifier of the Route 53 Hosted Zone.
  /// [keyManagementServiceArn] Amazon Resource Name (ARN) of the Key Management Service (KMS) Key. This must be unique for each key-signing key (KSK) in a single hosted zone. This key must be in the `us-east-1` Region and meet certain requirements, which are described in the [Route 53 Developer Guide](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-configuring-dnssec-cmk-requirements.html) and [Route 53 API Reference](https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateKeySigningKey.html).
  /// [name] Name of the key-signing key (KSK). Must be unique for each key-signing key in the same hosted zone.
  /// [status] Status of the key-signing key (KSK). Valid values: `ACTIVE`, `INACTIVE`. Defaults to `ACTIVE`.
  KeySigningKeyArgs({
    required this.hostedZoneId,
    required this.keyManagementServiceArn,
    this.name,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostedZoneId': hostedZoneId,
      'keyManagementServiceArn': keyManagementServiceArn,
      'name': ?name,
      'status': ?status,
    };
  }

  factory KeySigningKeyArgs.fromMap(Map<String, dynamic> map) {
    return KeySigningKeyArgs(
      hostedZoneId: pulumi.Input.fromValue(map['hostedZoneId'] as String),
      keyManagementServiceArn: pulumi.Input.fromValue(map['keyManagementServiceArn'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


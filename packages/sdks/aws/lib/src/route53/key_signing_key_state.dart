// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KeySigningKey resources.
class KeySigningKeyState {
  /// A string used to represent the delegation signer digest algorithm. This value must follow the guidelines provided by [RFC-8624 Section 3.3](https://tools.ietf.org/html/rfc8624#section-3.3).
  final pulumi.Input<String>? digestAlgorithmMnemonic;
  /// An integer used to represent the delegation signer digest algorithm. This value must follow the guidelines provided by [RFC-8624 Section 3.3](https://tools.ietf.org/html/rfc8624#section-3.3).
  final pulumi.Input<int>? digestAlgorithmType;
  /// A cryptographic digest of a DNSKEY resource record (RR). DNSKEY records are used to publish the public key that resolvers can use to verify DNSSEC signatures that are used to secure certain kinds of information provided by the DNS system.
  final pulumi.Input<String>? digestValue;
  /// A string that represents a DNSKEY record.
  final pulumi.Input<String>? dnskeyRecord;
  /// A string that represents a delegation signer (DS) record.
  final pulumi.Input<String>? dsRecord;
  /// An integer that specifies how the key is used. For key-signing key (KSK), this value is always 257.
  final pulumi.Input<int>? flag;
  /// Identifier of the Route 53 Hosted Zone.
  final pulumi.Input<String>? hostedZoneId;
  /// Amazon Resource Name (ARN) of the Key Management Service (KMS) Key. This must be unique for each key-signing key (KSK) in a single hosted zone. This key must be in the `us-east-1` Region and meet certain requirements, which are described in the [Route 53 Developer Guide](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-configuring-dnssec-cmk-requirements.html) and [Route 53 API Reference](https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateKeySigningKey.html).
  final pulumi.Input<String>? keyManagementServiceArn;
  /// An integer used to identify the DNSSEC record for the domain name. The process used to calculate the value is described in [RFC-4034 Appendix B](https://tools.ietf.org/rfc/rfc4034.txt).
  final pulumi.Input<int>? keyTag;
  /// Name of the key-signing key (KSK). Must be unique for each key-signing key in the same hosted zone.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// The public key, represented as a Base64 encoding, as required by [RFC-4034 Page 5](https://tools.ietf.org/rfc/rfc4034.txt).
  final pulumi.Input<String>? publicKey;
  /// A string used to represent the signing algorithm. This value must follow the guidelines provided by [RFC-8624 Section 3.1](https://tools.ietf.org/html/rfc8624#section-3.1).
  final pulumi.Input<String>? signingAlgorithmMnemonic;
  /// An integer used to represent the signing algorithm. This value must follow the guidelines provided by [RFC-8624 Section 3.1](https://tools.ietf.org/html/rfc8624#section-3.1).
  final pulumi.Input<int>? signingAlgorithmType;
  /// Status of the key-signing key (KSK). Valid values: `ACTIVE`, `INACTIVE`. Defaults to `ACTIVE`.
  final pulumi.Input<String>? status;

  /// Creates a new [KeySigningKeyState].
  /// [digestAlgorithmMnemonic] A string used to represent the delegation signer digest algorithm. This value must follow the guidelines provided by [RFC-8624 Section 3.3](https://tools.ietf.org/html/rfc8624#section-3.3).
  /// [digestAlgorithmType] An integer used to represent the delegation signer digest algorithm. This value must follow the guidelines provided by [RFC-8624 Section 3.3](https://tools.ietf.org/html/rfc8624#section-3.3).
  /// [digestValue] A cryptographic digest of a DNSKEY resource record (RR). DNSKEY records are used to publish the public key that resolvers can use to verify DNSSEC signatures that are used to secure certain kinds of information provided by the DNS system.
  /// [dnskeyRecord] A string that represents a DNSKEY record.
  /// [dsRecord] A string that represents a delegation signer (DS) record.
  /// [flag] An integer that specifies how the key is used. For key-signing key (KSK), this value is always 257.
  /// [hostedZoneId] Identifier of the Route 53 Hosted Zone.
  /// [keyManagementServiceArn] Amazon Resource Name (ARN) of the Key Management Service (KMS) Key. This must be unique for each key-signing key (KSK) in a single hosted zone. This key must be in the `us-east-1` Region and meet certain requirements, which are described in the [Route 53 Developer Guide](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-configuring-dnssec-cmk-requirements.html) and [Route 53 API Reference](https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateKeySigningKey.html).
  /// [keyTag] An integer used to identify the DNSSEC record for the domain name. The process used to calculate the value is described in [RFC-4034 Appendix B](https://tools.ietf.org/rfc/rfc4034.txt).
  /// [name] Name of the key-signing key (KSK). Must be unique for each key-signing key in the same hosted zone.
  /// [publicKey] The public key, represented as a Base64 encoding, as required by [RFC-4034 Page 5](https://tools.ietf.org/rfc/rfc4034.txt).
  /// [signingAlgorithmMnemonic] A string used to represent the signing algorithm. This value must follow the guidelines provided by [RFC-8624 Section 3.1](https://tools.ietf.org/html/rfc8624#section-3.1).
  /// [signingAlgorithmType] An integer used to represent the signing algorithm. This value must follow the guidelines provided by [RFC-8624 Section 3.1](https://tools.ietf.org/html/rfc8624#section-3.1).
  /// [status] Status of the key-signing key (KSK). Valid values: `ACTIVE`, `INACTIVE`. Defaults to `ACTIVE`.
  KeySigningKeyState({
    this.digestAlgorithmMnemonic,
    this.digestAlgorithmType,
    this.digestValue,
    this.dnskeyRecord,
    this.dsRecord,
    this.flag,
    this.hostedZoneId,
    this.keyManagementServiceArn,
    this.keyTag,
    this.name,
    this.publicKey,
    this.signingAlgorithmMnemonic,
    this.signingAlgorithmType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digestAlgorithmMnemonic': ?digestAlgorithmMnemonic,
      'digestAlgorithmType': ?digestAlgorithmType,
      'digestValue': ?digestValue,
      'dnskeyRecord': ?dnskeyRecord,
      'dsRecord': ?dsRecord,
      'flag': ?flag,
      'hostedZoneId': ?hostedZoneId,
      'keyManagementServiceArn': ?keyManagementServiceArn,
      'keyTag': ?keyTag,
      'name': ?name,
      'publicKey': ?publicKey,
      'signingAlgorithmMnemonic': ?signingAlgorithmMnemonic,
      'signingAlgorithmType': ?signingAlgorithmType,
      'status': ?status,
    };
  }

  factory KeySigningKeyState.fromMap(Map<String, dynamic> map) {
    return KeySigningKeyState(
      digestAlgorithmMnemonic: map['digestAlgorithmMnemonic'] == null ? null : (map['digestAlgorithmMnemonic'] as String).input(),
      digestAlgorithmType: map['digestAlgorithmType'] == null ? null : (map['digestAlgorithmType'] as int).input(),
      digestValue: map['digestValue'] == null ? null : (map['digestValue'] as String).input(),
      dnskeyRecord: map['dnskeyRecord'] == null ? null : (map['dnskeyRecord'] as String).input(),
      dsRecord: map['dsRecord'] == null ? null : (map['dsRecord'] as String).input(),
      flag: map['flag'] == null ? null : (map['flag'] as int).input(),
      hostedZoneId: map['hostedZoneId'] == null ? null : (map['hostedZoneId'] as String).input(),
      keyManagementServiceArn: map['keyManagementServiceArn'] == null ? null : (map['keyManagementServiceArn'] as String).input(),
      keyTag: map['keyTag'] == null ? null : (map['keyTag'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      publicKey: map['publicKey'] == null ? null : (map['publicKey'] as String).input(),
      signingAlgorithmMnemonic: map['signingAlgorithmMnemonic'] == null ? null : (map['signingAlgorithmMnemonic'] as String).input(),
      signingAlgorithmType: map['signingAlgorithmType'] == null ? null : (map['signingAlgorithmType'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}


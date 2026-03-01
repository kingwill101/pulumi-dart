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
    pulumi.Output<String>? digestAlgorithmMnemonic,
    pulumi.Output<int>? digestAlgorithmType,
    pulumi.Output<String>? digestValue,
    pulumi.Output<String>? dnskeyRecord,
    pulumi.Output<String>? dsRecord,
    pulumi.Output<int>? flag,
    pulumi.Output<String>? hostedZoneId,
    pulumi.Output<String>? keyManagementServiceArn,
    pulumi.Output<int>? keyTag,
    pulumi.Output<String>? name,
    pulumi.Output<String>? publicKey,
    pulumi.Output<String>? signingAlgorithmMnemonic,
    pulumi.Output<int>? signingAlgorithmType,
    pulumi.Output<String>? status,
  }) :
      digestAlgorithmMnemonic = pulumi.Input.asOptionalInput<String>(digestAlgorithmMnemonic),
      digestAlgorithmType = pulumi.Input.asOptionalInput<int>(digestAlgorithmType),
      digestValue = pulumi.Input.asOptionalInput<String>(digestValue),
      dnskeyRecord = pulumi.Input.asOptionalInput<String>(dnskeyRecord),
      dsRecord = pulumi.Input.asOptionalInput<String>(dsRecord),
      flag = pulumi.Input.asOptionalInput<int>(flag),
      hostedZoneId = pulumi.Input.asOptionalInput<String>(hostedZoneId),
      keyManagementServiceArn = pulumi.Input.asOptionalInput<String>(keyManagementServiceArn),
      keyTag = pulumi.Input.asOptionalInput<int>(keyTag),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      signingAlgorithmMnemonic = pulumi.Input.asOptionalInput<String>(signingAlgorithmMnemonic),
      signingAlgorithmType = pulumi.Input.asOptionalInput<int>(signingAlgorithmType),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      digestAlgorithmMnemonic: map['digestAlgorithmMnemonic'] == null ? null : pulumi.Output.create<String>(map['digestAlgorithmMnemonic'] as String),
      digestAlgorithmType: map['digestAlgorithmType'] == null ? null : pulumi.Output.create<int>(map['digestAlgorithmType'] as int),
      digestValue: map['digestValue'] == null ? null : pulumi.Output.create<String>(map['digestValue'] as String),
      dnskeyRecord: map['dnskeyRecord'] == null ? null : pulumi.Output.create<String>(map['dnskeyRecord'] as String),
      dsRecord: map['dsRecord'] == null ? null : pulumi.Output.create<String>(map['dsRecord'] as String),
      flag: map['flag'] == null ? null : pulumi.Output.create<int>(map['flag'] as int),
      hostedZoneId: map['hostedZoneId'] == null ? null : pulumi.Output.create<String>(map['hostedZoneId'] as String),
      keyManagementServiceArn: map['keyManagementServiceArn'] == null ? null : pulumi.Output.create<String>(map['keyManagementServiceArn'] as String),
      keyTag: map['keyTag'] == null ? null : pulumi.Output.create<int>(map['keyTag'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicKey: map['publicKey'] == null ? null : pulumi.Output.create<String>(map['publicKey'] as String),
      signingAlgorithmMnemonic: map['signingAlgorithmMnemonic'] == null ? null : pulumi.Output.create<String>(map['signingAlgorithmMnemonic'] as String),
      signingAlgorithmType: map['signingAlgorithmType'] == null ? null : pulumi.Output.create<int>(map['signingAlgorithmType'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}


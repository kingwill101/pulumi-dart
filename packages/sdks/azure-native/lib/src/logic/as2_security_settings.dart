// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The AS2 agreement security settings.
class AS2SecuritySettings {
  /// The value indicating whether to enable NRR for inbound decoded messages.
  final pulumi.Input<bool> enableNRRForInboundDecodedMessages;
  /// The value indicating whether to enable NRR for inbound encoded messages.
  final pulumi.Input<bool> enableNRRForInboundEncodedMessages;
  /// The value indicating whether to enable NRR for inbound MDN.
  final pulumi.Input<bool> enableNRRForInboundMDN;
  /// The value indicating whether to enable NRR for outbound decoded messages.
  final pulumi.Input<bool> enableNRRForOutboundDecodedMessages;
  /// The value indicating whether to enable NRR for outbound encoded messages.
  final pulumi.Input<bool> enableNRRForOutboundEncodedMessages;
  /// The value indicating whether to enable NRR for outbound MDN.
  final pulumi.Input<bool> enableNRRForOutboundMDN;
  /// The name of the encryption certificate.
  final pulumi.Input<String>? encryptionCertificateName;
  /// The value indicating whether to send or request a MDN.
  final pulumi.Input<bool> overrideGroupSigningCertificate;
  /// The Sha2 algorithm format. Valid values are Sha2, ShaHashSize, ShaHyphenHashSize, Sha2UnderscoreHashSize.
  final pulumi.Input<String>? sha2AlgorithmFormat;
  /// The name of the signing certificate.
  final pulumi.Input<String>? signingCertificateName;

  /// Creates a new [AS2SecuritySettings].
  /// [enableNRRForInboundDecodedMessages] The value indicating whether to enable NRR for inbound decoded messages.
  /// [enableNRRForInboundEncodedMessages] The value indicating whether to enable NRR for inbound encoded messages.
  /// [enableNRRForInboundMDN] The value indicating whether to enable NRR for inbound MDN.
  /// [enableNRRForOutboundDecodedMessages] The value indicating whether to enable NRR for outbound decoded messages.
  /// [enableNRRForOutboundEncodedMessages] The value indicating whether to enable NRR for outbound encoded messages.
  /// [enableNRRForOutboundMDN] The value indicating whether to enable NRR for outbound MDN.
  /// [encryptionCertificateName] The name of the encryption certificate.
  /// [overrideGroupSigningCertificate] The value indicating whether to send or request a MDN.
  /// [sha2AlgorithmFormat] The Sha2 algorithm format. Valid values are Sha2, ShaHashSize, ShaHyphenHashSize, Sha2UnderscoreHashSize.
  /// [signingCertificateName] The name of the signing certificate.
  AS2SecuritySettings({
    required this.enableNRRForInboundDecodedMessages,
    required this.enableNRRForInboundEncodedMessages,
    required this.enableNRRForInboundMDN,
    required this.enableNRRForOutboundDecodedMessages,
    required this.enableNRRForOutboundEncodedMessages,
    required this.enableNRRForOutboundMDN,
    this.encryptionCertificateName,
    required this.overrideGroupSigningCertificate,
    this.sha2AlgorithmFormat,
    this.signingCertificateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableNRRForInboundDecodedMessages': enableNRRForInboundDecodedMessages,
      'enableNRRForInboundEncodedMessages': enableNRRForInboundEncodedMessages,
      'enableNRRForInboundMDN': enableNRRForInboundMDN,
      'enableNRRForOutboundDecodedMessages': enableNRRForOutboundDecodedMessages,
      'enableNRRForOutboundEncodedMessages': enableNRRForOutboundEncodedMessages,
      'enableNRRForOutboundMDN': enableNRRForOutboundMDN,
      'encryptionCertificateName': ?encryptionCertificateName,
      'overrideGroupSigningCertificate': overrideGroupSigningCertificate,
      'sha2AlgorithmFormat': ?sha2AlgorithmFormat,
      'signingCertificateName': ?signingCertificateName,
    };
  }

  factory AS2SecuritySettings.fromMap(Map<String, dynamic> map) {
    return AS2SecuritySettings(
      enableNRRForInboundDecodedMessages: (map['enableNRRForInboundDecodedMessages'] as bool).input(),
      enableNRRForInboundEncodedMessages: (map['enableNRRForInboundEncodedMessages'] as bool).input(),
      enableNRRForInboundMDN: (map['enableNRRForInboundMDN'] as bool).input(),
      enableNRRForOutboundDecodedMessages: (map['enableNRRForOutboundDecodedMessages'] as bool).input(),
      enableNRRForOutboundEncodedMessages: (map['enableNRRForOutboundEncodedMessages'] as bool).input(),
      enableNRRForOutboundMDN: (map['enableNRRForOutboundMDN'] as bool).input(),
      encryptionCertificateName: map['encryptionCertificateName'] == null ? null : (map['encryptionCertificateName']! as String).input(),
      overrideGroupSigningCertificate: (map['overrideGroupSigningCertificate'] as bool).input(),
      sha2AlgorithmFormat: map['sha2AlgorithmFormat'] == null ? null : (map['sha2AlgorithmFormat']! as String).input(),
      signingCertificateName: map['signingCertificateName'] == null ? null : (map['signingCertificateName']! as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// The AS2 agreement security settings.
class AS2SecuritySettingsResponse {
  /// The value indicating whether to enable NRR for inbound decoded messages.
  final bool enableNRRForInboundDecodedMessages;
  /// The value indicating whether to enable NRR for inbound encoded messages.
  final bool enableNRRForInboundEncodedMessages;
  /// The value indicating whether to enable NRR for inbound MDN.
  final bool enableNRRForInboundMDN;
  /// The value indicating whether to enable NRR for outbound decoded messages.
  final bool enableNRRForOutboundDecodedMessages;
  /// The value indicating whether to enable NRR for outbound encoded messages.
  final bool enableNRRForOutboundEncodedMessages;
  /// The value indicating whether to enable NRR for outbound MDN.
  final bool enableNRRForOutboundMDN;
  /// The name of the encryption certificate.
  final String? encryptionCertificateName;
  /// The value indicating whether to send or request a MDN.
  final bool overrideGroupSigningCertificate;
  /// The Sha2 algorithm format. Valid values are Sha2, ShaHashSize, ShaHyphenHashSize, Sha2UnderscoreHashSize.
  final String? sha2AlgorithmFormat;
  /// The name of the signing certificate.
  final String? signingCertificateName;

  /// Creates a new [AS2SecuritySettingsResponse].
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
  AS2SecuritySettingsResponse({
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

  factory AS2SecuritySettingsResponse.fromMap(Map<String, dynamic> map) {
    return AS2SecuritySettingsResponse(
      enableNRRForInboundDecodedMessages: map['enableNRRForInboundDecodedMessages'] as bool,
      enableNRRForInboundEncodedMessages: map['enableNRRForInboundEncodedMessages'] as bool,
      enableNRRForInboundMDN: map['enableNRRForInboundMDN'] as bool,
      enableNRRForOutboundDecodedMessages: map['enableNRRForOutboundDecodedMessages'] as bool,
      enableNRRForOutboundEncodedMessages: map['enableNRRForOutboundEncodedMessages'] as bool,
      enableNRRForOutboundMDN: map['enableNRRForOutboundMDN'] as bool,
      encryptionCertificateName: map['encryptionCertificateName'] == null ? null : map['encryptionCertificateName'] as String,
      overrideGroupSigningCertificate: map['overrideGroupSigningCertificate'] as bool,
      sha2AlgorithmFormat: map['sha2AlgorithmFormat'] == null ? null : map['sha2AlgorithmFormat'] as String,
      signingCertificateName: map['signingCertificateName'] == null ? null : map['signingCertificateName'] as String,
    );
  }
}


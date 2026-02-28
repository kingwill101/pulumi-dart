// ignore_for_file: unused_element, unnecessary_cast

class ConnectorAs2Config {
  /// Specifies weather AS2 file is compressed. The valud values are ZLIB and  DISABLED.
  final String compression;

  /// The algorithm that is used to encrypt the file. The valid values are AES128_CBC | AES192_CBC | AES256_CBC | NONE.
  final String encryptionAlgorithm;

  /// The unique identifier for the AS2 local profile.
  final String localProfileId;

  /// Used for outbound requests to determine if a partner response for transfers is synchronous or asynchronous. The valid values are SYNC and NONE.
  final String mdnResponse;

  /// The signing algorithm for the Mdn response. The valid values are SHA256 | SHA384 | SHA512 | SHA1 | NONE | DEFAULT.
  final String? mdnSigningAlgorithm;

  /// Used as the subject HTTP header attribute in AS2 messages that are being sent with the connector.
  final String? messageSubject;

  /// The unique identifier for the AS2 partner profile.
  final String partnerProfileId;

  /// The algorithm that is used to sign AS2 messages sent with the connector. The valid values are SHA256 | SHA384 | SHA512 | SHA1 | NONE .
  final String signingAlgorithm;

  /// Creates a new [ConnectorAs2Config].
  /// [compression] Specifies weather AS2 file is compressed. The valud values are ZLIB and  DISABLED.
  /// [encryptionAlgorithm] The algorithm that is used to encrypt the file. The valid values are AES128_CBC | AES192_CBC | AES256_CBC | NONE.
  /// [localProfileId] The unique identifier for the AS2 local profile.
  /// [mdnResponse] Used for outbound requests to determine if a partner response for transfers is synchronous or asynchronous. The valid values are SYNC and NONE.
  /// [mdnSigningAlgorithm] The signing algorithm for the Mdn response. The valid values are SHA256 | SHA384 | SHA512 | SHA1 | NONE | DEFAULT.
  /// [messageSubject] Used as the subject HTTP header attribute in AS2 messages that are being sent with the connector.
  /// [partnerProfileId] The unique identifier for the AS2 partner profile.
  /// [signingAlgorithm] The algorithm that is used to sign AS2 messages sent with the connector. The valid values are SHA256 | SHA384 | SHA512 | SHA1 | NONE .
  ConnectorAs2Config({
    required this.compression,
    required this.encryptionAlgorithm,
    required this.localProfileId,
    required this.mdnResponse,
    this.mdnSigningAlgorithm,
    this.messageSubject,
    required this.partnerProfileId,
    required this.signingAlgorithm,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['compression'] = compression;
    map['encryptionAlgorithm'] = encryptionAlgorithm;
    map['localProfileId'] = localProfileId;
    map['mdnResponse'] = mdnResponse;
    final mdnSigningAlgorithmValue = mdnSigningAlgorithm;
    if (mdnSigningAlgorithmValue != null) {
      map['mdnSigningAlgorithm'] = mdnSigningAlgorithmValue;
    }
    final messageSubjectValue = messageSubject;
    if (messageSubjectValue != null) {
      map['messageSubject'] = messageSubjectValue;
    }
    map['partnerProfileId'] = partnerProfileId;
    map['signingAlgorithm'] = signingAlgorithm;
    return map;
  }

  factory ConnectorAs2Config.fromMap(Map<String, dynamic> map) {
    return ConnectorAs2Config(
      compression: map['compression'] as String,
      encryptionAlgorithm: map['encryptionAlgorithm'] as String,
      localProfileId: map['localProfileId'] as String,
      mdnResponse: map['mdnResponse'] as String,
      mdnSigningAlgorithm: map['mdnSigningAlgorithm'] == null
          ? null
          : map['mdnSigningAlgorithm'] as String,
      messageSubject: map['messageSubject'] == null
          ? null
          : map['messageSubject'] as String,
      partnerProfileId: map['partnerProfileId'] as String,
      signingAlgorithm: map['signingAlgorithm'] as String,
    );
  }
}

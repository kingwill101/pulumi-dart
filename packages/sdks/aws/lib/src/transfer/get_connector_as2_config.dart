// ignore_for_file: unused_element, unnecessary_cast


class GetConnectorAs2Config {
  /// Basic authentication for AS2 connector API. Returns a null value if not set.
  final String basicAuthSecretId;
  /// Specifies whether AS2 file is compressed. Will be ZLIB or DISABLED
  final String compression;
  /// Algorithm used to encrypt file. Will be AES128_CBC or AES192_CBC or AES256_CBC or DES_EDE3_CBC or NONE.
  final String encryptionAlgorithm;
  /// Unique identifier for AS2 local profile.
  final String localProfileId;
  /// Used for outbound requests to tell if response is asynchronous or not. Will be either SYNC or NONE.
  final String mdnResponse;
  /// Signing algorithm for MDN response. Will be SHA256 or SHA384 or SHA512 or SHA1 or NONE or DEFAULT.
  final String mdnSigningAlgorithm;
  /// Subject HTTP header attribute in outbound AS2 messages to the connector.
  final String messageSubject;
  /// Unique identifier used by connector for partner profile.
  final String partnerProfileId;
  final String singingAlgorithm;

  /// Creates a new [GetConnectorAs2Config].
  /// [basicAuthSecretId] Basic authentication for AS2 connector API. Returns a null value if not set.
  /// [compression] Specifies whether AS2 file is compressed. Will be ZLIB or DISABLED
  /// [encryptionAlgorithm] Algorithm used to encrypt file. Will be AES128_CBC or AES192_CBC or AES256_CBC or DES_EDE3_CBC or NONE.
  /// [localProfileId] Unique identifier for AS2 local profile.
  /// [mdnResponse] Used for outbound requests to tell if response is asynchronous or not. Will be either SYNC or NONE.
  /// [mdnSigningAlgorithm] Signing algorithm for MDN response. Will be SHA256 or SHA384 or SHA512 or SHA1 or NONE or DEFAULT.
  /// [messageSubject] Subject HTTP header attribute in outbound AS2 messages to the connector.
  /// [partnerProfileId] Unique identifier used by connector for partner profile.
  /// [singingAlgorithm] Required.
  GetConnectorAs2Config({
    required this.basicAuthSecretId,
    required this.compression,
    required this.encryptionAlgorithm,
    required this.localProfileId,
    required this.mdnResponse,
    required this.mdnSigningAlgorithm,
    required this.messageSubject,
    required this.partnerProfileId,
    required this.singingAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuthSecretId': basicAuthSecretId,
      'compression': compression,
      'encryptionAlgorithm': encryptionAlgorithm,
      'localProfileId': localProfileId,
      'mdnResponse': mdnResponse,
      'mdnSigningAlgorithm': mdnSigningAlgorithm,
      'messageSubject': messageSubject,
      'partnerProfileId': partnerProfileId,
      'singingAlgorithm': singingAlgorithm,
    };
  }

  factory GetConnectorAs2Config.fromMap(Map<String, dynamic> map) {
    return GetConnectorAs2Config(
      basicAuthSecretId: map['basicAuthSecretId'] as String,
      compression: map['compression'] as String,
      encryptionAlgorithm: map['encryptionAlgorithm'] as String,
      localProfileId: map['localProfileId'] as String,
      mdnResponse: map['mdnResponse'] as String,
      mdnSigningAlgorithm: map['mdnSigningAlgorithm'] as String,
      messageSubject: map['messageSubject'] as String,
      partnerProfileId: map['partnerProfileId'] as String,
      singingAlgorithm: map['singingAlgorithm'] as String,
    );
  }
}


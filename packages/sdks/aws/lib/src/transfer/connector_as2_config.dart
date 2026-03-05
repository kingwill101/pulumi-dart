// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorAs2Config {
  /// Specifies weather AS2 file is compressed. The valud values are ZLIB and  DISABLED.
  final pulumi.Input<String> compression;
  /// The algorithm that is used to encrypt the file. The valid values are AES128_CBC | AES192_CBC | AES256_CBC | NONE.
  final pulumi.Input<String> encryptionAlgorithm;
  /// The unique identifier for the AS2 local profile.
  final pulumi.Input<String> localProfileId;
  /// Used for outbound requests to determine if a partner response for transfers is synchronous or asynchronous. The valid values are SYNC and NONE.
  final pulumi.Input<String> mdnResponse;
  /// The signing algorithm for the Mdn response. The valid values are SHA256 | SHA384 | SHA512 | SHA1 | NONE | DEFAULT.
  final pulumi.Input<String>? mdnSigningAlgorithm;
  /// Used as the subject HTTP header attribute in AS2 messages that are being sent with the connector.
  final pulumi.Input<String>? messageSubject;
  /// The unique identifier for the AS2 partner profile.
  final pulumi.Input<String> partnerProfileId;
  /// The algorithm that is used to sign AS2 messages sent with the connector. The valid values are SHA256 | SHA384 | SHA512 | SHA1 | NONE .
  final pulumi.Input<String> signingAlgorithm;

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
    return <String, dynamic>{
      'compression': compression,
      'encryptionAlgorithm': encryptionAlgorithm,
      'localProfileId': localProfileId,
      'mdnResponse': mdnResponse,
      'mdnSigningAlgorithm': ?mdnSigningAlgorithm,
      'messageSubject': ?messageSubject,
      'partnerProfileId': partnerProfileId,
      'signingAlgorithm': signingAlgorithm,
    };
  }

  factory ConnectorAs2Config.fromMap(Map<String, dynamic> map) {
    return ConnectorAs2Config(
      compression: pulumi.Input.fromValue(map['compression'] as String),
      encryptionAlgorithm: pulumi.Input.fromValue(map['encryptionAlgorithm'] as String),
      localProfileId: pulumi.Input.fromValue(map['localProfileId'] as String),
      mdnResponse: pulumi.Input.fromValue(map['mdnResponse'] as String),
      mdnSigningAlgorithm: (() { final guardedValue = map['mdnSigningAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messageSubject: (() { final guardedValue = map['messageSubject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerProfileId: pulumi.Input.fromValue(map['partnerProfileId'] as String),
      signingAlgorithm: pulumi.Input.fromValue(map['signingAlgorithm'] as String),
    );
  }
}


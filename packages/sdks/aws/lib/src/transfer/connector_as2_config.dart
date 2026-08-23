// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorAs2Config {
  /// Whether AS2 file is compressed. The valid values are ZLIB and DISABLED.
  final pulumi.Input<String> compression;
  /// Algorithm that is used to encrypt the file. The valid values are AES128_CBC | AES192_CBC | AES256_CBC | NONE.
  final pulumi.Input<String> encryptionAlgorithm;
  /// Unique identifier for the AS2 local profile.
  final pulumi.Input<String> localProfileId;
  /// Determines, for outbound requests, if a partner response for transfers is synchronous or asynchronous. The valid values are SYNC and NONE.
  final pulumi.Input<String> mdnResponse;
  /// Signing algorithm for the MDN response. The valid values are SHA256 | SHA384 | SHA512 | SHA1 | NONE | DEFAULT.
  final pulumi.Input<String>? mdnSigningAlgorithm;
  /// Subject HTTP header attribute used in AS2 messages that are being sent with the connector.
  final pulumi.Input<String>? messageSubject;
  /// Unique identifier for the AS2 partner profile.
  final pulumi.Input<String> partnerProfileId;
  /// Algorithm that is used to sign AS2 messages sent with the connector. The valid values are SHA256 | SHA384 | SHA512 | SHA1 | NONE .
  final pulumi.Input<String> signingAlgorithm;

  /// Creates a new [ConnectorAs2Config].
  /// [compression] Whether AS2 file is compressed. The valid values are ZLIB and DISABLED.
  /// [encryptionAlgorithm] Algorithm that is used to encrypt the file. The valid values are AES128_CBC | AES192_CBC | AES256_CBC | NONE.
  /// [localProfileId] Unique identifier for the AS2 local profile.
  /// [mdnResponse] Determines, for outbound requests, if a partner response for transfers is synchronous or asynchronous. The valid values are SYNC and NONE.
  /// [mdnSigningAlgorithm] Signing algorithm for the MDN response. The valid values are SHA256 | SHA384 | SHA512 | SHA1 | NONE | DEFAULT.
  /// [messageSubject] Subject HTTP header attribute used in AS2 messages that are being sent with the connector.
  /// [partnerProfileId] Unique identifier for the AS2 partner profile.
  /// [signingAlgorithm] Algorithm that is used to sign AS2 messages sent with the connector. The valid values are SHA256 | SHA384 | SHA512 | SHA1 | NONE .
  const ConnectorAs2Config({
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

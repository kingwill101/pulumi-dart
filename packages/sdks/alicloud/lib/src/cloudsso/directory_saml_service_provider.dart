// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectorySamlServiceProvider {
  /// ACS URL of SP.
  final pulumi.Input<String>? acsUrl;
  /// Signature algorithms supported by AuthNRequest
  final pulumi.Input<String>? authnSignAlgo;
  /// Type of certificate used for signing in the SSO process
  final pulumi.Input<String>? certificateType;
  /// SP metadata document (Base64 encoding).
  final pulumi.Input<String>? encodedMetadataDocument;
  /// SP identity.
  final pulumi.Input<String>? entityId;
  /// Whether IdP-side encryption of Assertion is supported.
  final pulumi.Input<bool>? supportEncryptedAssertion;

  /// Creates a new [DirectorySamlServiceProvider].
  /// [acsUrl] ACS URL of SP.
  /// [authnSignAlgo] Signature algorithms supported by AuthNRequest
  /// [certificateType] Type of certificate used for signing in the SSO process
  /// [encodedMetadataDocument] SP metadata document (Base64 encoding).
  /// [entityId] SP identity.
  /// [supportEncryptedAssertion] Whether IdP-side encryption of Assertion is supported.
  DirectorySamlServiceProvider({
    this.acsUrl,
    this.authnSignAlgo,
    this.certificateType,
    this.encodedMetadataDocument,
    this.entityId,
    this.supportEncryptedAssertion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acsUrl': ?acsUrl,
      'authnSignAlgo': ?authnSignAlgo,
      'certificateType': ?certificateType,
      'encodedMetadataDocument': ?encodedMetadataDocument,
      'entityId': ?entityId,
      'supportEncryptedAssertion': ?supportEncryptedAssertion,
    };
  }

  factory DirectorySamlServiceProvider.fromMap(Map<String, dynamic> map) {
    return DirectorySamlServiceProvider(
      acsUrl: map['acsUrl'] == null ? null : (map['acsUrl'] as String).input(),
      authnSignAlgo: map['authnSignAlgo'] == null ? null : (map['authnSignAlgo'] as String).input(),
      certificateType: map['certificateType'] == null ? null : (map['certificateType'] as String).input(),
      encodedMetadataDocument: map['encodedMetadataDocument'] == null ? null : (map['encodedMetadataDocument'] as String).input(),
      entityId: map['entityId'] == null ? null : (map['entityId'] as String).input(),
      supportEncryptedAssertion: map['supportEncryptedAssertion'] == null ? null : (map['supportEncryptedAssertion'] as bool).input(),
    );
  }
}


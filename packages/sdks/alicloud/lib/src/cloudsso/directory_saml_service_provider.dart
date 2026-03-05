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
      acsUrl: (() { final guardedValue = map['acsUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authnSignAlgo: (() { final guardedValue = map['authnSignAlgo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateType: (() { final guardedValue = map['certificateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encodedMetadataDocument: (() { final guardedValue = map['encodedMetadataDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityId: (() { final guardedValue = map['entityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportEncryptedAssertion: (() { final guardedValue = map['supportEncryptedAssertion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


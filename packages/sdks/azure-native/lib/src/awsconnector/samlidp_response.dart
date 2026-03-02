// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SAMLIdp
class SAMLIdpResponse {
  /// <p>The unique entity ID of the application in the SAML identity provider.</p>
  final pulumi.Input<String>? entityId;
  /// <p>The metadata of the SAML application, in XML format.</p>
  final pulumi.Input<String>? metadataContent;

  /// Creates a new [SAMLIdpResponse].
  /// [entityId] <p>The unique entity ID of the application in the SAML identity provider.</p>
  /// [metadataContent] <p>The metadata of the SAML application, in XML format.</p>
  SAMLIdpResponse({
    this.entityId,
    this.metadataContent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': ?entityId,
      'metadataContent': ?metadataContent,
    };
  }

  factory SAMLIdpResponse.fromMap(Map<String, dynamic> map) {
    return SAMLIdpResponse(
      entityId: map['entityId'] == null ? null : (map['entityId'] as String).input(),
      metadataContent: map['metadataContent'] == null ? null : (map['metadataContent'] as String).input(),
    );
  }
}


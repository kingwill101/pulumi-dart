// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SAMLIdp
class SAMLIdpResponse {
  /// &lt;p&gt;The unique entity ID of the application in the SAML identity provider.&lt;/p&gt;
  final pulumi.Input<String>? entityId;
  /// &lt;p&gt;The metadata of the SAML application, in XML format.&lt;/p&gt;
  final pulumi.Input<String>? metadataContent;

  /// Creates a new [SAMLIdpResponse].
  /// [entityId] &lt;p&gt;The unique entity ID of the application in the SAML identity provider.&lt;/p&gt;
  /// [metadataContent] &lt;p&gt;The metadata of the SAML application, in XML format.&lt;/p&gt;
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
      entityId: (() { final guardedValue = map['entityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataContent: (() { final guardedValue = map['metadataContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


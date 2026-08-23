// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainSamlOptionsSamlOptionsIdp {
  /// The unique Entity ID of the application in SAML Identity Provider.
  final pulumi.Input<String> entityId;
  /// The Metadata of the SAML application in xml format.
  final pulumi.Input<String> metadataContent;

  /// Creates a new [DomainSamlOptionsSamlOptionsIdp].
  /// [entityId] The unique Entity ID of the application in SAML Identity Provider.
  /// [metadataContent] The Metadata of the SAML application in xml format.
  const DomainSamlOptionsSamlOptionsIdp({
    required this.entityId,
    required this.metadataContent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
      'metadataContent': metadataContent,
    };
  }

  factory DomainSamlOptionsSamlOptionsIdp.fromMap(Map<String, dynamic> map) {
    return DomainSamlOptionsSamlOptionsIdp(
      entityId: pulumi.Input.fromValue(map['entityId'] as String),
      metadataContent: pulumi.Input.fromValue(map['metadataContent'] as String),
    );
  }
}

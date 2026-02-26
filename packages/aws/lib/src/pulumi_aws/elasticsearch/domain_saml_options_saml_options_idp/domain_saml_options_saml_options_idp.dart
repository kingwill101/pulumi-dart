// ignore_for_file: unused_element, unnecessary_cast

class DomainSamlOptionsSamlOptionsIdp {
  /// The unique Entity ID of the application in SAML Identity Provider.
  final String entityId;

  /// The Metadata of the SAML application in xml format.
  final String metadataContent;

  DomainSamlOptionsSamlOptionsIdp({
    required this.entityId,
    required this.metadataContent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityId'] = entityId;
    map['metadataContent'] = metadataContent;
    return map;
  }

  factory DomainSamlOptionsSamlOptionsIdp.fromMap(Map<String, dynamic> map) {
    return DomainSamlOptionsSamlOptionsIdp(
      entityId: map['entityId'] as String,
      metadataContent: map['metadataContent'] as String,
    );
  }
}

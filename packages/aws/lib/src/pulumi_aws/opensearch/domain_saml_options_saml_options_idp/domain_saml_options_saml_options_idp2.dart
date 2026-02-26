// ignore_for_file: unused_element, unnecessary_cast

class DomainSamlOptionsSamlOptionsIdp2 {
  /// Unique Entity ID of the application in SAML Identity Provider.
  final String entityId;

  /// Metadata of the SAML application in xml format.
  final String metadataContent;

  DomainSamlOptionsSamlOptionsIdp2({
    required this.entityId,
    required this.metadataContent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityId'] = entityId;
    map['metadataContent'] = metadataContent;
    return map;
  }

  factory DomainSamlOptionsSamlOptionsIdp2.fromMap(Map<String, dynamic> map) {
    return DomainSamlOptionsSamlOptionsIdp2(
      entityId: map['entityId'] as String,
      metadataContent: map['metadataContent'] as String,
    );
  }
}

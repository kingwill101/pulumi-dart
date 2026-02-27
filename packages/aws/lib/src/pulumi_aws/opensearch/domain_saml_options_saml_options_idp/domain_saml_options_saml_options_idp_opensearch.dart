// ignore_for_file: unused_element, unnecessary_cast

class DomainSamlOptionsSamlOptionsIdpOpensearch {
  /// Unique Entity ID of the application in SAML Identity Provider.
  final String entityId;

  /// Metadata of the SAML application in xml format.
  final String metadataContent;

  DomainSamlOptionsSamlOptionsIdpOpensearch({
    required this.entityId,
    required this.metadataContent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityId'] = entityId;
    map['metadataContent'] = metadataContent;
    return map;
  }

  factory DomainSamlOptionsSamlOptionsIdpOpensearch.fromMap(
      Map<String, dynamic> map) {
    return DomainSamlOptionsSamlOptionsIdpOpensearch(
      entityId: map['entityId'] as String,
      metadataContent: map['metadataContent'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class WorkloadIdentityPoolProviderSaml {
  /// SAML Identity provider configuration metadata xml doc.
  ///
  /// <a name="nested_x509"></a>The `x509` block supports:
  final String idpMetadataXml;

  /// Creates a new [WorkloadIdentityPoolProviderSaml].
  /// [idpMetadataXml] SAML Identity provider configuration metadata xml doc.
  WorkloadIdentityPoolProviderSaml({
    required this.idpMetadataXml,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['idpMetadataXml'] = idpMetadataXml;
    return map;
  }

  factory WorkloadIdentityPoolProviderSaml.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolProviderSaml(
      idpMetadataXml: map['idpMetadataXml'] as String,
    );
  }
}

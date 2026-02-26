// ignore_for_file: unused_element, unnecessary_cast

class WorkloadIdentityPoolProviderSaml {
  /// SAML Identity provider configuration metadata xml doc.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedX509"" pulumi-lang-dotnet=""NestedX509"" pulumi-lang-go=""nestedX509"" pulumi-lang-python=""nested_x509"" pulumi-lang-yaml=""nestedX509"" pulumi-lang-java=""nestedX509"">"nested_x509"</span>></a>The <span pulumi-lang-nodejs="`x509`" pulumi-lang-dotnet="`X509`" pulumi-lang-go="`x509`" pulumi-lang-python="`x509`" pulumi-lang-yaml="`x509`" pulumi-lang-java="`x509`">`x509`</span> block supports:
  final String idpMetadataXml;

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

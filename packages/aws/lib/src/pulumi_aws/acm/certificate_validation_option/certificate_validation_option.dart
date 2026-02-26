// ignore_for_file: unused_element, unnecessary_cast

class CertificateValidationOption {
  /// Fully qualified domain name (FQDN) in the certificate.
  final String domainName;

  /// Domain name that you want ACM to use to send you validation emails. This domain name is the suffix of the email addresses that you want ACM to use. This must be the same as the <span pulumi-lang-nodejs="`domainName`" pulumi-lang-dotnet="`DomainName`" pulumi-lang-go="`domainName`" pulumi-lang-python="`domain_name`" pulumi-lang-yaml="`domainName`" pulumi-lang-java="`domainName`">`domain_name`</span> value or a superdomain of the <span pulumi-lang-nodejs="`domainName`" pulumi-lang-dotnet="`DomainName`" pulumi-lang-go="`domainName`" pulumi-lang-python="`domain_name`" pulumi-lang-yaml="`domainName`" pulumi-lang-java="`domainName`">`domain_name`</span> value. For example, if you request a certificate for `"testing.example.com"`, you can specify `"example.com"` for this value.
  final String validationDomain;

  CertificateValidationOption({
    required this.domainName,
    required this.validationDomain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    map['validationDomain'] = validationDomain;
    return map;
  }

  factory CertificateValidationOption.fromMap(Map<String, dynamic> map) {
    return CertificateValidationOption(
      domainName: map['domainName'] as String,
      validationDomain: map['validationDomain'] as String,
    );
  }
}

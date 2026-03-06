// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateValidationOption {
  /// Fully qualified domain name (FQDN) in the certificate.
  final pulumi.Input<String> domainName;
  /// Domain name that you want ACM to use to send you validation emails. This domain name is the suffix of the email addresses that you want ACM to use. This must be the same as the `domain_name` value or a superdomain of the `domain_name` value. For example, if you request a certificate for `"testing.example.com"`, you can specify `"example.com"` for this value.
  final pulumi.Input<String> validationDomain;

  /// Creates a new [CertificateValidationOption].
  /// [domainName] Fully qualified domain name (FQDN) in the certificate.
  /// [validationDomain] Domain name that you want ACM to use to send you validation emails. This domain name is the suffix of the email addresses that you want ACM to use. This must be the same as the `domain_name` value or a superdomain of the `domain_name` value. For example, if you request a certificate for `"testing.example.com"`, you can specify `"example.com"` for this value.
  const CertificateValidationOption({
    required this.domainName,
    required this.validationDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'validationDomain': validationDomain,
    };
  }

  factory CertificateValidationOption.fromMap(Map<String, dynamic> map) {
    return CertificateValidationOption(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      validationDomain: pulumi.Input.fromValue(map['validationDomain'] as String),
    );
  }
}


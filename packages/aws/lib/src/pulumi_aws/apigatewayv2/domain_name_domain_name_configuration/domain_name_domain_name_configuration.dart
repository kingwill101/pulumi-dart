// ignore_for_file: unused_element, unnecessary_cast

class DomainNameDomainNameConfiguration {
  /// ARN of an AWS-managed certificate that will be used by the endpoint for the domain name. AWS Certificate Manager is the only supported source. Use the <span pulumi-lang-nodejs="`aws.acm.Certificate`" pulumi-lang-dotnet="`aws.acm.Certificate`" pulumi-lang-go="`acm.Certificate`" pulumi-lang-python="`acm.Certificate`" pulumi-lang-yaml="`aws.acm.Certificate`" pulumi-lang-java="`aws.acm.Certificate`">`aws.acm.Certificate`</span> resource to configure an ACM certificate.
  final String certificateArn;

  /// Endpoint type. Valid values: `REGIONAL`.
  final String endpointType;

  /// Amazon Route 53 Hosted Zone ID of the endpoint.
  final String? hostedZoneId;

  /// The IP address types that can invoke the domain name. Valid values: <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>, <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>. Use <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span> to allow only IPv4 addresses to invoke your domain name, or use <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span> to allow both IPv4 and IPv6 addresses to invoke your domain name. Defaults to <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>.
  final String? ipAddressType;

  /// ARN of the AWS-issued certificate used to validate custom domain ownership (when <span pulumi-lang-nodejs="`certificateArn`" pulumi-lang-dotnet="`CertificateArn`" pulumi-lang-go="`certificateArn`" pulumi-lang-python="`certificate_arn`" pulumi-lang-yaml="`certificateArn`" pulumi-lang-java="`certificateArn`">`certificate_arn`</span> is issued via an ACM Private CA or <span pulumi-lang-nodejs="`mutualTlsAuthentication`" pulumi-lang-dotnet="`MutualTlsAuthentication`" pulumi-lang-go="`mutualTlsAuthentication`" pulumi-lang-python="`mutual_tls_authentication`" pulumi-lang-yaml="`mutualTlsAuthentication`" pulumi-lang-java="`mutualTlsAuthentication`">`mutual_tls_authentication`</span> is configured with an ACM-imported certificate.)
  final String? ownershipVerificationCertificateArn;

  /// Transport Layer Security (TLS) version of the [security policy](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-custom-domain-tls-version.html) for the domain name. Valid values: `TLS_1_2`.
  final String securityPolicy;

  /// Target domain name.
  final String? targetDomainName;

  DomainNameDomainNameConfiguration({
    required this.certificateArn,
    required this.endpointType,
    this.hostedZoneId,
    this.ipAddressType,
    this.ownershipVerificationCertificateArn,
    required this.securityPolicy,
    this.targetDomainName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateArn'] = certificateArn;
    map['endpointType'] = endpointType;
    final hostedZoneIdValue = hostedZoneId;
    if (hostedZoneIdValue != null) {
      map['hostedZoneId'] = hostedZoneIdValue;
    }
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    final ownershipVerificationCertificateArnValue =
        ownershipVerificationCertificateArn;
    if (ownershipVerificationCertificateArnValue != null) {
      map['ownershipVerificationCertificateArn'] =
          ownershipVerificationCertificateArnValue;
    }
    map['securityPolicy'] = securityPolicy;
    final targetDomainNameValue = targetDomainName;
    if (targetDomainNameValue != null) {
      map['targetDomainName'] = targetDomainNameValue;
    }
    return map;
  }

  factory DomainNameDomainNameConfiguration.fromMap(Map<String, dynamic> map) {
    return DomainNameDomainNameConfiguration(
      certificateArn: map['certificateArn'] as String,
      endpointType: map['endpointType'] as String,
      hostedZoneId:
          map['hostedZoneId'] == null ? null : map['hostedZoneId'] as String,
      ipAddressType:
          map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      ownershipVerificationCertificateArn:
          map['ownershipVerificationCertificateArn'] == null
              ? null
              : map['ownershipVerificationCertificateArn'] as String,
      securityPolicy: map['securityPolicy'] as String,
      targetDomainName: map['targetDomainName'] == null
          ? null
          : map['targetDomainName'] as String,
    );
  }
}

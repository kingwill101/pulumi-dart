// ignore_for_file: unused_element, unnecessary_cast


class DomainNameDomainNameConfiguration {
  /// ARN of an AWS-managed certificate that will be used by the endpoint for the domain name. AWS Certificate Manager is the only supported source. Use the `aws.acm.Certificate` resource to configure an ACM certificate.
  final String certificateArn;
  /// Endpoint type. Valid values: `REGIONAL`.
  final String endpointType;
  /// Amazon Route 53 Hosted Zone ID of the endpoint.
  final String? hostedZoneId;
  /// The IP address types that can invoke the domain name. Valid values: `ipv4`, `dualstack`. Use `ipv4` to allow only IPv4 addresses to invoke your domain name, or use `dualstack` to allow both IPv4 and IPv6 addresses to invoke your domain name. Defaults to `ipv4`.
  final String? ipAddressType;
  /// ARN of the AWS-issued certificate used to validate custom domain ownership (when `certificate_arn` is issued via an ACM Private CA or `mutual_tls_authentication` is configured with an ACM-imported certificate.)
  final String? ownershipVerificationCertificateArn;
  /// Transport Layer Security (TLS) version of the [security policy](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-custom-domain-tls-version.html) for the domain name. Valid values: `TLS_1_2`.
  final String securityPolicy;
  /// Target domain name.
  final String? targetDomainName;

  /// Creates a new [DomainNameDomainNameConfiguration].
  /// [certificateArn] ARN of an AWS-managed certificate that will be used by the endpoint for the domain name. AWS Certificate Manager is the only supported source. Use the `aws.acm.Certificate` resource to configure an ACM certificate.
  /// [endpointType] Endpoint type. Valid values: `REGIONAL`.
  /// [hostedZoneId] Amazon Route 53 Hosted Zone ID of the endpoint.
  /// [ipAddressType] The IP address types that can invoke the domain name. Valid values: `ipv4`, `dualstack`. Use `ipv4` to allow only IPv4 addresses to invoke your domain name, or use `dualstack` to allow both IPv4 and IPv6 addresses to invoke your domain name. Defaults to `ipv4`.
  /// [ownershipVerificationCertificateArn] ARN of the AWS-issued certificate used to validate custom domain ownership (when `certificate_arn` is issued via an ACM Private CA or `mutual_tls_authentication` is configured with an ACM-imported certificate.)
  /// [securityPolicy] Transport Layer Security (TLS) version of the [security policy](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-custom-domain-tls-version.html) for the domain name. Valid values: `TLS_1_2`.
  /// [targetDomainName] Target domain name.
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
    return <String, dynamic>{
      'certificateArn': certificateArn,
      'endpointType': endpointType,
      'hostedZoneId': ?hostedZoneId,
      'ipAddressType': ?ipAddressType,
      'ownershipVerificationCertificateArn': ?ownershipVerificationCertificateArn,
      'securityPolicy': securityPolicy,
      'targetDomainName': ?targetDomainName,
    };
  }

  factory DomainNameDomainNameConfiguration.fromMap(Map<String, dynamic> map) {
    return DomainNameDomainNameConfiguration(
      certificateArn: map['certificateArn'] as String,
      endpointType: map['endpointType'] as String,
      hostedZoneId: map['hostedZoneId'] == null ? null : map['hostedZoneId'] as String,
      ipAddressType: map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      ownershipVerificationCertificateArn: map['ownershipVerificationCertificateArn'] == null ? null : map['ownershipVerificationCertificateArn'] as String,
      securityPolicy: map['securityPolicy'] as String,
      targetDomainName: map['targetDomainName'] == null ? null : map['targetDomainName'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainNameDomainNameConfiguration {
  /// ARN of an AWS-managed certificate that will be used by the endpoint for the domain name. AWS Certificate Manager is the only supported source. Use the `aws.acm.Certificate` resource to configure an ACM certificate.
  final pulumi.Input<String> certificateArn;
  /// Endpoint type. Valid values: `REGIONAL`.
  final pulumi.Input<String> endpointType;
  /// Amazon Route 53 Hosted Zone ID of the endpoint.
  final pulumi.Input<String>? hostedZoneId;
  /// The IP address types that can invoke the domain name. Valid values: `ipv4`, `dualstack`. Use `ipv4` to allow only IPv4 addresses to invoke your domain name, or use `dualstack` to allow both IPv4 and IPv6 addresses to invoke your domain name. Defaults to `ipv4`.
  final pulumi.Input<String>? ipAddressType;
  /// ARN of the AWS-issued certificate used to validate custom domain ownership (when `certificate_arn` is issued via an ACM Private CA or `mutual_tls_authentication` is configured with an ACM-imported certificate.)
  final pulumi.Input<String>? ownershipVerificationCertificateArn;
  /// Transport Layer Security (TLS) version of the [security policy](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-custom-domain-tls-version.html) for the domain name. Valid values: `TLS_1_2`.
  final pulumi.Input<String> securityPolicy;
  /// Target domain name.
  final pulumi.Input<String>? targetDomainName;

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
      certificateArn: pulumi.Input.fromValue(map['certificateArn'] as String),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      hostedZoneId: (() { final guardedValue = map['hostedZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownershipVerificationCertificateArn: (() { final guardedValue = map['ownershipVerificationCertificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityPolicy: pulumi.Input.fromValue(map['securityPolicy'] as String),
      targetDomainName: (() { final guardedValue = map['targetDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


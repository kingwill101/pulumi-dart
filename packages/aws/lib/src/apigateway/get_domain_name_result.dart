// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_name_endpoint_configuration.dart';

/// Result data returned by getDomainName.
class GetDomainNameResult {
  /// ARN of the found custom domain name.
  final String arn;
  /// ARN for an AWS-managed certificate that is used by edge-optimized endpoint for this domain name.
  final String certificateArn;
  /// Name of the certificate that is used by edge-optimized endpoint for this domain name.
  final String certificateName;
  /// Upload date associated with the domain certificate.
  final String certificateUploadDate;
  /// Hostname created by Cloudfront to represent the distribution that implements this domain name mapping.
  final String cloudfrontDomainName;
  /// For convenience, the hosted zone ID (`Z2FDTNDATAQYW2`) that can be used to create a Route53 alias record for the distribution.
  final String cloudfrontZoneId;
  final String domainName;
  final String domainNameId;
  /// (Optional) Endpoint access mode of the DomainName. Only available for domain names that use security policies that start with `SecurityPolicy_`.
  final String endpointAccessMode;
  /// List of objects with the endpoint configuration of this domain name.
  final List<GetDomainNameEndpointConfiguration> endpointConfigurations;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A stringified JSON policy document that applies to the execute-api service for this DomainName regardless of the caller and Method configuration. Supported only for private custom domain names.
  final String policy;
  final String region;
  /// ARN for an AWS-managed certificate that is used for validating the regional domain name.
  final String regionalCertificateArn;
  /// User-friendly name of the certificate that is used by regional endpoint for this domain name.
  final String regionalCertificateName;
  /// Hostname for the custom domain's regional endpoint.
  final String regionalDomainName;
  /// Hosted zone ID that can be used to create a Route53 alias record for the regional endpoint.
  final String regionalZoneId;
  /// Security policy for the domain name.
  final String securityPolicy;
  /// Key-value map of tags for the resource.
  final Map<String, String> tags;

  /// Creates a new [GetDomainNameResult].
  /// [arn] ARN of the found custom domain name.
  /// [certificateArn] ARN for an AWS-managed certificate that is used by edge-optimized endpoint for this domain name.
  /// [certificateName] Name of the certificate that is used by edge-optimized endpoint for this domain name.
  /// [certificateUploadDate] Upload date associated with the domain certificate.
  /// [cloudfrontDomainName] Hostname created by Cloudfront to represent the distribution that implements this domain name mapping.
  /// [cloudfrontZoneId] For convenience, the hosted zone ID (`Z2FDTNDATAQYW2`) that can be used to create a Route53 alias record for the distribution.
  /// [domainName] Required.
  /// [domainNameId] Required.
  /// [endpointAccessMode] (Optional) Endpoint access mode of the DomainName. Only available for domain names that use security policies that start with `SecurityPolicy_`.
  /// [endpointConfigurations] List of objects with the endpoint configuration of this domain name.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policy] A stringified JSON policy document that applies to the execute-api service for this DomainName regardless of the caller and Method configuration. Supported only for private custom domain names.
  /// [region] Required.
  /// [regionalCertificateArn] ARN for an AWS-managed certificate that is used for validating the regional domain name.
  /// [regionalCertificateName] User-friendly name of the certificate that is used by regional endpoint for this domain name.
  /// [regionalDomainName] Hostname for the custom domain's regional endpoint.
  /// [regionalZoneId] Hosted zone ID that can be used to create a Route53 alias record for the regional endpoint.
  /// [securityPolicy] Security policy for the domain name.
  /// [tags] Key-value map of tags for the resource.
  GetDomainNameResult({
    required this.arn,
    required this.certificateArn,
    required this.certificateName,
    required this.certificateUploadDate,
    required this.cloudfrontDomainName,
    required this.cloudfrontZoneId,
    required this.domainName,
    required this.domainNameId,
    required this.endpointAccessMode,
    required this.endpointConfigurations,
    required this.id,
    required this.policy,
    required this.region,
    required this.regionalCertificateArn,
    required this.regionalCertificateName,
    required this.regionalDomainName,
    required this.regionalZoneId,
    required this.securityPolicy,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'certificateArn': certificateArn,
      'certificateName': certificateName,
      'certificateUploadDate': certificateUploadDate,
      'cloudfrontDomainName': cloudfrontDomainName,
      'cloudfrontZoneId': cloudfrontZoneId,
      'domainName': domainName,
      'domainNameId': domainNameId,
      'endpointAccessMode': endpointAccessMode,
      'endpointConfigurations': pulumi.Input.encodeList<GetDomainNameEndpointConfiguration, Map<String, dynamic>>(endpointConfigurations, (value) => value.toMap()),
      'id': id,
      'policy': policy,
      'region': region,
      'regionalCertificateArn': regionalCertificateArn,
      'regionalCertificateName': regionalCertificateName,
      'regionalDomainName': regionalDomainName,
      'regionalZoneId': regionalZoneId,
      'securityPolicy': securityPolicy,
      'tags': tags,
    };
  }

  factory GetDomainNameResult.fromMap(Map<String, dynamic> map) {
    return GetDomainNameResult(
      arn: map['arn'] as String,
      certificateArn: map['certificateArn'] as String,
      certificateName: map['certificateName'] as String,
      certificateUploadDate: map['certificateUploadDate'] as String,
      cloudfrontDomainName: map['cloudfrontDomainName'] as String,
      cloudfrontZoneId: map['cloudfrontZoneId'] as String,
      domainName: map['domainName'] as String,
      domainNameId: map['domainNameId'] as String,
      endpointAccessMode: map['endpointAccessMode'] as String,
      endpointConfigurations: pulumi.Input.decodeList<GetDomainNameEndpointConfiguration>(map['endpointConfigurations'], (value) => GetDomainNameEndpointConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      policy: map['policy'] as String,
      region: map['region'] as String,
      regionalCertificateArn: map['regionalCertificateArn'] as String,
      regionalCertificateName: map['regionalCertificateName'] as String,
      regionalDomainName: map['regionalDomainName'] as String,
      regionalZoneId: map['regionalZoneId'] as String,
      securityPolicy: map['securityPolicy'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}


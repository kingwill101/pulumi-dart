// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_name_endpoint_configuration.dart';

/// Result data returned by getDomainName.
class GetDomainNameResult {
  /// ARN of the found custom domain name.
  final String? arn;
  /// ARN for an AWS-managed certificate that is used by edge-optimized endpoint for this domain name.
  final String? certificateArn;
  /// Name of the certificate that is used by edge-optimized endpoint for this domain name.
  final String? certificateName;
  /// Upload date associated with the domain certificate.
  final String? certificateUploadDate;
  /// Hostname created by Cloudfront to represent the distribution that implements this domain name mapping.
  final String? cloudfrontDomainName;
  /// For convenience, the hosted zone ID (`Z2FDTNDATAQYW2`) that can be used to create a Route53 alias record for the distribution.
  final String? cloudfrontZoneId;
  final String? domainName;
  final String? domainNameId;
  /// Endpoint access mode of the DomainName. Only available for domain names that use security policies that start with `SecurityPolicy_`.
  final String? endpointAccessMode;
  /// List of objects with the endpoint configuration of this domain name. See below.
  final List<GetDomainNameEndpointConfiguration>? endpointConfigurations;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Stringified JSON policy document that applies to the execute-api service for this DomainName regardless of the caller and Method configuration. Supported only for private custom domain names.
  final String? policy;
  final String? region;
  /// ARN for an AWS-managed certificate that is used for validating the regional domain name.
  final String? regionalCertificateArn;
  /// User-friendly name of the certificate that is used by regional endpoint for this domain name.
  final String? regionalCertificateName;
  /// Hostname for the custom domain's regional endpoint.
  final String? regionalDomainName;
  /// Hosted zone ID that can be used to create a Route53 alias record for the regional endpoint.
  final String? regionalZoneId;
  /// Security policy for the domain name.
  final String? securityPolicy;
  /// Key-value map of tags for the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetDomainNameResult].
  /// [arn] ARN of the found custom domain name.
  /// [certificateArn] ARN for an AWS-managed certificate that is used by edge-optimized endpoint for this domain name.
  /// [certificateName] Name of the certificate that is used by edge-optimized endpoint for this domain name.
  /// [certificateUploadDate] Upload date associated with the domain certificate.
  /// [cloudfrontDomainName] Hostname created by Cloudfront to represent the distribution that implements this domain name mapping.
  /// [cloudfrontZoneId] For convenience, the hosted zone ID (`Z2FDTNDATAQYW2`) that can be used to create a Route53 alias record for the distribution.
  /// [domainName] Optional.
  /// [domainNameId] Optional.
  /// [endpointAccessMode] Endpoint access mode of the DomainName. Only available for domain names that use security policies that start with `SecurityPolicy_`.
  /// [endpointConfigurations] List of objects with the endpoint configuration of this domain name. See below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policy] Stringified JSON policy document that applies to the execute-api service for this DomainName regardless of the caller and Method configuration. Supported only for private custom domain names.
  /// [region] Optional.
  /// [regionalCertificateArn] ARN for an AWS-managed certificate that is used for validating the regional domain name.
  /// [regionalCertificateName] User-friendly name of the certificate that is used by regional endpoint for this domain name.
  /// [regionalDomainName] Hostname for the custom domain's regional endpoint.
  /// [regionalZoneId] Hosted zone ID that can be used to create a Route53 alias record for the regional endpoint.
  /// [securityPolicy] Security policy for the domain name.
  /// [tags] Key-value map of tags for the resource.
  const GetDomainNameResult({
    this.arn,
    this.certificateArn,
    this.certificateName,
    this.certificateUploadDate,
    this.cloudfrontDomainName,
    this.cloudfrontZoneId,
    this.domainName,
    this.domainNameId,
    this.endpointAccessMode,
    this.endpointConfigurations,
    this.id,
    this.policy,
    this.region,
    this.regionalCertificateArn,
    this.regionalCertificateName,
    this.regionalDomainName,
    this.regionalZoneId,
    this.securityPolicy,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'certificateArn': ?certificateArn,
      'certificateName': ?certificateName,
      'certificateUploadDate': ?certificateUploadDate,
      'cloudfrontDomainName': ?cloudfrontDomainName,
      'cloudfrontZoneId': ?cloudfrontZoneId,
      'domainName': ?domainName,
      'domainNameId': ?domainNameId,
      'endpointAccessMode': ?endpointAccessMode,
      'endpointConfigurations': ?(() { final guardedValue = endpointConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainNameEndpointConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'policy': ?policy,
      'region': ?region,
      'regionalCertificateArn': ?regionalCertificateArn,
      'regionalCertificateName': ?regionalCertificateName,
      'regionalDomainName': ?regionalDomainName,
      'regionalZoneId': ?regionalZoneId,
      'securityPolicy': ?securityPolicy,
      'tags': ?tags,
    };
  }

  factory GetDomainNameResult.fromMap(Map<String, dynamic> map) {
    return GetDomainNameResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateName: (() { final guardedValue = map['certificateName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateUploadDate: (() { final guardedValue = map['certificateUploadDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudfrontDomainName: (() { final guardedValue = map['cloudfrontDomainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudfrontZoneId: (() { final guardedValue = map['cloudfrontZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainNameId: (() { final guardedValue = map['domainNameId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointAccessMode: (() { final guardedValue = map['endpointAccessMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointConfigurations: (() { final guardedValue = map['endpointConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainNameEndpointConfiguration>(guardedValue, (value) => GetDomainNameEndpointConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regionalCertificateArn: (() { final guardedValue = map['regionalCertificateArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regionalCertificateName: (() { final guardedValue = map['regionalCertificateName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regionalDomainName: (() { final guardedValue = map['regionalDomainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regionalZoneId: (() { final guardedValue = map['regionalZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityPolicy: (() { final guardedValue = map['securityPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

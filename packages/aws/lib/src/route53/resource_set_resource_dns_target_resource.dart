// ignore_for_file: unused_element, unnecessary_cast

import 'resource_set_resource_dns_target_resource_target_resource.dart';

class ResourceSetResourceDnsTargetResource {
  /// DNS Name that acts as the ingress point to a portion of application.
  final String domainName;
  /// Hosted Zone ARN that contains the DNS record with the provided name of target resource.
  final String? hostedZoneArn;
  /// Route53 record set id to uniquely identify a record given a `domain_name` and a `record_type`.
  final String? recordSetId;
  /// Type of DNS Record of target resource.
  final String? recordType;
  /// Target resource the R53 record specified with the above params points to.
  final ResourceSetResourceDnsTargetResourceTargetResource? targetResource;

  /// Creates a new [ResourceSetResourceDnsTargetResource].
  /// [domainName] DNS Name that acts as the ingress point to a portion of application.
  /// [hostedZoneArn] Hosted Zone ARN that contains the DNS record with the provided name of target resource.
  /// [recordSetId] Route53 record set id to uniquely identify a record given a `domain_name` and a `record_type`.
  /// [recordType] Type of DNS Record of target resource.
  /// [targetResource] Target resource the R53 record specified with the above params points to.
  ResourceSetResourceDnsTargetResource({
    required this.domainName,
    this.hostedZoneArn,
    this.recordSetId,
    this.recordType,
    this.targetResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'hostedZoneArn': ?hostedZoneArn,
      'recordSetId': ?recordSetId,
      'recordType': ?recordType,
      'targetResource': ?targetResource == null ? null : targetResource!.toMap(),
    };
  }

  factory ResourceSetResourceDnsTargetResource.fromMap(Map<String, dynamic> map) {
    return ResourceSetResourceDnsTargetResource(
      domainName: map['domainName'] as String,
      hostedZoneArn: map['hostedZoneArn'] == null ? null : map['hostedZoneArn'] as String,
      recordSetId: map['recordSetId'] == null ? null : map['recordSetId'] as String,
      recordType: map['recordType'] == null ? null : map['recordType'] as String,
      targetResource: map['targetResource'] == null ? null : ResourceSetResourceDnsTargetResourceTargetResource.fromMap((map['targetResource'] as Map).cast<String, dynamic>()),
    );
  }
}


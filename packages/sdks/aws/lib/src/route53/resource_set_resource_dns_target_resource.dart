// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_set_resource_dns_target_resource_target_resource.dart';

class ResourceSetResourceDnsTargetResource {
  /// DNS Name that acts as the ingress point to a portion of application.
  final pulumi.Input<String> domainName;
  /// Hosted Zone ARN that contains the DNS record with the provided name of target resource.
  final pulumi.Input<String>? hostedZoneArn;
  /// Route53 record set id to uniquely identify a record given a `domain_name` and a `record_type`.
  final pulumi.Input<String>? recordSetId;
  /// Type of DNS Record of target resource.
  final pulumi.Input<String>? recordType;
  /// Target resource the R53 record specified with the above params points to.
  final pulumi.Input<ResourceSetResourceDnsTargetResourceTargetResource>? targetResource;

  /// Creates a new [ResourceSetResourceDnsTargetResource].
  /// [domainName] DNS Name that acts as the ingress point to a portion of application.
  /// [hostedZoneArn] Hosted Zone ARN that contains the DNS record with the provided name of target resource.
  /// [recordSetId] Route53 record set id to uniquely identify a record given a `domain_name` and a `record_type`.
  /// [recordType] Type of DNS Record of target resource.
  /// [targetResource] Target resource the R53 record specified with the above params points to.
  const ResourceSetResourceDnsTargetResource({
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
      'targetResource': ?pulumi.Input.mapOptionalInputValue<ResourceSetResourceDnsTargetResourceTargetResource, Map<String, dynamic>>(targetResource, (value) => value.toMap()),
    };
  }

  factory ResourceSetResourceDnsTargetResource.fromMap(Map<String, dynamic> map) {
    return ResourceSetResourceDnsTargetResource(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      hostedZoneArn: (() { final guardedValue = map['hostedZoneArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordSetId: (() { final guardedValue = map['recordSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordType: (() { final guardedValue = map['recordType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetResource: (() { final guardedValue = map['targetResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSetResourceDnsTargetResourceTargetResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


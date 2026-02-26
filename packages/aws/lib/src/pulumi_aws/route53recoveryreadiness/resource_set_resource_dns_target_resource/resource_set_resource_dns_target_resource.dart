// ignore_for_file: unused_element, unnecessary_cast

import '../resource_set_resource_dns_target_resource_target_resource/resource_set_resource_dns_target_resource_target_resource.dart';

class ResourceSetResourceDnsTargetResource {
  /// DNS Name that acts as the ingress point to a portion of application.
  final String domainName;

  /// Hosted Zone ARN that contains the DNS record with the provided name of target resource.
  final String? hostedZoneArn;

  /// Route53 record set id to uniquely identify a record given a <span pulumi-lang-nodejs="`domainName`" pulumi-lang-dotnet="`DomainName`" pulumi-lang-go="`domainName`" pulumi-lang-python="`domain_name`" pulumi-lang-yaml="`domainName`" pulumi-lang-java="`domainName`">`domain_name`</span> and a <span pulumi-lang-nodejs="`recordType`" pulumi-lang-dotnet="`RecordType`" pulumi-lang-go="`recordType`" pulumi-lang-python="`record_type`" pulumi-lang-yaml="`recordType`" pulumi-lang-java="`recordType`">`record_type`</span>.
  final String? recordSetId;

  /// Type of DNS Record of target resource.
  final String? recordType;

  /// Target resource the R53 record specified with the above params points to.
  final ResourceSetResourceDnsTargetResourceTargetResource? targetResource;

  ResourceSetResourceDnsTargetResource({
    required this.domainName,
    this.hostedZoneArn,
    this.recordSetId,
    this.recordType,
    this.targetResource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    final hostedZoneArnValue = hostedZoneArn;
    if (hostedZoneArnValue != null) {
      map['hostedZoneArn'] = hostedZoneArnValue;
    }
    final recordSetIdValue = recordSetId;
    if (recordSetIdValue != null) {
      map['recordSetId'] = recordSetIdValue;
    }
    final recordTypeValue = recordType;
    if (recordTypeValue != null) {
      map['recordType'] = recordTypeValue;
    }
    final targetResourceValue = targetResource;
    if (targetResourceValue != null) {
      map['targetResource'] = targetResourceValue.toMap();
    }
    return map;
  }

  factory ResourceSetResourceDnsTargetResource.fromMap(
      Map<String, dynamic> map) {
    return ResourceSetResourceDnsTargetResource(
      domainName: map['domainName'] as String,
      hostedZoneArn:
          map['hostedZoneArn'] == null ? null : map['hostedZoneArn'] as String,
      recordSetId:
          map['recordSetId'] == null ? null : map['recordSetId'] as String,
      recordType:
          map['recordType'] == null ? null : map['recordType'] as String,
      targetResource: map['targetResource'] == null
          ? null
          : ResourceSetResourceDnsTargetResourceTargetResource.fromMap(
              (map['targetResource'] as Map).cast<String, dynamic>()),
    );
  }
}

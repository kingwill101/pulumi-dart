// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_elastic_ip_filter.dart';

/// Result data returned by getElasticIp.
class GetElasticIpResult {
  final String? arn;
  /// ID representing the association of the address with an instance in a VPC.
  final String? associationId;
  /// Carrier IP address.
  final String? carrierIp;
  /// Customer Owned IP.
  final String? customerOwnedIp;
  /// The ID of a Customer Owned IP Pool. For more on customer owned IP addressed check out [Customer-owned IP addresses guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing)
  final String? customerOwnedIpv4Pool;
  /// Whether the address is for use in EC2-Classic (standard) or in a VPC (vpc).
  final String? domain;
  final List<GetElasticIpFilter>? filters;
  /// If VPC Elastic IP, the allocation identifier. If EC2-Classic Elastic IP, the public IP address.
  final String? id;
  /// ID of the instance that the address is associated with (if any).
  final String? instanceId;
  /// The ID of an IPAM pool which has an Amazon-provided or BYOIP public IPv4 CIDR provisioned to it.
  final String? ipamPoolId;
  /// The ID of the network interface.
  final String? networkInterfaceId;
  /// The ID of the AWS account that owns the network interface.
  final String? networkInterfaceOwnerId;
  /// Private DNS associated with the Elastic IP address.
  final String? privateDns;
  /// Private IP address associated with the Elastic IP address.
  final String? privateIp;
  /// The DNS pointer (PTR) record for the IP address.
  final String? ptrRecord;
  /// Public DNS associated with the Elastic IP address.
  final String? publicDns;
  /// Public IP address of Elastic IP.
  final String? publicIp;
  /// ID of an address pool.
  final String? publicIpv4Pool;
  final String? region;
  /// Key-value map of tags associated with Elastic IP.
  final Map<String, String>? tags;

  /// Creates a new [GetElasticIpResult].
  /// [arn] Optional.
  /// [associationId] ID representing the association of the address with an instance in a VPC.
  /// [carrierIp] Carrier IP address.
  /// [customerOwnedIp] Customer Owned IP.
  /// [customerOwnedIpv4Pool] The ID of a Customer Owned IP Pool. For more on customer owned IP addressed check out [Customer-owned IP addresses guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing)
  /// [domain] Whether the address is for use in EC2-Classic (standard) or in a VPC (vpc).
  /// [filters] Optional.
  /// [id] If VPC Elastic IP, the allocation identifier. If EC2-Classic Elastic IP, the public IP address.
  /// [instanceId] ID of the instance that the address is associated with (if any).
  /// [ipamPoolId] The ID of an IPAM pool which has an Amazon-provided or BYOIP public IPv4 CIDR provisioned to it.
  /// [networkInterfaceId] The ID of the network interface.
  /// [networkInterfaceOwnerId] The ID of the AWS account that owns the network interface.
  /// [privateDns] Private DNS associated with the Elastic IP address.
  /// [privateIp] Private IP address associated with the Elastic IP address.
  /// [ptrRecord] The DNS pointer (PTR) record for the IP address.
  /// [publicDns] Public DNS associated with the Elastic IP address.
  /// [publicIp] Public IP address of Elastic IP.
  /// [publicIpv4Pool] ID of an address pool.
  /// [region] Optional.
  /// [tags] Key-value map of tags associated with Elastic IP.
  const GetElasticIpResult({
    this.arn,
    this.associationId,
    this.carrierIp,
    this.customerOwnedIp,
    this.customerOwnedIpv4Pool,
    this.domain,
    this.filters,
    this.id,
    this.instanceId,
    this.ipamPoolId,
    this.networkInterfaceId,
    this.networkInterfaceOwnerId,
    this.privateDns,
    this.privateIp,
    this.ptrRecord,
    this.publicDns,
    this.publicIp,
    this.publicIpv4Pool,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'associationId': ?associationId,
      'carrierIp': ?carrierIp,
      'customerOwnedIp': ?customerOwnedIp,
      'customerOwnedIpv4Pool': ?customerOwnedIpv4Pool,
      'domain': ?domain,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetElasticIpFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'instanceId': ?instanceId,
      'ipamPoolId': ?ipamPoolId,
      'networkInterfaceId': ?networkInterfaceId,
      'networkInterfaceOwnerId': ?networkInterfaceOwnerId,
      'privateDns': ?privateDns,
      'privateIp': ?privateIp,
      'ptrRecord': ?ptrRecord,
      'publicDns': ?publicDns,
      'publicIp': ?publicIp,
      'publicIpv4Pool': ?publicIpv4Pool,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetElasticIpResult.fromMap(Map<String, dynamic> map) {
    return GetElasticIpResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      associationId: (() { final guardedValue = map['associationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      carrierIp: (() { final guardedValue = map['carrierIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerOwnedIp: (() { final guardedValue = map['customerOwnedIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerOwnedIpv4Pool: (() { final guardedValue = map['customerOwnedIpv4Pool']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetElasticIpFilter>(guardedValue, (value) => GetElasticIpFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipamPoolId: (() { final guardedValue = map['ipamPoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaceOwnerId: (() { final guardedValue = map['networkInterfaceOwnerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateDns: (() { final guardedValue = map['privateDns']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateIp: (() { final guardedValue = map['privateIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ptrRecord: (() { final guardedValue = map['ptrRecord']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicDns: (() { final guardedValue = map['publicDns']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicIp: (() { final guardedValue = map['publicIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicIpv4Pool: (() { final guardedValue = map['publicIpv4Pool']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

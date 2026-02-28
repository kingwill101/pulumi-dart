// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_elastic_ip_filter.dart';

/// Result data returned by getElasticIp.
class GetElasticIpResult {
  final String arn;

  /// ID representing the association of the address with an instance in a VPC.
  final String associationId;

  /// Carrier IP address.
  final String carrierIp;

  /// Customer Owned IP.
  final String customerOwnedIp;

  /// The ID of a Customer Owned IP Pool. For more on customer owned IP addressed check out [Customer-owned IP addresses guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing)
  final String customerOwnedIpv4Pool;

  /// Whether the address is for use in EC2-Classic (standard) or in a VPC (vpc).
  final String domain;
  final List<GetElasticIpFilter>? filters;

  /// If VPC Elastic IP, the allocation identifier. If EC2-Classic Elastic IP, the public IP address.
  final String id;

  /// ID of the instance that the address is associated with (if any).
  final String instanceId;

  /// The ID of an IPAM pool which has an Amazon-provided or BYOIP public IPv4 CIDR provisioned to it.
  final String ipamPoolId;

  /// The ID of the network interface.
  final String networkInterfaceId;

  /// The ID of the AWS account that owns the network interface.
  final String networkInterfaceOwnerId;

  /// Private DNS associated with the Elastic IP address.
  final String privateDns;

  /// Private IP address associated with the Elastic IP address.
  final String privateIp;

  /// The DNS pointer (PTR) record for the IP address.
  final String ptrRecord;

  /// Public DNS associated with the Elastic IP address.
  final String publicDns;

  /// Public IP address of Elastic IP.
  final String publicIp;

  /// ID of an address pool.
  final String publicIpv4Pool;
  final String region;

  /// Key-value map of tags associated with Elastic IP.
  final Map<String, String> tags;

  /// Creates a new [GetElasticIpResult].
  /// [arn] Required.
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
  /// [region] Required.
  /// [tags] Key-value map of tags associated with Elastic IP.
  GetElasticIpResult({
    required this.arn,
    required this.associationId,
    required this.carrierIp,
    required this.customerOwnedIp,
    required this.customerOwnedIpv4Pool,
    required this.domain,
    this.filters,
    required this.id,
    required this.instanceId,
    required this.ipamPoolId,
    required this.networkInterfaceId,
    required this.networkInterfaceOwnerId,
    required this.privateDns,
    required this.privateIp,
    required this.ptrRecord,
    required this.publicDns,
    required this.publicIp,
    required this.publicIpv4Pool,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['associationId'] = associationId;
    map['carrierIp'] = carrierIp;
    map['customerOwnedIp'] = customerOwnedIp;
    map['customerOwnedIpv4Pool'] = customerOwnedIpv4Pool;
    map['domain'] = domain;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          pulumi.Input.encodeList<GetElasticIpFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['instanceId'] = instanceId;
    map['ipamPoolId'] = ipamPoolId;
    map['networkInterfaceId'] = networkInterfaceId;
    map['networkInterfaceOwnerId'] = networkInterfaceOwnerId;
    map['privateDns'] = privateDns;
    map['privateIp'] = privateIp;
    map['ptrRecord'] = ptrRecord;
    map['publicDns'] = publicDns;
    map['publicIp'] = publicIp;
    map['publicIpv4Pool'] = publicIpv4Pool;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetElasticIpResult.fromMap(Map<String, dynamic> map) {
    return GetElasticIpResult(
      arn: map['arn'] as String,
      associationId: map['associationId'] as String,
      carrierIp: map['carrierIp'] as String,
      customerOwnedIp: map['customerOwnedIp'] as String,
      customerOwnedIpv4Pool: map['customerOwnedIpv4Pool'] as String,
      domain: map['domain'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetElasticIpFilter>(
              map['filters'],
              (value) => GetElasticIpFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      ipamPoolId: map['ipamPoolId'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      networkInterfaceOwnerId: map['networkInterfaceOwnerId'] as String,
      privateDns: map['privateDns'] as String,
      privateIp: map['privateIp'] as String,
      ptrRecord: map['ptrRecord'] as String,
      publicDns: map['publicDns'] as String,
      publicIp: map['publicIp'] as String,
      publicIpv4Pool: map['publicIpv4Pool'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

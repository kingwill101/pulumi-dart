// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_vpc_ipam_pool_filter/get_vpc_ipam_pool_filter.dart';
import '../get_vpc_ipam_pool_source_resource/get_vpc_ipam_pool_source_resource.dart';

/// Result data returned by getVpcIpamPool.
class GetVpcIpamPoolResult {
  /// IP protocol assigned to this pool.
  final String addressFamily;

  /// A default netmask length for allocations added to this pool. If, for example, the CIDR assigned to this pool is `10.0.0.0/8` and you enter 16 here, new allocations will default to `10.0.0.0/16`.
  final int allocationDefaultNetmaskLength;

  /// The maximum netmask length that will be required for CIDR allocations in this pool.
  final int allocationMaxNetmaskLength;

  /// The minimum netmask length that will be required for CIDR allocations in this pool.
  final int allocationMinNetmaskLength;

  /// Tags that are required to create resources in using this pool.
  final Map<String, String> allocationResourceTags;

  /// ARN of the pool
  final String arn;

  /// If enabled, IPAM will continuously look for resources within the CIDR range of this pool and automatically import them as allocations into your IPAM.
  final bool autoImport;

  /// Limits which service in AWS that the pool can be used in. `ec2` for example, allows users to use space for Elastic IP addresses and VPCs.
  final String awsService;

  /// Description for the IPAM pool.
  final String description;
  final List<GetVpcIpamPoolFilter>? filters;

  /// ID of the IPAM pool.
  final String? id;
  final String? ipamPoolId;

  /// ID of the scope the pool belongs to.
  final String ipamScopeId;
  final String ipamScopeType;

  /// Locale is the Region where your pool is available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region.
  final String locale;
  final int poolDepth;

  /// Defines whether or not IPv6 pool space is publicly advertisable over the internet.
  final bool publiclyAdvertisable;
  final String region;

  /// ID of the source IPAM pool.
  final String sourceIpamPoolId;

  /// Resource used to create the resource planning pool.
  final List<GetVpcIpamPoolSourceResource> sourceResources;
  final String state;

  /// Map of tags to assigned to the resource.
  final Map<String, String> tags;

  GetVpcIpamPoolResult({
    required this.addressFamily,
    required this.allocationDefaultNetmaskLength,
    required this.allocationMaxNetmaskLength,
    required this.allocationMinNetmaskLength,
    required this.allocationResourceTags,
    required this.arn,
    required this.autoImport,
    required this.awsService,
    required this.description,
    this.filters,
    this.id,
    this.ipamPoolId,
    required this.ipamScopeId,
    required this.ipamScopeType,
    required this.locale,
    required this.poolDepth,
    required this.publiclyAdvertisable,
    required this.region,
    required this.sourceIpamPoolId,
    required this.sourceResources,
    required this.state,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressFamily'] = addressFamily;
    map['allocationDefaultNetmaskLength'] = allocationDefaultNetmaskLength;
    map['allocationMaxNetmaskLength'] = allocationMaxNetmaskLength;
    map['allocationMinNetmaskLength'] = allocationMinNetmaskLength;
    map['allocationResourceTags'] = allocationResourceTags;
    map['arn'] = arn;
    map['autoImport'] = autoImport;
    map['awsService'] = awsService;
    map['description'] = description;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          pulumi.Input.encodeList<GetVpcIpamPoolFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final ipamPoolIdValue = ipamPoolId;
    if (ipamPoolIdValue != null) {
      map['ipamPoolId'] = ipamPoolIdValue;
    }
    map['ipamScopeId'] = ipamScopeId;
    map['ipamScopeType'] = ipamScopeType;
    map['locale'] = locale;
    map['poolDepth'] = poolDepth;
    map['publiclyAdvertisable'] = publiclyAdvertisable;
    map['region'] = region;
    map['sourceIpamPoolId'] = sourceIpamPoolId;
    map['sourceResources'] = pulumi.Input.encodeList<
        GetVpcIpamPoolSourceResource,
        Map<String, dynamic>>(sourceResources, (value) => value.toMap());
    map['state'] = state;
    map['tags'] = tags;
    return map;
  }

  factory GetVpcIpamPoolResult.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolResult(
      addressFamily: map['addressFamily'] as String,
      allocationDefaultNetmaskLength:
          map['allocationDefaultNetmaskLength'] as int,
      allocationMaxNetmaskLength: map['allocationMaxNetmaskLength'] as int,
      allocationMinNetmaskLength: map['allocationMinNetmaskLength'] as int,
      allocationResourceTags:
          (map['allocationResourceTags'] as Map).cast<String, String>(),
      arn: map['arn'] as String,
      autoImport: map['autoImport'] as bool,
      awsService: map['awsService'] as String,
      description: map['description'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetVpcIpamPoolFilter>(
              map['filters'],
              (value) => GetVpcIpamPoolFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      ipamPoolId:
          map['ipamPoolId'] == null ? null : map['ipamPoolId'] as String,
      ipamScopeId: map['ipamScopeId'] as String,
      ipamScopeType: map['ipamScopeType'] as String,
      locale: map['locale'] as String,
      poolDepth: map['poolDepth'] as int,
      publiclyAdvertisable: map['publiclyAdvertisable'] as bool,
      region: map['region'] as String,
      sourceIpamPoolId: map['sourceIpamPoolId'] as String,
      sourceResources: pulumi.Input.decodeList<GetVpcIpamPoolSourceResource>(
          map['sourceResources'],
          (value) => GetVpcIpamPoolSourceResource.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

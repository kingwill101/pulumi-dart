// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ipam_pool_filter.dart';
import 'get_vpc_ipam_pool_source_resource.dart';

/// Result data returned by getVpcIpamPool.
class GetVpcIpamPoolResult {
  /// IP protocol assigned to this pool.
  final String? addressFamily;
  /// A default netmask length for allocations added to this pool. If, for example, the CIDR assigned to this pool is `10.0.0.0/8` and you enter 16 here, new allocations will default to `10.0.0.0/16`.
  final int? allocationDefaultNetmaskLength;
  /// The maximum netmask length that will be required for CIDR allocations in this pool.
  final int? allocationMaxNetmaskLength;
  /// The minimum netmask length that will be required for CIDR allocations in this pool.
  final int? allocationMinNetmaskLength;
  /// Tags that are required to create resources in using this pool.
  final Map<String, String>? allocationResourceTags;
  /// ARN of the pool
  final String? arn;
  /// If enabled, IPAM will continuously look for resources within the CIDR range of this pool and automatically import them as allocations into your IPAM.
  final bool? autoImport;
  /// Limits which service in AWS that the pool can be used in. `ec2` for example, allows users to use space for Elastic IP addresses and VPCs.
  final String? awsService;
  /// Description for the IPAM pool.
  final String? description;
  final List<GetVpcIpamPoolFilter>? filters;
  /// ID of the IPAM pool.
  final String? id;
  final String? ipamPoolId;
  /// ID of the scope the pool belongs to.
  final String? ipamScopeId;
  final String? ipamScopeType;
  /// Locale is the Region where your pool is available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region.
  final String? locale;
  final int? poolDepth;
  /// Defines whether or not IPv6 pool space is publicly advertisable over the internet.
  final bool? publiclyAdvertisable;
  final String? region;
  /// ID of the source IPAM pool.
  final String? sourceIpamPoolId;
  /// Resource used to create the resource planning pool.
  final List<GetVpcIpamPoolSourceResource>? sourceResources;
  final String? state;
  /// Map of tags to assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetVpcIpamPoolResult].
  /// [addressFamily] IP protocol assigned to this pool.
  /// [allocationDefaultNetmaskLength] A default netmask length for allocations added to this pool. If, for example, the CIDR assigned to this pool is `10.0.0.0/8` and you enter 16 here, new allocations will default to `10.0.0.0/16`.
  /// [allocationMaxNetmaskLength] The maximum netmask length that will be required for CIDR allocations in this pool.
  /// [allocationMinNetmaskLength] The minimum netmask length that will be required for CIDR allocations in this pool.
  /// [allocationResourceTags] Tags that are required to create resources in using this pool.
  /// [arn] ARN of the pool
  /// [autoImport] If enabled, IPAM will continuously look for resources within the CIDR range of this pool and automatically import them as allocations into your IPAM.
  /// [awsService] Limits which service in AWS that the pool can be used in. `ec2` for example, allows users to use space for Elastic IP addresses and VPCs.
  /// [description] Description for the IPAM pool.
  /// [filters] Optional.
  /// [id] ID of the IPAM pool.
  /// [ipamPoolId] Optional.
  /// [ipamScopeId] ID of the scope the pool belongs to.
  /// [ipamScopeType] Optional.
  /// [locale] Locale is the Region where your pool is available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region.
  /// [poolDepth] Optional.
  /// [publiclyAdvertisable] Defines whether or not IPv6 pool space is publicly advertisable over the internet.
  /// [region] Optional.
  /// [sourceIpamPoolId] ID of the source IPAM pool.
  /// [sourceResources] Resource used to create the resource planning pool.
  /// [state] Optional.
  /// [tags] Map of tags to assigned to the resource.
  const GetVpcIpamPoolResult({
    this.addressFamily,
    this.allocationDefaultNetmaskLength,
    this.allocationMaxNetmaskLength,
    this.allocationMinNetmaskLength,
    this.allocationResourceTags,
    this.arn,
    this.autoImport,
    this.awsService,
    this.description,
    this.filters,
    this.id,
    this.ipamPoolId,
    this.ipamScopeId,
    this.ipamScopeType,
    this.locale,
    this.poolDepth,
    this.publiclyAdvertisable,
    this.region,
    this.sourceIpamPoolId,
    this.sourceResources,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': ?addressFamily,
      'allocationDefaultNetmaskLength': ?allocationDefaultNetmaskLength,
      'allocationMaxNetmaskLength': ?allocationMaxNetmaskLength,
      'allocationMinNetmaskLength': ?allocationMinNetmaskLength,
      'allocationResourceTags': ?allocationResourceTags,
      'arn': ?arn,
      'autoImport': ?autoImport,
      'awsService': ?awsService,
      'description': ?description,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcIpamPoolFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ipamPoolId': ?ipamPoolId,
      'ipamScopeId': ?ipamScopeId,
      'ipamScopeType': ?ipamScopeType,
      'locale': ?locale,
      'poolDepth': ?poolDepth,
      'publiclyAdvertisable': ?publiclyAdvertisable,
      'region': ?region,
      'sourceIpamPoolId': ?sourceIpamPoolId,
      'sourceResources': ?(() { final guardedValue = sourceResources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcIpamPoolSourceResource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory GetVpcIpamPoolResult.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolResult(
      addressFamily: (() { final guardedValue = map['addressFamily']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allocationDefaultNetmaskLength: (() { final guardedValue = map['allocationDefaultNetmaskLength']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      allocationMaxNetmaskLength: (() { final guardedValue = map['allocationMaxNetmaskLength']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      allocationMinNetmaskLength: (() { final guardedValue = map['allocationMinNetmaskLength']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      allocationResourceTags: (() { final guardedValue = map['allocationResourceTags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoImport: (() { final guardedValue = map['autoImport']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      awsService: (() { final guardedValue = map['awsService']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcIpamPoolFilter>(guardedValue, (value) => GetVpcIpamPoolFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipamPoolId: (() { final guardedValue = map['ipamPoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipamScopeId: (() { final guardedValue = map['ipamScopeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipamScopeType: (() { final guardedValue = map['ipamScopeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locale: (() { final guardedValue = map['locale']; if (guardedValue == null) return null; return guardedValue as String; })(),
      poolDepth: (() { final guardedValue = map['poolDepth']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      publiclyAdvertisable: (() { final guardedValue = map['publiclyAdvertisable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceIpamPoolId: (() { final guardedValue = map['sourceIpamPoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceResources: (() { final guardedValue = map['sourceResources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcIpamPoolSourceResource>(guardedValue, (value) => GetVpcIpamPoolSourceResource.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

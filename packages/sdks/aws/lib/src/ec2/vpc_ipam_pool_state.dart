// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipam_pool_source_resource.dart';

/// Input properties used for looking up and filtering VpcIpamPool resources.
class VpcIpamPoolState {
  /// The IP protocol assigned to this pool. You must choose either IPv4 or IPv6 protocol for a pool.
  final pulumi.Input<String>? addressFamily;
  /// A default netmask length for allocations added to this pool. If, for example, the CIDR assigned to this pool is 10.0.0.0/8 and you enter 16 here, new allocations will default to 10.0.0.0/16 (unless you provide a different netmask value when you create the new allocation).
  final pulumi.Input<int>? allocationDefaultNetmaskLength;
  /// The maximum netmask length that will be required for CIDR allocations in this pool.
  final pulumi.Input<int>? allocationMaxNetmaskLength;
  /// The minimum netmask length that will be required for CIDR allocations in this pool.
  final pulumi.Input<int>? allocationMinNetmaskLength;
  /// Tags that are required for resources that use CIDRs from this IPAM pool. Resources that do not have these tags will not be allowed to allocate space from the pool. If the resources have their tags changed after they have allocated space or if the allocation tagging requirements are changed on the pool, the resource may be marked as noncompliant.
  final pulumi.Input<Map<String, String>>? allocationResourceTags;
  /// Amazon Resource Name (ARN) of IPAM
  final pulumi.Input<String>? arn;
  /// If you include this argument, IPAM automatically imports any VPCs you have in your scope that fall
  /// within the CIDR range in the pool.
  final pulumi.Input<bool>? autoImport;
  /// Limits which AWS service the pool can be used in. Only useable on public scopes. Valid Values: `ec2`.
  final pulumi.Input<String>? awsService;
  /// Enables you to quickly delete an IPAM pool and all resources within that pool, including provisioned CIDRs, allocations, and other pools.
  final pulumi.Input<bool>? cascade;
  /// A description for the IPAM pool.
  final pulumi.Input<String>? description;
  /// The ID of the scope in which you would like to create the IPAM pool.
  final pulumi.Input<String>? ipamScopeId;
  final pulumi.Input<String>? ipamScopeType;
  /// The locale in which you would like to create the IPAM pool. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region. Possible values: Any AWS region, such as `us-east-1`.
  final pulumi.Input<String>? locale;
  final pulumi.Input<int>? poolDepth;
  /// The IP address source for pools in the public scope. Only used for provisioning IP address CIDRs to pools in the public scope. Valid values are `byoip` or `amazon`. Default is `byoip`.
  final pulumi.Input<String>? publicIpSource;
  /// Defines whether or not IPv6 pool space is publicly advertisable over the internet. This argument is required if `address_family = "ipv6"` and `public_ip_source = "byoip"`, default is `false`. This option is not available for IPv4 pool space or if `public_ip_source = "amazon"`. Setting this argument to `true` when it is not available may result in erroneous differences being reported.
  final pulumi.Input<bool>? publiclyAdvertisable;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the source IPAM pool. Use this argument to create a child pool within an existing pool.
  final pulumi.Input<String>? sourceIpamPoolId;
  /// Resource to use to use to configure a resource planning IPAM Pool. If configured, the `locale` of the parent pool must match the region that the vpc resides in.
  final pulumi.Input<VpcIpamPoolSourceResource>? sourceResource;
  /// The ID of the IPAM
  final pulumi.Input<String>? state;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [VpcIpamPoolState].
  /// [addressFamily] The IP protocol assigned to this pool. You must choose either IPv4 or IPv6 protocol for a pool.
  /// [allocationDefaultNetmaskLength] A default netmask length for allocations added to this pool. If, for example, the CIDR assigned to this pool is 10.0.0.0/8 and you enter 16 here, new allocations will default to 10.0.0.0/16 (unless you provide a different netmask value when you create the new allocation).
  /// [allocationMaxNetmaskLength] The maximum netmask length that will be required for CIDR allocations in this pool.
  /// [allocationMinNetmaskLength] The minimum netmask length that will be required for CIDR allocations in this pool.
  /// [allocationResourceTags] Tags that are required for resources that use CIDRs from this IPAM pool. Resources that do not have these tags will not be allowed to allocate space from the pool. If the resources have their tags changed after they have allocated space or if the allocation tagging requirements are changed on the pool, the resource may be marked as noncompliant.
  /// [arn] Amazon Resource Name (ARN) of IPAM
  /// [autoImport] If you include this argument, IPAM automatically imports any VPCs you have in your scope that fall
  /// [awsService] Limits which AWS service the pool can be used in. Only useable on public scopes. Valid Values: `ec2`.
  /// [cascade] Enables you to quickly delete an IPAM pool and all resources within that pool, including provisioned CIDRs, allocations, and other pools.
  /// [description] A description for the IPAM pool.
  /// [ipamScopeId] The ID of the scope in which you would like to create the IPAM pool.
  /// [ipamScopeType] Optional.
  /// [locale] The locale in which you would like to create the IPAM pool. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region. Possible values: Any AWS region, such as `us-east-1`.
  /// [poolDepth] Optional.
  /// [publicIpSource] The IP address source for pools in the public scope. Only used for provisioning IP address CIDRs to pools in the public scope. Valid values are `byoip` or `amazon`. Default is `byoip`.
  /// [publiclyAdvertisable] Defines whether or not IPv6 pool space is publicly advertisable over the internet. This argument is required if `address_family = "ipv6"` and `public_ip_source = "byoip"`, default is `false`. This option is not available for IPv4 pool space or if `public_ip_source = "amazon"`. Setting this argument to `true` when it is not available may result in erroneous differences being reported.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceIpamPoolId] The ID of the source IPAM pool. Use this argument to create a child pool within an existing pool.
  /// [sourceResource] Resource to use to use to configure a resource planning IPAM Pool. If configured, the `locale` of the parent pool must match the region that the vpc resides in.
  /// [state] The ID of the IPAM
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  VpcIpamPoolState({
    this.addressFamily,
    this.allocationDefaultNetmaskLength,
    this.allocationMaxNetmaskLength,
    this.allocationMinNetmaskLength,
    this.allocationResourceTags,
    this.arn,
    this.autoImport,
    this.awsService,
    this.cascade,
    this.description,
    this.ipamScopeId,
    this.ipamScopeType,
    this.locale,
    this.poolDepth,
    this.publicIpSource,
    this.publiclyAdvertisable,
    this.region,
    this.sourceIpamPoolId,
    this.sourceResource,
    this.state,
    this.tags,
    this.tagsAll,
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
      'cascade': ?cascade,
      'description': ?description,
      'ipamScopeId': ?ipamScopeId,
      'ipamScopeType': ?ipamScopeType,
      'locale': ?locale,
      'poolDepth': ?poolDepth,
      'publicIpSource': ?publicIpSource,
      'publiclyAdvertisable': ?publiclyAdvertisable,
      'region': ?region,
      'sourceIpamPoolId': ?sourceIpamPoolId,
      'sourceResource': ?pulumi.Input.mapOptionalInputValue<VpcIpamPoolSourceResource, Map<String, dynamic>>(sourceResource, (value) => value.toMap()),
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory VpcIpamPoolState.fromMap(Map<String, dynamic> map) {
    return VpcIpamPoolState(
      addressFamily: map['addressFamily'] == null ? null : (map['addressFamily'] as String).input(),
      allocationDefaultNetmaskLength: map['allocationDefaultNetmaskLength'] == null ? null : (map['allocationDefaultNetmaskLength'] as int).input(),
      allocationMaxNetmaskLength: map['allocationMaxNetmaskLength'] == null ? null : (map['allocationMaxNetmaskLength'] as int).input(),
      allocationMinNetmaskLength: map['allocationMinNetmaskLength'] == null ? null : (map['allocationMinNetmaskLength'] as int).input(),
      allocationResourceTags: map['allocationResourceTags'] == null ? null : ((map['allocationResourceTags'] as Map).cast<String, String>()).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      autoImport: map['autoImport'] == null ? null : (map['autoImport'] as bool).input(),
      awsService: map['awsService'] == null ? null : (map['awsService'] as String).input(),
      cascade: map['cascade'] == null ? null : (map['cascade'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      ipamScopeId: map['ipamScopeId'] == null ? null : (map['ipamScopeId'] as String).input(),
      ipamScopeType: map['ipamScopeType'] == null ? null : (map['ipamScopeType'] as String).input(),
      locale: map['locale'] == null ? null : (map['locale'] as String).input(),
      poolDepth: map['poolDepth'] == null ? null : (map['poolDepth'] as int).input(),
      publicIpSource: map['publicIpSource'] == null ? null : (map['publicIpSource'] as String).input(),
      publiclyAdvertisable: map['publiclyAdvertisable'] == null ? null : (map['publiclyAdvertisable'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sourceIpamPoolId: map['sourceIpamPoolId'] == null ? null : (map['sourceIpamPoolId'] as String).input(),
      sourceResource: map['sourceResource'] == null ? null : (VpcIpamPoolSourceResource.fromMap((map['sourceResource'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}


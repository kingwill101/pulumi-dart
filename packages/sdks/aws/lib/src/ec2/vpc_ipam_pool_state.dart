// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipam_pool_source_resource.dart';

/// Input properties used for looking up and filtering VpcIpamPool resources.
class VpcIpamPoolState {
  /// IP protocol assigned to this pool. You must choose either IPv4 or IPv6 protocol for a pool.
  final pulumi.Input<String?>? addressFamily;
  /// Default netmask length for allocations added to this pool. If, for example, the CIDR assigned to this pool is 10.0.0.0/8 and you enter 16 here, new allocations will default to 10.0.0.0/16 (unless you provide a different netmask value when you create the new allocation).
  final pulumi.Input<int?>? allocationDefaultNetmaskLength;
  /// Maximum netmask length that will be required for CIDR allocations in this pool.
  final pulumi.Input<int?>? allocationMaxNetmaskLength;
  /// Minimum netmask length that will be required for CIDR allocations in this pool.
  final pulumi.Input<int?>? allocationMinNetmaskLength;
  /// Tags that are required for resources that use CIDRs from this IPAM pool. Resources that do not have these tags will not be allowed to allocate space from the pool. If the resources have their tags changed after they have allocated space or if the allocation tagging requirements are changed on the pool, the resource may be marked as noncompliant.
  final pulumi.Input<Map<String, String>?>? allocationResourceTags;
  /// ARN of IPAM
  final pulumi.Input<String?>? arn;
  /// Whether to automatically import any VPCs you have in your scope that fall within the CIDR range in the pool.
  final pulumi.Input<bool?>? autoImport;
  /// Limits which AWS service the pool can be used in. Only useable on public scopes. Valid Values: `ec2`.
  final pulumi.Input<String?>? awsService;
  /// Whether to quickly delete an IPAM pool and all resources within that pool, including provisioned CIDRs, allocations, and other pools.
  final pulumi.Input<bool?>? cascade;
  /// Description for the IPAM pool.
  final pulumi.Input<String?>? description;
  /// ID of the scope in which you would like to create the IPAM pool.
  final pulumi.Input<String?>? ipamScopeId;
  /// Type of the scope the pool belongs to.
  final pulumi.Input<String?>? ipamScopeType;
  /// Locale in which you would like to create the IPAM pool. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region. Possible values: Any AWS region, such as `us-east-1`.
  final pulumi.Input<String?>? locale;
  /// Depth of pools in your IPAM pool.
  final pulumi.Input<int?>? poolDepth;
  /// IP address source for pools in the public scope. Only used for provisioning IP address CIDRs to pools in the public scope. Valid values are `byoip` or `amazon`. Default is `byoip`.
  final pulumi.Input<String?>? publicIpSource;
  /// Whether IPv6 pool space is publicly advertisable over the internet. This argument is required if `addressFamily = "ipv6"` and `publicIpSource = "byoip"`, default is `false`. This option is not available for IPv4 pool space or if `publicIpSource = "amazon"`. Setting this argument to `true` when it is not available may result in erroneous differences being reported.
  final pulumi.Input<bool?>? publiclyAdvertisable;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the source IPAM pool. Use this argument to create a child pool within an existing pool.
  final pulumi.Input<String?>? sourceIpamPoolId;
  /// Resource to use to use to configure a resource planning IPAM Pool. If configured, the `locale` of the parent pool must match the region that the vpc resides in.
  final pulumi.Input<VpcIpamPoolSourceResource?>? sourceResource;
  /// State of the IPAM pool.
  final pulumi.Input<String?>? state;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [VpcIpamPoolState].
  /// [addressFamily] IP protocol assigned to this pool. You must choose either IPv4 or IPv6 protocol for a pool.
  /// [allocationDefaultNetmaskLength] Default netmask length for allocations added to this pool. If, for example, the CIDR assigned to this pool is 10.0.0.0/8 and you enter 16 here, new allocations will default to 10.0.0.0/16 (unless you provide a different netmask value when you create the new allocation).
  /// [allocationMaxNetmaskLength] Maximum netmask length that will be required for CIDR allocations in this pool.
  /// [allocationMinNetmaskLength] Minimum netmask length that will be required for CIDR allocations in this pool.
  /// [allocationResourceTags] Tags that are required for resources that use CIDRs from this IPAM pool. Resources that do not have these tags will not be allowed to allocate space from the pool. If the resources have their tags changed after they have allocated space or if the allocation tagging requirements are changed on the pool, the resource may be marked as noncompliant.
  /// [arn] ARN of IPAM
  /// [autoImport] Whether to automatically import any VPCs you have in your scope that fall within the CIDR range in the pool.
  /// [awsService] Limits which AWS service the pool can be used in. Only useable on public scopes. Valid Values: `ec2`.
  /// [cascade] Whether to quickly delete an IPAM pool and all resources within that pool, including provisioned CIDRs, allocations, and other pools.
  /// [description] Description for the IPAM pool.
  /// [ipamScopeId] ID of the scope in which you would like to create the IPAM pool.
  /// [ipamScopeType] Type of the scope the pool belongs to.
  /// [locale] Locale in which you would like to create the IPAM pool. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region. Possible values: Any AWS region, such as `us-east-1`.
  /// [poolDepth] Depth of pools in your IPAM pool.
  /// [publicIpSource] IP address source for pools in the public scope. Only used for provisioning IP address CIDRs to pools in the public scope. Valid values are `byoip` or `amazon`. Default is `byoip`.
  /// [publiclyAdvertisable] Whether IPv6 pool space is publicly advertisable over the internet. This argument is required if `addressFamily = "ipv6"` and `publicIpSource = "byoip"`, default is `false`. This option is not available for IPv4 pool space or if `publicIpSource = "amazon"`. Setting this argument to `true` when it is not available may result in erroneous differences being reported.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceIpamPoolId] ID of the source IPAM pool. Use this argument to create a child pool within an existing pool.
  /// [sourceResource] Resource to use to use to configure a resource planning IPAM Pool. If configured, the `locale` of the parent pool must match the region that the vpc resides in.
  /// [state] State of the IPAM pool.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const VpcIpamPoolState({
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
      addressFamily: (() { final guardedValue = map['addressFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allocationDefaultNetmaskLength: (() { final guardedValue = map['allocationDefaultNetmaskLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      allocationMaxNetmaskLength: (() { final guardedValue = map['allocationMaxNetmaskLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      allocationMinNetmaskLength: (() { final guardedValue = map['allocationMinNetmaskLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      allocationResourceTags: (() { final guardedValue = map['allocationResourceTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoImport: (() { final guardedValue = map['autoImport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      awsService: (() { final guardedValue = map['awsService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cascade: (() { final guardedValue = map['cascade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipamScopeId: (() { final guardedValue = map['ipamScopeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipamScopeType: (() { final guardedValue = map['ipamScopeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locale: (() { final guardedValue = map['locale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolDepth: (() { final guardedValue = map['poolDepth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      publicIpSource: (() { final guardedValue = map['publicIpSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publiclyAdvertisable: (() { final guardedValue = map['publiclyAdvertisable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceIpamPoolId: (() { final guardedValue = map['sourceIpamPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceResource: (() { final guardedValue = map['sourceResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcIpamPoolSourceResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

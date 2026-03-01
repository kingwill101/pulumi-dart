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
    pulumi.Output<String>? addressFamily,
    pulumi.Output<int>? allocationDefaultNetmaskLength,
    pulumi.Output<int>? allocationMaxNetmaskLength,
    pulumi.Output<int>? allocationMinNetmaskLength,
    pulumi.Output<Map<String, String>>? allocationResourceTags,
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? autoImport,
    pulumi.Output<String>? awsService,
    pulumi.Output<bool>? cascade,
    pulumi.Output<String>? description,
    pulumi.Output<String>? ipamScopeId,
    pulumi.Output<String>? ipamScopeType,
    pulumi.Output<String>? locale,
    pulumi.Output<int>? poolDepth,
    pulumi.Output<String>? publicIpSource,
    pulumi.Output<bool>? publiclyAdvertisable,
    pulumi.Output<String>? region,
    pulumi.Output<String>? sourceIpamPoolId,
    pulumi.Output<VpcIpamPoolSourceResource>? sourceResource,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      addressFamily = pulumi.Input.asOptionalInput<String>(addressFamily),
      allocationDefaultNetmaskLength = pulumi.Input.asOptionalInput<int>(allocationDefaultNetmaskLength),
      allocationMaxNetmaskLength = pulumi.Input.asOptionalInput<int>(allocationMaxNetmaskLength),
      allocationMinNetmaskLength = pulumi.Input.asOptionalInput<int>(allocationMinNetmaskLength),
      allocationResourceTags = pulumi.Input.asOptionalInput<Map<String, String>>(allocationResourceTags),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      autoImport = pulumi.Input.asOptionalInput<bool>(autoImport),
      awsService = pulumi.Input.asOptionalInput<String>(awsService),
      cascade = pulumi.Input.asOptionalInput<bool>(cascade),
      description = pulumi.Input.asOptionalInput<String>(description),
      ipamScopeId = pulumi.Input.asOptionalInput<String>(ipamScopeId),
      ipamScopeType = pulumi.Input.asOptionalInput<String>(ipamScopeType),
      locale = pulumi.Input.asOptionalInput<String>(locale),
      poolDepth = pulumi.Input.asOptionalInput<int>(poolDepth),
      publicIpSource = pulumi.Input.asOptionalInput<String>(publicIpSource),
      publiclyAdvertisable = pulumi.Input.asOptionalInput<bool>(publiclyAdvertisable),
      region = pulumi.Input.asOptionalInput<String>(region),
      sourceIpamPoolId = pulumi.Input.asOptionalInput<String>(sourceIpamPoolId),
      sourceResource = pulumi.Input.asOptionalInput<VpcIpamPoolSourceResource>(sourceResource),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      addressFamily: map['addressFamily'] == null ? null : pulumi.Output.create<String>(map['addressFamily'] as String),
      allocationDefaultNetmaskLength: map['allocationDefaultNetmaskLength'] == null ? null : pulumi.Output.create<int>(map['allocationDefaultNetmaskLength'] as int),
      allocationMaxNetmaskLength: map['allocationMaxNetmaskLength'] == null ? null : pulumi.Output.create<int>(map['allocationMaxNetmaskLength'] as int),
      allocationMinNetmaskLength: map['allocationMinNetmaskLength'] == null ? null : pulumi.Output.create<int>(map['allocationMinNetmaskLength'] as int),
      allocationResourceTags: map['allocationResourceTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['allocationResourceTags'] as Map).cast<String, String>()),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autoImport: map['autoImport'] == null ? null : pulumi.Output.create<bool>(map['autoImport'] as bool),
      awsService: map['awsService'] == null ? null : pulumi.Output.create<String>(map['awsService'] as String),
      cascade: map['cascade'] == null ? null : pulumi.Output.create<bool>(map['cascade'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ipamScopeId: map['ipamScopeId'] == null ? null : pulumi.Output.create<String>(map['ipamScopeId'] as String),
      ipamScopeType: map['ipamScopeType'] == null ? null : pulumi.Output.create<String>(map['ipamScopeType'] as String),
      locale: map['locale'] == null ? null : pulumi.Output.create<String>(map['locale'] as String),
      poolDepth: map['poolDepth'] == null ? null : pulumi.Output.create<int>(map['poolDepth'] as int),
      publicIpSource: map['publicIpSource'] == null ? null : pulumi.Output.create<String>(map['publicIpSource'] as String),
      publiclyAdvertisable: map['publiclyAdvertisable'] == null ? null : pulumi.Output.create<bool>(map['publiclyAdvertisable'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sourceIpamPoolId: map['sourceIpamPoolId'] == null ? null : pulumi.Output.create<String>(map['sourceIpamPoolId'] as String),
      sourceResource: map['sourceResource'] == null ? null : pulumi.Output.create<VpcIpamPoolSourceResource>(VpcIpamPoolSourceResource.fromMap((map['sourceResource'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}


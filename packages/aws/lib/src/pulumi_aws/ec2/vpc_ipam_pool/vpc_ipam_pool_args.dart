// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vpc_ipam_pool_source_resource/vpc_ipam_pool_source_resource.dart';

/// The set of arguments for VpcIpamPool.
class VpcIpamPoolArgs {
  /// The IP protocol assigned to this pool. You must choose either IPv4 or IPv6 protocol for a pool.
  final Input<String> addressFamily;

  /// A default netmask length for allocations added to this pool. If, for example, the CIDR assigned to this pool is 10.0.0.0/8 and you enter 16 here, new allocations will default to 10.0.0.0/16 (unless you provide a different netmask value when you create the new allocation).
  final Input<int>? allocationDefaultNetmaskLength;

  /// The maximum netmask length that will be required for CIDR allocations in this pool.
  final Input<int>? allocationMaxNetmaskLength;

  /// The minimum netmask length that will be required for CIDR allocations in this pool.
  final Input<int>? allocationMinNetmaskLength;

  /// Tags that are required for resources that use CIDRs from this IPAM pool. Resources that do not have these tags will not be allowed to allocate space from the pool. If the resources have their tags changed after they have allocated space or if the allocation tagging requirements are changed on the pool, the resource may be marked as noncompliant.
  final Input<Map<String, String>>? allocationResourceTags;

  /// If you include this argument, IPAM automatically imports any VPCs you have in your scope that fall
  /// within the CIDR range in the pool.
  final Input<bool>? autoImport;

  /// Limits which AWS service the pool can be used in. Only useable on public scopes. Valid Values: `ec2`.
  final Input<String>? awsService;

  /// Enables you to quickly delete an IPAM pool and all resources within that pool, including provisioned CIDRs, allocations, and other pools.
  final Input<bool>? cascade;

  /// A description for the IPAM pool.
  final Input<String>? description;

  /// The ID of the scope in which you would like to create the IPAM pool.
  final Input<String> ipamScopeId;

  /// The locale in which you would like to create the IPAM pool. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region. Possible values: Any AWS region, such as `us-east-1`.
  final Input<String>? locale;

  /// The IP address source for pools in the public scope. Only used for provisioning IP address CIDRs to pools in the public scope. Valid values are `byoip` or `amazon`. Default is `byoip`.
  final Input<String>? publicIpSource;

  /// Defines whether or not IPv6 pool space is publicly advertisable over the internet. This argument is required if `address_family = "ipv6"` and `public_ip_source = "byoip"`, default is `false`. This option is not available for IPv4 pool space or if `public_ip_source = "amazon"`. Setting this argument to `true` when it is not available may result in erroneous differences being reported.
  final Input<bool>? publiclyAdvertisable;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the source IPAM pool. Use this argument to create a child pool within an existing pool.
  final Input<String>? sourceIpamPoolId;

  /// Resource to use to use to configure a resource planning IPAM Pool. If configured, the `locale` of the parent pool must match the region that the vpc resides in.
  final Input<VpcIpamPoolSourceResource>? sourceResource;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  VpcIpamPoolArgs({
    required this.addressFamily,
    this.allocationDefaultNetmaskLength,
    this.allocationMaxNetmaskLength,
    this.allocationMinNetmaskLength,
    this.allocationResourceTags,
    this.autoImport,
    this.awsService,
    this.cascade,
    this.description,
    required this.ipamScopeId,
    this.locale,
    this.publicIpSource,
    this.publiclyAdvertisable,
    this.region,
    this.sourceIpamPoolId,
    this.sourceResource,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressFamily'] = addressFamily;
    final allocationDefaultNetmaskLengthValue = allocationDefaultNetmaskLength;
    if (allocationDefaultNetmaskLengthValue != null) {
      map['allocationDefaultNetmaskLength'] =
          allocationDefaultNetmaskLengthValue;
    }
    final allocationMaxNetmaskLengthValue = allocationMaxNetmaskLength;
    if (allocationMaxNetmaskLengthValue != null) {
      map['allocationMaxNetmaskLength'] = allocationMaxNetmaskLengthValue;
    }
    final allocationMinNetmaskLengthValue = allocationMinNetmaskLength;
    if (allocationMinNetmaskLengthValue != null) {
      map['allocationMinNetmaskLength'] = allocationMinNetmaskLengthValue;
    }
    final allocationResourceTagsValue = allocationResourceTags;
    if (allocationResourceTagsValue != null) {
      map['allocationResourceTags'] = allocationResourceTagsValue;
    }
    final autoImportValue = autoImport;
    if (autoImportValue != null) {
      map['autoImport'] = autoImportValue;
    }
    final awsServiceValue = awsService;
    if (awsServiceValue != null) {
      map['awsService'] = awsServiceValue;
    }
    final cascadeValue = cascade;
    if (cascadeValue != null) {
      map['cascade'] = cascadeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['ipamScopeId'] = ipamScopeId;
    final localeValue = locale;
    if (localeValue != null) {
      map['locale'] = localeValue;
    }
    final publicIpSourceValue = publicIpSource;
    if (publicIpSourceValue != null) {
      map['publicIpSource'] = publicIpSourceValue;
    }
    final publiclyAdvertisableValue = publiclyAdvertisable;
    if (publiclyAdvertisableValue != null) {
      map['publiclyAdvertisable'] = publiclyAdvertisableValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sourceIpamPoolIdValue = sourceIpamPoolId;
    if (sourceIpamPoolIdValue != null) {
      map['sourceIpamPoolId'] = sourceIpamPoolIdValue;
    }
    final sourceResourceValue = sourceResource;
    if (sourceResourceValue != null) {
      map['sourceResource'] = Input.mapOptionalInputValue<
          VpcIpamPoolSourceResource,
          Map<String, dynamic>>(sourceResourceValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory VpcIpamPoolArgs.fromMap(Map<String, dynamic> map) {
    return VpcIpamPoolArgs(
      addressFamily: Input.asInput<String>(map['addressFamily']),
      allocationDefaultNetmaskLength:
          Input.asOptionalInput<int>(map['allocationDefaultNetmaskLength']),
      allocationMaxNetmaskLength:
          Input.asOptionalInput<int>(map['allocationMaxNetmaskLength']),
      allocationMinNetmaskLength:
          Input.asOptionalInput<int>(map['allocationMinNetmaskLength']),
      allocationResourceTags: Input.asOptionalInput<Map<String, String>>(
          map['allocationResourceTags']),
      autoImport: Input.asOptionalInput<bool>(map['autoImport']),
      awsService: Input.asOptionalInput<String>(map['awsService']),
      cascade: Input.asOptionalInput<bool>(map['cascade']),
      description: Input.asOptionalInput<String>(map['description']),
      ipamScopeId: Input.asInput<String>(map['ipamScopeId']),
      locale: Input.asOptionalInput<String>(map['locale']),
      publicIpSource: Input.asOptionalInput<String>(map['publicIpSource']),
      publiclyAdvertisable:
          Input.asOptionalInput<bool>(map['publiclyAdvertisable']),
      region: Input.asOptionalInput<String>(map['region']),
      sourceIpamPoolId: Input.asOptionalInput<String>(map['sourceIpamPoolId']),
      sourceResource: Input.asOptionalInput<VpcIpamPoolSourceResource>(
          map['sourceResource']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class GetVpcIpamPoolsIpamPool {
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

  /// ID of the IPAM pool.
  final String id;

  /// ID of the scope the pool belongs to.
  final String ipamScopeId;
  final String ipamScopeType;

  /// Locale is the Region where your pool is available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region.
  final String locale;
  final int poolDepth;

  /// Defines whether or not IPv6 pool space is publicly advertisable over the internet.
  final bool publiclyAdvertisable;

  /// ID of the source IPAM pool.
  final String sourceIpamPoolId;
  final String state;

  /// Map of tags to assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetVpcIpamPoolsIpamPool].
  /// [addressFamily] IP protocol assigned to this pool.
  /// [allocationDefaultNetmaskLength] A default netmask length for allocations added to this pool. If, for example, the CIDR assigned to this pool is `10.0.0.0/8` and you enter 16 here, new allocations will default to `10.0.0.0/16`.
  /// [allocationMaxNetmaskLength] The maximum netmask length that will be required for CIDR allocations in this pool.
  /// [allocationMinNetmaskLength] The minimum netmask length that will be required for CIDR allocations in this pool.
  /// [allocationResourceTags] Tags that are required to create resources in using this pool.
  /// [arn] ARN of the pool
  /// [autoImport] If enabled, IPAM will continuously look for resources within the CIDR range of this pool and automatically import them as allocations into your IPAM.
  /// [awsService] Limits which service in AWS that the pool can be used in. `ec2` for example, allows users to use space for Elastic IP addresses and VPCs.
  /// [description] Description for the IPAM pool.
  /// [id] ID of the IPAM pool.
  /// [ipamScopeId] ID of the scope the pool belongs to.
  /// [ipamScopeType] Required.
  /// [locale] Locale is the Region where your pool is available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region.
  /// [poolDepth] Required.
  /// [publiclyAdvertisable] Defines whether or not IPv6 pool space is publicly advertisable over the internet.
  /// [sourceIpamPoolId] ID of the source IPAM pool.
  /// [state] Required.
  /// [tags] Map of tags to assigned to the resource.
  GetVpcIpamPoolsIpamPool({
    required this.addressFamily,
    required this.allocationDefaultNetmaskLength,
    required this.allocationMaxNetmaskLength,
    required this.allocationMinNetmaskLength,
    required this.allocationResourceTags,
    required this.arn,
    required this.autoImport,
    required this.awsService,
    required this.description,
    required this.id,
    required this.ipamScopeId,
    required this.ipamScopeType,
    required this.locale,
    required this.poolDepth,
    required this.publiclyAdvertisable,
    required this.sourceIpamPoolId,
    required this.state,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': addressFamily,
      'allocationDefaultNetmaskLength': allocationDefaultNetmaskLength,
      'allocationMaxNetmaskLength': allocationMaxNetmaskLength,
      'allocationMinNetmaskLength': allocationMinNetmaskLength,
      'allocationResourceTags': allocationResourceTags,
      'arn': arn,
      'autoImport': autoImport,
      'awsService': awsService,
      'description': description,
      'id': id,
      'ipamScopeId': ipamScopeId,
      'ipamScopeType': ipamScopeType,
      'locale': locale,
      'poolDepth': poolDepth,
      'publiclyAdvertisable': publiclyAdvertisable,
      'sourceIpamPoolId': sourceIpamPoolId,
      'state': state,
      'tags': tags,
    };
  }

  factory GetVpcIpamPoolsIpamPool.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolsIpamPool(
      addressFamily: map['addressFamily'] as String,
      allocationDefaultNetmaskLength:
          map['allocationDefaultNetmaskLength'] as int,
      allocationMaxNetmaskLength: map['allocationMaxNetmaskLength'] as int,
      allocationMinNetmaskLength: map['allocationMinNetmaskLength'] as int,
      allocationResourceTags: (map['allocationResourceTags'] as Map)
          .cast<String, String>(),
      arn: map['arn'] as String,
      autoImport: map['autoImport'] as bool,
      awsService: map['awsService'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      ipamScopeId: map['ipamScopeId'] as String,
      ipamScopeType: map['ipamScopeType'] as String,
      locale: map['locale'] as String,
      poolDepth: map['poolDepth'] as int,
      publiclyAdvertisable: map['publiclyAdvertisable'] as bool,
      sourceIpamPoolId: map['sourceIpamPoolId'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

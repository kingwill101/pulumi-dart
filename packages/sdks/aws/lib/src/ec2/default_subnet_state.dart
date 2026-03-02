// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DefaultSubnet resources.
class DefaultSubnetState {
  final pulumi.Input<String>? arn;
  final pulumi.Input<bool>? assignIpv6AddressOnCreation;
  /// is required
  /// * The `availability_zone_id`, `cidr_block` and `vpc_id` arguments become computed attributes
  /// * The default value for `map_public_ip_on_launch` is `true`
  ///
  /// This resource supports the following additional arguments:
  final pulumi.Input<String>? availabilityZone;
  /// The AZ ID of the subnet
  final pulumi.Input<String>? availabilityZoneId;
  /// The IPv4 CIDR block assigned to the subnet
  final pulumi.Input<String>? cidrBlock;
  final pulumi.Input<String>? customerOwnedIpv4Pool;
  final pulumi.Input<bool>? enableDns64;
  final pulumi.Input<int>? enableLniAtDeviceIndex;
  final pulumi.Input<bool>? enableResourceNameDnsARecordOnLaunch;
  final pulumi.Input<bool>? enableResourceNameDnsAaaaRecordOnLaunch;
  final pulumi.Input<bool>? existingDefaultSubnet;
  /// Whether destroying the resource deletes the default subnet. Default: `false`
  final pulumi.Input<bool>? forceDestroy;
  final pulumi.Input<String>? ipv6CidrBlock;
  final pulumi.Input<String>? ipv6CidrBlockAssociationId;
  final pulumi.Input<bool>? ipv6Native;
  final pulumi.Input<bool>? mapCustomerOwnedIpOnLaunch;
  final pulumi.Input<bool>? mapPublicIpOnLaunch;
  final pulumi.Input<String>? outpostArn;
  final pulumi.Input<String>? ownerId;
  final pulumi.Input<String>? privateDnsHostnameTypeOnLaunch;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The ID of the VPC the subnet is in
  final pulumi.Input<String>? vpcId;

  /// Creates a new [DefaultSubnetState].
  /// [arn] Optional.
  /// [assignIpv6AddressOnCreation] Optional.
  /// [availabilityZone] is required
  /// [availabilityZoneId] The AZ ID of the subnet
  /// [cidrBlock] The IPv4 CIDR block assigned to the subnet
  /// [customerOwnedIpv4Pool] Optional.
  /// [enableDns64] Optional.
  /// [enableLniAtDeviceIndex] Optional.
  /// [enableResourceNameDnsARecordOnLaunch] Optional.
  /// [enableResourceNameDnsAaaaRecordOnLaunch] Optional.
  /// [existingDefaultSubnet] Optional.
  /// [forceDestroy] Whether destroying the resource deletes the default subnet. Default: `false`
  /// [ipv6CidrBlock] Optional.
  /// [ipv6CidrBlockAssociationId] Optional.
  /// [ipv6Native] Optional.
  /// [mapCustomerOwnedIpOnLaunch] Optional.
  /// [mapPublicIpOnLaunch] Optional.
  /// [outpostArn] Optional.
  /// [ownerId] Optional.
  /// [privateDnsHostnameTypeOnLaunch] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  /// [tags] Optional.
  /// [tagsAll] Optional.
  /// [vpcId] The ID of the VPC the subnet is in
  DefaultSubnetState({
    this.arn,
    this.assignIpv6AddressOnCreation,
    this.availabilityZone,
    this.availabilityZoneId,
    this.cidrBlock,
    this.customerOwnedIpv4Pool,
    this.enableDns64,
    this.enableLniAtDeviceIndex,
    this.enableResourceNameDnsARecordOnLaunch,
    this.enableResourceNameDnsAaaaRecordOnLaunch,
    this.existingDefaultSubnet,
    this.forceDestroy,
    this.ipv6CidrBlock,
    this.ipv6CidrBlockAssociationId,
    this.ipv6Native,
    this.mapCustomerOwnedIpOnLaunch,
    this.mapPublicIpOnLaunch,
    this.outpostArn,
    this.ownerId,
    this.privateDnsHostnameTypeOnLaunch,
    this.region,
    this.tags,
    this.tagsAll,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'assignIpv6AddressOnCreation': ?assignIpv6AddressOnCreation,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
      'cidrBlock': ?cidrBlock,
      'customerOwnedIpv4Pool': ?customerOwnedIpv4Pool,
      'enableDns64': ?enableDns64,
      'enableLniAtDeviceIndex': ?enableLniAtDeviceIndex,
      'enableResourceNameDnsARecordOnLaunch': ?enableResourceNameDnsARecordOnLaunch,
      'enableResourceNameDnsAaaaRecordOnLaunch': ?enableResourceNameDnsAaaaRecordOnLaunch,
      'existingDefaultSubnet': ?existingDefaultSubnet,
      'forceDestroy': ?forceDestroy,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'ipv6CidrBlockAssociationId': ?ipv6CidrBlockAssociationId,
      'ipv6Native': ?ipv6Native,
      'mapCustomerOwnedIpOnLaunch': ?mapCustomerOwnedIpOnLaunch,
      'mapPublicIpOnLaunch': ?mapPublicIpOnLaunch,
      'outpostArn': ?outpostArn,
      'ownerId': ?ownerId,
      'privateDnsHostnameTypeOnLaunch': ?privateDnsHostnameTypeOnLaunch,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory DefaultSubnetState.fromMap(Map<String, dynamic> map) {
    return DefaultSubnetState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      assignIpv6AddressOnCreation: map['assignIpv6AddressOnCreation'] == null ? null : ((map['assignIpv6AddressOnCreation'] as bool).input()).input(),
      availabilityZone: map['availabilityZone'] == null ? null : ((map['availabilityZone'] as String).input()).input(),
      availabilityZoneId: map['availabilityZoneId'] == null ? null : ((map['availabilityZoneId'] as String).input()).input(),
      cidrBlock: map['cidrBlock'] == null ? null : ((map['cidrBlock'] as String).input()).input(),
      customerOwnedIpv4Pool: map['customerOwnedIpv4Pool'] == null ? null : ((map['customerOwnedIpv4Pool'] as String).input()).input(),
      enableDns64: map['enableDns64'] == null ? null : ((map['enableDns64'] as bool).input()).input(),
      enableLniAtDeviceIndex: map['enableLniAtDeviceIndex'] == null ? null : ((map['enableLniAtDeviceIndex'] as int).input()).input(),
      enableResourceNameDnsARecordOnLaunch: map['enableResourceNameDnsARecordOnLaunch'] == null ? null : ((map['enableResourceNameDnsARecordOnLaunch'] as bool).input()).input(),
      enableResourceNameDnsAaaaRecordOnLaunch: map['enableResourceNameDnsAaaaRecordOnLaunch'] == null ? null : ((map['enableResourceNameDnsAaaaRecordOnLaunch'] as bool).input()).input(),
      existingDefaultSubnet: map['existingDefaultSubnet'] == null ? null : ((map['existingDefaultSubnet'] as bool).input()).input(),
      forceDestroy: map['forceDestroy'] == null ? null : ((map['forceDestroy'] as bool).input()).input(),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : ((map['ipv6CidrBlock'] as String).input()).input(),
      ipv6CidrBlockAssociationId: map['ipv6CidrBlockAssociationId'] == null ? null : ((map['ipv6CidrBlockAssociationId'] as String).input()).input(),
      ipv6Native: map['ipv6Native'] == null ? null : ((map['ipv6Native'] as bool).input()).input(),
      mapCustomerOwnedIpOnLaunch: map['mapCustomerOwnedIpOnLaunch'] == null ? null : ((map['mapCustomerOwnedIpOnLaunch'] as bool).input()).input(),
      mapPublicIpOnLaunch: map['mapPublicIpOnLaunch'] == null ? null : ((map['mapPublicIpOnLaunch'] as bool).input()).input(),
      outpostArn: map['outpostArn'] == null ? null : ((map['outpostArn'] as String).input()).input(),
      ownerId: map['ownerId'] == null ? null : ((map['ownerId'] as String).input()).input(),
      privateDnsHostnameTypeOnLaunch: map['privateDnsHostnameTypeOnLaunch'] == null ? null : ((map['privateDnsHostnameTypeOnLaunch'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}


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
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? assignIpv6AddressOnCreation,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? availabilityZoneId,
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<String>? customerOwnedIpv4Pool,
    pulumi.Output<bool>? enableDns64,
    pulumi.Output<int>? enableLniAtDeviceIndex,
    pulumi.Output<bool>? enableResourceNameDnsARecordOnLaunch,
    pulumi.Output<bool>? enableResourceNameDnsAaaaRecordOnLaunch,
    pulumi.Output<bool>? existingDefaultSubnet,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? ipv6CidrBlock,
    pulumi.Output<String>? ipv6CidrBlockAssociationId,
    pulumi.Output<bool>? ipv6Native,
    pulumi.Output<bool>? mapCustomerOwnedIpOnLaunch,
    pulumi.Output<bool>? mapPublicIpOnLaunch,
    pulumi.Output<String>? outpostArn,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? privateDnsHostnameTypeOnLaunch,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      assignIpv6AddressOnCreation = pulumi.Input.asOptionalInput<bool>(assignIpv6AddressOnCreation),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      availabilityZoneId = pulumi.Input.asOptionalInput<String>(availabilityZoneId),
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      customerOwnedIpv4Pool = pulumi.Input.asOptionalInput<String>(customerOwnedIpv4Pool),
      enableDns64 = pulumi.Input.asOptionalInput<bool>(enableDns64),
      enableLniAtDeviceIndex = pulumi.Input.asOptionalInput<int>(enableLniAtDeviceIndex),
      enableResourceNameDnsARecordOnLaunch = pulumi.Input.asOptionalInput<bool>(enableResourceNameDnsARecordOnLaunch),
      enableResourceNameDnsAaaaRecordOnLaunch = pulumi.Input.asOptionalInput<bool>(enableResourceNameDnsAaaaRecordOnLaunch),
      existingDefaultSubnet = pulumi.Input.asOptionalInput<bool>(existingDefaultSubnet),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      ipv6CidrBlock = pulumi.Input.asOptionalInput<String>(ipv6CidrBlock),
      ipv6CidrBlockAssociationId = pulumi.Input.asOptionalInput<String>(ipv6CidrBlockAssociationId),
      ipv6Native = pulumi.Input.asOptionalInput<bool>(ipv6Native),
      mapCustomerOwnedIpOnLaunch = pulumi.Input.asOptionalInput<bool>(mapCustomerOwnedIpOnLaunch),
      mapPublicIpOnLaunch = pulumi.Input.asOptionalInput<bool>(mapPublicIpOnLaunch),
      outpostArn = pulumi.Input.asOptionalInput<String>(outpostArn),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      privateDnsHostnameTypeOnLaunch = pulumi.Input.asOptionalInput<String>(privateDnsHostnameTypeOnLaunch),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      assignIpv6AddressOnCreation: map['assignIpv6AddressOnCreation'] == null ? null : pulumi.Output.create<bool>(map['assignIpv6AddressOnCreation'] as bool),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      availabilityZoneId: map['availabilityZoneId'] == null ? null : pulumi.Output.create<String>(map['availabilityZoneId'] as String),
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      customerOwnedIpv4Pool: map['customerOwnedIpv4Pool'] == null ? null : pulumi.Output.create<String>(map['customerOwnedIpv4Pool'] as String),
      enableDns64: map['enableDns64'] == null ? null : pulumi.Output.create<bool>(map['enableDns64'] as bool),
      enableLniAtDeviceIndex: map['enableLniAtDeviceIndex'] == null ? null : pulumi.Output.create<int>(map['enableLniAtDeviceIndex'] as int),
      enableResourceNameDnsARecordOnLaunch: map['enableResourceNameDnsARecordOnLaunch'] == null ? null : pulumi.Output.create<bool>(map['enableResourceNameDnsARecordOnLaunch'] as bool),
      enableResourceNameDnsAaaaRecordOnLaunch: map['enableResourceNameDnsAaaaRecordOnLaunch'] == null ? null : pulumi.Output.create<bool>(map['enableResourceNameDnsAaaaRecordOnLaunch'] as bool),
      existingDefaultSubnet: map['existingDefaultSubnet'] == null ? null : pulumi.Output.create<bool>(map['existingDefaultSubnet'] as bool),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : pulumi.Output.create<String>(map['ipv6CidrBlock'] as String),
      ipv6CidrBlockAssociationId: map['ipv6CidrBlockAssociationId'] == null ? null : pulumi.Output.create<String>(map['ipv6CidrBlockAssociationId'] as String),
      ipv6Native: map['ipv6Native'] == null ? null : pulumi.Output.create<bool>(map['ipv6Native'] as bool),
      mapCustomerOwnedIpOnLaunch: map['mapCustomerOwnedIpOnLaunch'] == null ? null : pulumi.Output.create<bool>(map['mapCustomerOwnedIpOnLaunch'] as bool),
      mapPublicIpOnLaunch: map['mapPublicIpOnLaunch'] == null ? null : pulumi.Output.create<bool>(map['mapPublicIpOnLaunch'] as bool),
      outpostArn: map['outpostArn'] == null ? null : pulumi.Output.create<String>(map['outpostArn'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      privateDnsHostnameTypeOnLaunch: map['privateDnsHostnameTypeOnLaunch'] == null ? null : pulumi.Output.create<String>(map['privateDnsHostnameTypeOnLaunch'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}


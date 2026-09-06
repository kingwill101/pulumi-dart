// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_dns_name_options_on_launch_model_properties_response.dart';
import 'tag_response.dart';

/// Definition of awsEc2Subnet
class AwsEc2SubnetPropertiesResponse {
  /// Indicates whether a network interface created in this subnet receives an IPv6 address. The default value is ``false``. If you specify ``AssignIpv6AddressOnCreation``, you must also specify an IPv6 CIDR block.
  final pulumi.Input<bool?>? assignIpv6AddressOnCreation;
  /// The Availability Zone of the subnet. If you update this property, you must also update the ``CidrBlock`` property.
  final pulumi.Input<String?>? availabilityZone;
  /// The AZ ID of the subnet.
  final pulumi.Input<String?>? availabilityZoneId;
  /// The IPv4 CIDR block assigned to the subnet. If you update this property, we create a new subnet, and then delete the existing one.
  final pulumi.Input<String?>? cidrBlock;
  /// Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations. For more information, see [DNS64 and NAT64](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-nat64-dns64) in the *User Guide*.
  final pulumi.Input<bool?>? enableDns64;
  /// Indicates the device position for local network interfaces in this subnet. For example, ``1`` indicates local network interfaces in this subnet are the secondary network interface (eth1).
  final pulumi.Input<int?>? enableLniAtDeviceIndex;
  /// An IPv4 IPAM pool ID for the subnet.
  final pulumi.Input<String?>? ipv4IpamPoolId;
  /// An IPv4 netmask length for the subnet.
  final pulumi.Input<int?>? ipv4NetmaskLength;
  /// The IPv6 CIDR block. If you specify ``AssignIpv6AddressOnCreation``, you must also specify an IPv6 CIDR block.
  final pulumi.Input<String?>? ipv6CidrBlock;
  /// The IPv6 network ranges for the subnet, in CIDR notation.
  final pulumi.Input<List<String>?>? ipv6CidrBlocks;
  /// An IPv6 IPAM pool ID for the subnet.
  final pulumi.Input<String?>? ipv6IpamPoolId;
  /// Indicates whether this is an IPv6 only subnet. For more information, see [Subnet basics](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html#subnet-basics) in the *User Guide*.
  final pulumi.Input<bool?>? ipv6Native;
  /// An IPv6 netmask length for the subnet.
  final pulumi.Input<int?>? ipv6NetmaskLength;
  /// Indicates whether instances launched in this subnet receive a public IPv4 address. The default value is ``false``.  AWS charges for all public IPv4 addresses, including public IPv4 addresses associated with running instances and Elastic IP addresses. For more information, see the *Public IPv4 Address* tab on the [VPC pricing page](https://aws.amazon.com/vpc/pricing/).
  final pulumi.Input<bool?>? mapPublicIpOnLaunch;
  /// Property networkAclAssociationId
  final pulumi.Input<String?>? networkAclAssociationId;
  /// The Amazon Resource Name (ARN) of the Outpost.
  final pulumi.Input<String?>? outpostArn;
  /// The hostname type for EC2 instances launched into this subnet and how DNS A and AAAA record queries to the instances should be handled. For more information, see [Amazon EC2 instance hostname types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-naming.html) in the *User Guide*. Available options:  +  EnableResourceNameDnsAAAARecord (true | false)  +  EnableResourceNameDnsARecord (true | false)  +  HostnameType (ip-name | resource-name)
  final pulumi.Input<PrivateDnsNameOptionsOnLaunchModelPropertiesResponse?>? privateDnsNameOptionsOnLaunch;
  /// Property subnetId
  final pulumi.Input<String?>? subnetId;
  /// Any tags assigned to the subnet.
  final pulumi.Input<List<TagResponse>?>? tags;
  /// The ID of the VPC the subnet is in. If you update this property, you must also update the ``CidrBlock`` property.
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [AwsEc2SubnetPropertiesResponse].
  /// [assignIpv6AddressOnCreation] Indicates whether a network interface created in this subnet receives an IPv6 address. The default value is ``false``. If you specify ``AssignIpv6AddressOnCreation``, you must also specify an IPv6 CIDR block.
  /// [availabilityZone] The Availability Zone of the subnet. If you update this property, you must also update the ``CidrBlock`` property.
  /// [availabilityZoneId] The AZ ID of the subnet.
  /// [cidrBlock] The IPv4 CIDR block assigned to the subnet. If you update this property, we create a new subnet, and then delete the existing one.
  /// [enableDns64] Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations. For more information, see [DNS64 and NAT64](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-nat64-dns64) in the *User Guide*.
  /// [enableLniAtDeviceIndex] Indicates the device position for local network interfaces in this subnet. For example, ``1`` indicates local network interfaces in this subnet are the secondary network interface (eth1).
  /// [ipv4IpamPoolId] An IPv4 IPAM pool ID for the subnet.
  /// [ipv4NetmaskLength] An IPv4 netmask length for the subnet.
  /// [ipv6CidrBlock] The IPv6 CIDR block. If you specify ``AssignIpv6AddressOnCreation``, you must also specify an IPv6 CIDR block.
  /// [ipv6CidrBlocks] The IPv6 network ranges for the subnet, in CIDR notation.
  /// [ipv6IpamPoolId] An IPv6 IPAM pool ID for the subnet.
  /// [ipv6Native] Indicates whether this is an IPv6 only subnet. For more information, see [Subnet basics](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html#subnet-basics) in the *User Guide*.
  /// [ipv6NetmaskLength] An IPv6 netmask length for the subnet.
  /// [mapPublicIpOnLaunch] Indicates whether instances launched in this subnet receive a public IPv4 address. The default value is ``false``.  AWS charges for all public IPv4 addresses, including public IPv4 addresses associated with running instances and Elastic IP addresses. For more information, see the *Public IPv4 Address* tab on the [VPC pricing page](https://aws.amazon.com/vpc/pricing/).
  /// [networkAclAssociationId] Property networkAclAssociationId
  /// [outpostArn] The Amazon Resource Name (ARN) of the Outpost.
  /// [privateDnsNameOptionsOnLaunch] The hostname type for EC2 instances launched into this subnet and how DNS A and AAAA record queries to the instances should be handled. For more information, see [Amazon EC2 instance hostname types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-naming.html) in the *User Guide*. Available options:  +  EnableResourceNameDnsAAAARecord (true | false)  +  EnableResourceNameDnsARecord (true | false)  +  HostnameType (ip-name | resource-name)
  /// [subnetId] Property subnetId
  /// [tags] Any tags assigned to the subnet.
  /// [vpcId] The ID of the VPC the subnet is in. If you update this property, you must also update the ``CidrBlock`` property.
  const AwsEc2SubnetPropertiesResponse({
    this.assignIpv6AddressOnCreation,
    this.availabilityZone,
    this.availabilityZoneId,
    this.cidrBlock,
    this.enableDns64,
    this.enableLniAtDeviceIndex,
    this.ipv4IpamPoolId,
    this.ipv4NetmaskLength,
    this.ipv6CidrBlock,
    this.ipv6CidrBlocks,
    this.ipv6IpamPoolId,
    this.ipv6Native,
    this.ipv6NetmaskLength,
    this.mapPublicIpOnLaunch,
    this.networkAclAssociationId,
    this.outpostArn,
    this.privateDnsNameOptionsOnLaunch,
    this.subnetId,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignIpv6AddressOnCreation': ?assignIpv6AddressOnCreation,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
      'cidrBlock': ?cidrBlock,
      'enableDns64': ?enableDns64,
      'enableLniAtDeviceIndex': ?enableLniAtDeviceIndex,
      'ipv4IpamPoolId': ?ipv4IpamPoolId,
      'ipv4NetmaskLength': ?ipv4NetmaskLength,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'ipv6CidrBlocks': ?ipv6CidrBlocks,
      'ipv6IpamPoolId': ?ipv6IpamPoolId,
      'ipv6Native': ?ipv6Native,
      'ipv6NetmaskLength': ?ipv6NetmaskLength,
      'mapPublicIpOnLaunch': ?mapPublicIpOnLaunch,
      'networkAclAssociationId': ?networkAclAssociationId,
      'outpostArn': ?outpostArn,
      'privateDnsNameOptionsOnLaunch': ?pulumi.Input.mapOptionalInputValue<PrivateDnsNameOptionsOnLaunchModelPropertiesResponse, Map<String, dynamic>>(privateDnsNameOptionsOnLaunch, (value) => value.toMap()),
      'subnetId': ?subnetId,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcId': ?vpcId,
    };
  }

  factory AwsEc2SubnetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEc2SubnetPropertiesResponse(
      assignIpv6AddressOnCreation: (() { final guardedValue = map['assignIpv6AddressOnCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDns64: (() { final guardedValue = map['enableDns64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableLniAtDeviceIndex: (() { final guardedValue = map['enableLniAtDeviceIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      ipv4IpamPoolId: (() { final guardedValue = map['ipv4IpamPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4NetmaskLength: (() { final guardedValue = map['ipv4NetmaskLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      ipv6CidrBlock: (() { final guardedValue = map['ipv6CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6CidrBlocks: (() { final guardedValue = map['ipv6CidrBlocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6IpamPoolId: (() { final guardedValue = map['ipv6IpamPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6Native: (() { final guardedValue = map['ipv6Native']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipv6NetmaskLength: (() { final guardedValue = map['ipv6NetmaskLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      mapPublicIpOnLaunch: (() { final guardedValue = map['mapPublicIpOnLaunch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networkAclAssociationId: (() { final guardedValue = map['networkAclAssociationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateDnsNameOptionsOnLaunch: (() { final guardedValue = map['privateDnsNameOptionsOnLaunch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateDnsNameOptionsOnLaunchModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

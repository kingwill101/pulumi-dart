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
      'enableResourceNameDnsARecordOnLaunch':
          ?enableResourceNameDnsARecordOnLaunch,
      'enableResourceNameDnsAaaaRecordOnLaunch':
          ?enableResourceNameDnsAaaaRecordOnLaunch,
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
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      assignIpv6AddressOnCreation: (() {
        final guardedValue = map['assignIpv6AddressOnCreation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availabilityZoneId: (() {
        final guardedValue = map['availabilityZoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cidrBlock: (() {
        final guardedValue = map['cidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customerOwnedIpv4Pool: (() {
        final guardedValue = map['customerOwnedIpv4Pool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableDns64: (() {
        final guardedValue = map['enableDns64'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableLniAtDeviceIndex: (() {
        final guardedValue = map['enableLniAtDeviceIndex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      enableResourceNameDnsARecordOnLaunch: (() {
        final guardedValue = map['enableResourceNameDnsARecordOnLaunch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableResourceNameDnsAaaaRecordOnLaunch: (() {
        final guardedValue = map['enableResourceNameDnsAaaaRecordOnLaunch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      existingDefaultSubnet: (() {
        final guardedValue = map['existingDefaultSubnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      forceDestroy: (() {
        final guardedValue = map['forceDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ipv6CidrBlock: (() {
        final guardedValue = map['ipv6CidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6CidrBlockAssociationId: (() {
        final guardedValue = map['ipv6CidrBlockAssociationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6Native: (() {
        final guardedValue = map['ipv6Native'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      mapCustomerOwnedIpOnLaunch: (() {
        final guardedValue = map['mapCustomerOwnedIpOnLaunch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      mapPublicIpOnLaunch: (() {
        final guardedValue = map['mapPublicIpOnLaunch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      outpostArn: (() {
        final guardedValue = map['outpostArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ownerId: (() {
        final guardedValue = map['ownerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateDnsHostnameTypeOnLaunch: (() {
        final guardedValue = map['privateDnsHostnameTypeOnLaunch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

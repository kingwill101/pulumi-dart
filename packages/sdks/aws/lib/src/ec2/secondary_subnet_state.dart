// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secondary_subnet_ipv4_cidr_block_association.dart';
import 'secondary_subnet_timeouts.dart';

/// Input properties used for looking up and filtering SecondarySubnet resources.
class SecondarySubnetState {
  /// ARN of the secondary subnet.
  final pulumi.Input<String>? arn;
  /// Availability Zone for the secondary subnet. Cannot be specified with `availability_zone_id`.
  final pulumi.Input<String>? availabilityZone;
  /// ID of the Availability Zone for the secondary subnet. This option is preferred over `availability_zone` as it provides a consistent identifier across AWS accounts. Cannot be specified with `availability_zone`.
  final pulumi.Input<String>? availabilityZoneId;
  /// IPv4 CIDR block for the secondary subnet. The CIDR block size must be between `/12` and `/28`.
  final pulumi.Input<String>? ipv4CidrBlock;
  /// A list of IPv4 CIDR block associations for the secondary network.
  final pulumi.Input<List<SecondarySubnetIpv4CidrBlockAssociation>>? ipv4CidrBlockAssociations;
  /// ID of the AWS account that owns the secondary subnet.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the secondary network in which to create the secondary subnet.
  final pulumi.Input<String>? secondaryNetworkId;
  /// Type of the secondary network (e.g., `rdma`).
  final pulumi.Input<String>? secondaryNetworkType;
  /// ID of the secondary subnet.
  final pulumi.Input<String>? secondarySubnetId;
  /// State of the IPv4 CIDR block association.
  final pulumi.Input<String>? state;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<SecondarySubnetTimeouts>? timeouts;

  /// Creates a new [SecondarySubnetState].
  /// [arn] ARN of the secondary subnet.
  /// [availabilityZone] Availability Zone for the secondary subnet. Cannot be specified with `availability_zone_id`.
  /// [availabilityZoneId] ID of the Availability Zone for the secondary subnet. This option is preferred over `availability_zone` as it provides a consistent identifier across AWS accounts. Cannot be specified with `availability_zone`.
  /// [ipv4CidrBlock] IPv4 CIDR block for the secondary subnet. The CIDR block size must be between `/12` and `/28`.
  /// [ipv4CidrBlockAssociations] A list of IPv4 CIDR block associations for the secondary network.
  /// [ownerId] ID of the AWS account that owns the secondary subnet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secondaryNetworkId] ID of the secondary network in which to create the secondary subnet.
  /// [secondaryNetworkType] Type of the secondary network (e.g., `rdma`).
  /// [secondarySubnetId] ID of the secondary subnet.
  /// [state] State of the IPv4 CIDR block association.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  SecondarySubnetState({
    this.arn,
    this.availabilityZone,
    this.availabilityZoneId,
    this.ipv4CidrBlock,
    this.ipv4CidrBlockAssociations,
    this.ownerId,
    this.region,
    this.secondaryNetworkId,
    this.secondaryNetworkType,
    this.secondarySubnetId,
    this.state,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
      'ipv4CidrBlock': ?ipv4CidrBlock,
      'ipv4CidrBlockAssociations': ?pulumi.Input.mapOptionalInputValue<List<SecondarySubnetIpv4CidrBlockAssociation>, List<Map<String, dynamic>>>(ipv4CidrBlockAssociations, (value) => pulumi.Input.encodeList<SecondarySubnetIpv4CidrBlockAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ownerId': ?ownerId,
      'region': ?region,
      'secondaryNetworkId': ?secondaryNetworkId,
      'secondaryNetworkType': ?secondaryNetworkType,
      'secondarySubnetId': ?secondarySubnetId,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<SecondarySubnetTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory SecondarySubnetState.fromMap(Map<String, dynamic> map) {
    return SecondarySubnetState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      availabilityZone: map['availabilityZone'] == null ? null : ((map['availabilityZone'] as String).input()).input(),
      availabilityZoneId: map['availabilityZoneId'] == null ? null : ((map['availabilityZoneId'] as String).input()).input(),
      ipv4CidrBlock: map['ipv4CidrBlock'] == null ? null : ((map['ipv4CidrBlock'] as String).input()).input(),
      ipv4CidrBlockAssociations: map['ipv4CidrBlockAssociations'] == null ? null : ((pulumi.Input.decodeList<SecondarySubnetIpv4CidrBlockAssociation>(map['ipv4CidrBlockAssociations']!, (value) => SecondarySubnetIpv4CidrBlockAssociation.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      ownerId: map['ownerId'] == null ? null : ((map['ownerId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      secondaryNetworkId: map['secondaryNetworkId'] == null ? null : ((map['secondaryNetworkId'] as String).input()).input(),
      secondaryNetworkType: map['secondaryNetworkType'] == null ? null : ((map['secondaryNetworkType'] as String).input()).input(),
      secondarySubnetId: map['secondarySubnetId'] == null ? null : ((map['secondarySubnetId'] as String).input()).input(),
      state: map['state'] == null ? null : ((map['state'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((SecondarySubnetTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


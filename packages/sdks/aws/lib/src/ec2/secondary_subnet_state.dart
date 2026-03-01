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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? availabilityZoneId,
    pulumi.Output<String>? ipv4CidrBlock,
    pulumi.Output<List<SecondarySubnetIpv4CidrBlockAssociation>>? ipv4CidrBlockAssociations,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? secondaryNetworkId,
    pulumi.Output<String>? secondaryNetworkType,
    pulumi.Output<String>? secondarySubnetId,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<SecondarySubnetTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      availabilityZoneId = pulumi.Input.asOptionalInput<String>(availabilityZoneId),
      ipv4CidrBlock = pulumi.Input.asOptionalInput<String>(ipv4CidrBlock),
      ipv4CidrBlockAssociations = pulumi.Input.asOptionalInput<List<SecondarySubnetIpv4CidrBlockAssociation>>(ipv4CidrBlockAssociations),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      secondaryNetworkId = pulumi.Input.asOptionalInput<String>(secondaryNetworkId),
      secondaryNetworkType = pulumi.Input.asOptionalInput<String>(secondaryNetworkType),
      secondarySubnetId = pulumi.Input.asOptionalInput<String>(secondarySubnetId),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<SecondarySubnetTimeouts>(timeouts);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      availabilityZoneId: map['availabilityZoneId'] == null ? null : pulumi.Output.create<String>(map['availabilityZoneId'] as String),
      ipv4CidrBlock: map['ipv4CidrBlock'] == null ? null : pulumi.Output.create<String>(map['ipv4CidrBlock'] as String),
      ipv4CidrBlockAssociations: map['ipv4CidrBlockAssociations'] == null ? null : pulumi.Output.create<List<SecondarySubnetIpv4CidrBlockAssociation>>(pulumi.Input.decodeList<SecondarySubnetIpv4CidrBlockAssociation>(map['ipv4CidrBlockAssociations'], (value) => SecondarySubnetIpv4CidrBlockAssociation.fromMap((value as Map).cast<String, dynamic>()))),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secondaryNetworkId: map['secondaryNetworkId'] == null ? null : pulumi.Output.create<String>(map['secondaryNetworkId'] as String),
      secondaryNetworkType: map['secondaryNetworkType'] == null ? null : pulumi.Output.create<String>(map['secondaryNetworkType'] as String),
      secondarySubnetId: map['secondarySubnetId'] == null ? null : pulumi.Output.create<String>(map['secondarySubnetId'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<SecondarySubnetTimeouts>(SecondarySubnetTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}


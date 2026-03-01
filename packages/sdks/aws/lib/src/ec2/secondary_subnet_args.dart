// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secondary_subnet_timeouts.dart';

/// {@template pulumi_ec2_secondary_subnet_secondary_subnet_args_doc}
/// The set of arguments for SecondarySubnet.
/// {@endtemplate}
/// {@macro pulumi_ec2_secondary_subnet_secondary_subnet_args_doc}
class SecondarySubnetArgs {
  /// Availability Zone for the secondary subnet. Cannot be specified with `availability_zone_id`.
  final pulumi.Input<String>? availabilityZone;
  /// ID of the Availability Zone for the secondary subnet. This option is preferred over `availability_zone` as it provides a consistent identifier across AWS accounts. Cannot be specified with `availability_zone`.
  final pulumi.Input<String>? availabilityZoneId;
  /// IPv4 CIDR block for the secondary subnet. The CIDR block size must be between `/12` and `/28`.
  final pulumi.Input<String> ipv4CidrBlock;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the secondary network in which to create the secondary subnet.
  final pulumi.Input<String> secondaryNetworkId;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<SecondarySubnetTimeouts>? timeouts;

  /// Creates a new [SecondarySubnetArgs].
  /// [availabilityZone] Availability Zone for the secondary subnet. Cannot be specified with `availability_zone_id`.
  /// [availabilityZoneId] ID of the Availability Zone for the secondary subnet. This option is preferred over `availability_zone` as it provides a consistent identifier across AWS accounts. Cannot be specified with `availability_zone`.
  /// [ipv4CidrBlock] IPv4 CIDR block for the secondary subnet. The CIDR block size must be between `/12` and `/28`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secondaryNetworkId] ID of the secondary network in which to create the secondary subnet.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  SecondarySubnetArgs({
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? availabilityZoneId,
    required pulumi.Output<String> ipv4CidrBlock,
    pulumi.Output<String>? region,
    required pulumi.Output<String> secondaryNetworkId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<SecondarySubnetTimeouts>? timeouts,
  }) :
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      availabilityZoneId = pulumi.Input.asOptionalInput<String>(availabilityZoneId),
      ipv4CidrBlock = pulumi.Input.asInput<String>(ipv4CidrBlock),
      region = pulumi.Input.asOptionalInput<String>(region),
      secondaryNetworkId = pulumi.Input.asInput<String>(secondaryNetworkId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<SecondarySubnetTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
      'ipv4CidrBlock': ipv4CidrBlock,
      'region': ?region,
      'secondaryNetworkId': secondaryNetworkId,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<SecondarySubnetTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory SecondarySubnetArgs.fromMap(Map<String, dynamic> map) {
    return SecondarySubnetArgs(
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      availabilityZoneId: map['availabilityZoneId'] == null ? null : pulumi.Output.create<String>(map['availabilityZoneId'] as String),
      ipv4CidrBlock: pulumi.Output.create<String>(map['ipv4CidrBlock'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secondaryNetworkId: pulumi.Output.create<String>(map['secondaryNetworkId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<SecondarySubnetTimeouts>(SecondarySubnetTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}


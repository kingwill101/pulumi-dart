// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secondary_subnet_timeouts.dart';

/// {@template pulumi_ec2_secondary_subnet_secondary_subnet_args_doc}
/// The set of arguments for SecondarySubnet.
/// {@endtemplate}
/// {@macro pulumi_ec2_secondary_subnet_secondary_subnet_args_doc}
class SecondarySubnetArgs {
  /// Availability Zone for the secondary subnet. Cannot be specified with `availabilityZoneId`.
  final pulumi.Input<String>? availabilityZone;
  /// ID of the Availability Zone for the secondary subnet. This option is preferred over `availabilityZone` as it provides a consistent identifier across AWS accounts. Cannot be specified with `availabilityZone`.
  final pulumi.Input<String>? availabilityZoneId;
  /// IPv4 CIDR block for the secondary subnet. The CIDR block size must be between `/12` and `/28`.
  final pulumi.Input<String> ipv4CidrBlock;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the secondary network in which to create the secondary subnet.
  final pulumi.Input<String> secondaryNetworkId;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<SecondarySubnetTimeouts>? timeouts;

  /// Creates a new [SecondarySubnetArgs].
  /// [availabilityZone] Availability Zone for the secondary subnet. Cannot be specified with `availabilityZoneId`.
  /// [availabilityZoneId] ID of the Availability Zone for the secondary subnet. This option is preferred over `availabilityZone` as it provides a consistent identifier across AWS accounts. Cannot be specified with `availabilityZone`.
  /// [ipv4CidrBlock] IPv4 CIDR block for the secondary subnet. The CIDR block size must be between `/12` and `/28`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secondaryNetworkId] ID of the secondary network in which to create the secondary subnet.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const SecondarySubnetArgs({
    this.availabilityZone,
    this.availabilityZoneId,
    required this.ipv4CidrBlock,
    this.region,
    required this.secondaryNetworkId,
    this.tags,
    this.timeouts,
  });

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
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4CidrBlock: pulumi.Input.fromValue(map['ipv4CidrBlock'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryNetworkId: pulumi.Input.fromValue(map['secondaryNetworkId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecondarySubnetTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

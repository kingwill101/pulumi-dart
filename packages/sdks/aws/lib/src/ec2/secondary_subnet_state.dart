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
  final pulumi.Input<List<SecondarySubnetIpv4CidrBlockAssociation>>?
  ipv4CidrBlockAssociations;

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
      'ipv4CidrBlockAssociations':
          ?pulumi.Input.mapOptionalInputValue<
            List<SecondarySubnetIpv4CidrBlockAssociation>,
            List<Map<String, dynamic>>
          >(
            ipv4CidrBlockAssociations,
            (value) =>
                pulumi.Input.encodeList<
                  SecondarySubnetIpv4CidrBlockAssociation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ownerId': ?ownerId,
      'region': ?region,
      'secondaryNetworkId': ?secondaryNetworkId,
      'secondaryNetworkType': ?secondaryNetworkType,
      'secondarySubnetId': ?secondarySubnetId,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            SecondarySubnetTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory SecondarySubnetState.fromMap(Map<String, dynamic> map) {
    return SecondarySubnetState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
      ipv4CidrBlock: (() {
        final guardedValue = map['ipv4CidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv4CidrBlockAssociations: (() {
        final guardedValue = map['ipv4CidrBlockAssociations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SecondarySubnetIpv4CidrBlockAssociation>(
            guardedValue,
            (value) => SecondarySubnetIpv4CidrBlockAssociation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ownerId: (() {
        final guardedValue = map['ownerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryNetworkId: (() {
        final guardedValue = map['secondaryNetworkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryNetworkType: (() {
        final guardedValue = map['secondaryNetworkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondarySubnetId: (() {
        final guardedValue = map['secondarySubnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
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
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecondarySubnetTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secondary_network_ipv4_cidr_block_association.dart';
import 'secondary_network_timeouts.dart';

/// Input properties used for looking up and filtering SecondaryNetwork resources.
class SecondaryNetworkState {
  /// ARN of the secondary network.
  final pulumi.Input<String>? arn;

  /// IPv4 CIDR block for the secondary network. The CIDR block size must be between `/12` and `/28`.
  final pulumi.Input<String>? ipv4CidrBlock;

  /// A list of IPv4 CIDR block associations for the secondary network.
  final pulumi.Input<List<SecondaryNetworkIpv4CidrBlockAssociation>>?
  ipv4CidrBlockAssociations;

  /// Type of secondary network. Currently only `rdma` is supported.
  final pulumi.Input<String>? networkType;
  final pulumi.Input<String>? ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the secondary network.
  final pulumi.Input<String>? secondaryNetworkId;

  /// State of the IPv4 CIDR block association.
  final pulumi.Input<String>? state;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<SecondaryNetworkTimeouts>? timeouts;

  /// Creates a new [SecondaryNetworkState].
  /// [arn] ARN of the secondary network.
  /// [ipv4CidrBlock] IPv4 CIDR block for the secondary network. The CIDR block size must be between `/12` and `/28`.
  /// [ipv4CidrBlockAssociations] A list of IPv4 CIDR block associations for the secondary network.
  /// [networkType] Type of secondary network. Currently only `rdma` is supported.
  /// [ownerId] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secondaryNetworkId] ID of the secondary network.
  /// [state] State of the IPv4 CIDR block association.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  SecondaryNetworkState({
    this.arn,
    this.ipv4CidrBlock,
    this.ipv4CidrBlockAssociations,
    this.networkType,
    this.ownerId,
    this.region,
    this.secondaryNetworkId,
    this.state,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'ipv4CidrBlock': ?ipv4CidrBlock,
      'ipv4CidrBlockAssociations':
          ?pulumi.Input.mapOptionalInputValue<
            List<SecondaryNetworkIpv4CidrBlockAssociation>,
            List<Map<String, dynamic>>
          >(
            ipv4CidrBlockAssociations,
            (value) =>
                pulumi.Input.encodeList<
                  SecondaryNetworkIpv4CidrBlockAssociation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkType': ?networkType,
      'ownerId': ?ownerId,
      'region': ?region,
      'secondaryNetworkId': ?secondaryNetworkId,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            SecondaryNetworkTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory SecondaryNetworkState.fromMap(Map<String, dynamic> map) {
    return SecondaryNetworkState(
      arn: (() {
        final guardedValue = map['arn'];
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
          pulumi.Input.decodeList<SecondaryNetworkIpv4CidrBlockAssociation>(
            guardedValue,
            (value) => SecondaryNetworkIpv4CidrBlockAssociation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      networkType: (() {
        final guardedValue = map['networkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
          SecondaryNetworkTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

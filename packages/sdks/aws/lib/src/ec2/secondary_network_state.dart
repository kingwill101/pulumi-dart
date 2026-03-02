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
  final pulumi.Input<List<SecondaryNetworkIpv4CidrBlockAssociation>>? ipv4CidrBlockAssociations;
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
      'ipv4CidrBlockAssociations': ?pulumi.Input.mapOptionalInputValue<List<SecondaryNetworkIpv4CidrBlockAssociation>, List<Map<String, dynamic>>>(ipv4CidrBlockAssociations, (value) => pulumi.Input.encodeList<SecondaryNetworkIpv4CidrBlockAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkType': ?networkType,
      'ownerId': ?ownerId,
      'region': ?region,
      'secondaryNetworkId': ?secondaryNetworkId,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<SecondaryNetworkTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory SecondaryNetworkState.fromMap(Map<String, dynamic> map) {
    return SecondaryNetworkState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      ipv4CidrBlock: map['ipv4CidrBlock'] == null ? null : ((map['ipv4CidrBlock'] as String).input()).input(),
      ipv4CidrBlockAssociations: map['ipv4CidrBlockAssociations'] == null ? null : ((pulumi.Input.decodeList<SecondaryNetworkIpv4CidrBlockAssociation>(map['ipv4CidrBlockAssociations']!, (value) => SecondaryNetworkIpv4CidrBlockAssociation.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      networkType: map['networkType'] == null ? null : ((map['networkType'] as String).input()).input(),
      ownerId: map['ownerId'] == null ? null : ((map['ownerId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      secondaryNetworkId: map['secondaryNetworkId'] == null ? null : ((map['secondaryNetworkId'] as String).input()).input(),
      state: map['state'] == null ? null : ((map['state'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((SecondaryNetworkTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


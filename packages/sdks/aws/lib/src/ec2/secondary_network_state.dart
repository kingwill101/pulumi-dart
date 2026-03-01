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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? ipv4CidrBlock,
    pulumi.Output<List<SecondaryNetworkIpv4CidrBlockAssociation>>? ipv4CidrBlockAssociations,
    pulumi.Output<String>? networkType,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? secondaryNetworkId,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<SecondaryNetworkTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      ipv4CidrBlock = pulumi.Input.asOptionalInput<String>(ipv4CidrBlock),
      ipv4CidrBlockAssociations = pulumi.Input.asOptionalInput<List<SecondaryNetworkIpv4CidrBlockAssociation>>(ipv4CidrBlockAssociations),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      secondaryNetworkId = pulumi.Input.asOptionalInput<String>(secondaryNetworkId),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<SecondaryNetworkTimeouts>(timeouts);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      ipv4CidrBlock: map['ipv4CidrBlock'] == null ? null : pulumi.Output.create<String>(map['ipv4CidrBlock'] as String),
      ipv4CidrBlockAssociations: map['ipv4CidrBlockAssociations'] == null ? null : pulumi.Output.create<List<SecondaryNetworkIpv4CidrBlockAssociation>>(pulumi.Input.decodeList<SecondaryNetworkIpv4CidrBlockAssociation>(map['ipv4CidrBlockAssociations'], (value) => SecondaryNetworkIpv4CidrBlockAssociation.fromMap((value as Map).cast<String, dynamic>()))),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secondaryNetworkId: map['secondaryNetworkId'] == null ? null : pulumi.Output.create<String>(map['secondaryNetworkId'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<SecondaryNetworkTimeouts>(SecondaryNetworkTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}


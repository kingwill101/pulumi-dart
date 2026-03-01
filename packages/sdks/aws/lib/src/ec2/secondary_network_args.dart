// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secondary_network_timeouts.dart';

/// {@template pulumi_ec2_secondary_network_secondary_network_args_doc}
/// The set of arguments for SecondaryNetwork.
/// {@endtemplate}
/// {@macro pulumi_ec2_secondary_network_secondary_network_args_doc}
class SecondaryNetworkArgs {
  /// IPv4 CIDR block for the secondary network. The CIDR block size must be between `/12` and `/28`.
  final pulumi.Input<String> ipv4CidrBlock;
  /// Type of secondary network. Currently only `rdma` is supported.
  final pulumi.Input<String> networkType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<SecondaryNetworkTimeouts>? timeouts;

  /// Creates a new [SecondaryNetworkArgs].
  /// [ipv4CidrBlock] IPv4 CIDR block for the secondary network. The CIDR block size must be between `/12` and `/28`.
  /// [networkType] Type of secondary network. Currently only `rdma` is supported.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  SecondaryNetworkArgs({
    required pulumi.Output<String> ipv4CidrBlock,
    required pulumi.Output<String> networkType,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<SecondaryNetworkTimeouts>? timeouts,
  }) :
      ipv4CidrBlock = pulumi.Input.asInput<String>(ipv4CidrBlock),
      networkType = pulumi.Input.asInput<String>(networkType),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<SecondaryNetworkTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4CidrBlock': ipv4CidrBlock,
      'networkType': networkType,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<SecondaryNetworkTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory SecondaryNetworkArgs.fromMap(Map<String, dynamic> map) {
    return SecondaryNetworkArgs(
      ipv4CidrBlock: pulumi.Output.create<String>(map['ipv4CidrBlock'] as String),
      networkType: pulumi.Output.create<String>(map['networkType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<SecondaryNetworkTimeouts>(SecondaryNetworkTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}


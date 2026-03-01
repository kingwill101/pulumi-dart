// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_hosted_connection_hosted_connection_args_doc}
/// The set of arguments for HostedConnection.
/// {@endtemplate}
/// {@macro pulumi_directconnect_hosted_connection_hosted_connection_args_doc}
class HostedConnectionArgs {
  /// The bandwidth of the connection. Valid values for dedicated connections: 1Gbps, 10Gbps. Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps, and 25Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Hosted Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/hosted_connection.html).
  final pulumi.Input<String> bandwidth;
  /// The ID of the interconnect or LAG.
  final pulumi.Input<String> connectionId;
  /// The name of the connection.
  final pulumi.Input<String>? name;
  /// The ID of the AWS account of the customer for the connection.
  final pulumi.Input<String> ownerAccountId;
  /// The dedicated VLAN provisioned to the hosted connection.
  final pulumi.Input<int> vlan;

  /// Creates a new [HostedConnectionArgs].
  /// [bandwidth] The bandwidth of the connection. Valid values for dedicated connections: 1Gbps, 10Gbps. Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps, and 25Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Hosted Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/hosted_connection.html).
  /// [connectionId] The ID of the interconnect or LAG.
  /// [name] The name of the connection.
  /// [ownerAccountId] The ID of the AWS account of the customer for the connection.
  /// [vlan] The dedicated VLAN provisioned to the hosted connection.
  HostedConnectionArgs({
    required String bandwidth,
    required String connectionId,
    String? name,
    required String ownerAccountId,
    required int vlan,
  }) :
      bandwidth = pulumi.Input.asInput<String>(bandwidth),
      connectionId = pulumi.Input.asInput<String>(connectionId),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerAccountId = pulumi.Input.asInput<String>(ownerAccountId),
      vlan = pulumi.Input.asInput<int>(vlan);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'connectionId': connectionId,
      'name': ?name,
      'ownerAccountId': ownerAccountId,
      'vlan': vlan,
    };
  }

  factory HostedConnectionArgs.fromMap(Map<String, dynamic> map) {
    return HostedConnectionArgs(
      bandwidth: map['bandwidth'] as String,
      connectionId: map['connectionId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      ownerAccountId: map['ownerAccountId'] as String,
      vlan: map['vlan'] as int,
    );
  }
}


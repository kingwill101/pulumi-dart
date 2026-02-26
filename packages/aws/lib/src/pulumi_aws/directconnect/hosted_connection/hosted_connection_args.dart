// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for HostedConnection.
class HostedConnectionArgs {
  /// The bandwidth of the connection. Valid values for dedicated connections: 1Gbps, 10Gbps. Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps, and 25Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Hosted Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/hosted_connection.html).
  final Input<String> bandwidth;

  /// The ID of the interconnect or LAG.
  final Input<String> connectionId;

  /// The name of the connection.
  final Input<String>? name;

  /// The ID of the AWS account of the customer for the connection.
  final Input<String> ownerAccountId;

  /// The dedicated VLAN provisioned to the hosted connection.
  final Input<int> vlan;

  HostedConnectionArgs({
    required this.bandwidth,
    required this.connectionId,
    this.name,
    required this.ownerAccountId,
    required this.vlan,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bandwidth'] = bandwidth;
    map['connectionId'] = connectionId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['ownerAccountId'] = ownerAccountId;
    map['vlan'] = vlan;
    return map;
  }

  factory HostedConnectionArgs.fromMap(Map<String, dynamic> map) {
    return HostedConnectionArgs(
      bandwidth: Input.asInput<String>(map['bandwidth']),
      connectionId: Input.asInput<String>(map['connectionId']),
      name: Input.asOptionalInput<String>(map['name']),
      ownerAccountId: Input.asInput<String>(map['ownerAccountId']),
      vlan: Input.asInput<int>(map['vlan']),
    );
  }
}

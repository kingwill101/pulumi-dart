// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNodeSpecListenerConnectionPoolTcp {
  /// Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of `1`.
  final pulumi.Input<int> maxConnections;

  /// Creates a new [VirtualNodeSpecListenerConnectionPoolTcp].
  /// [maxConnections] Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of `1`.
  VirtualNodeSpecListenerConnectionPoolTcp({required this.maxConnections});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxConnections': maxConnections};
  }

  factory VirtualNodeSpecListenerConnectionPoolTcp.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNodeSpecListenerConnectionPoolTcp(
      maxConnections: pulumi.Input.fromValue(map['maxConnections'] as int),
    );
  }
}

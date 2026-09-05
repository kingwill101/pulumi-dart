// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerConnectionPoolTcp {
  /// Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster.
  final pulumi.Input<int> maxConnections;

  /// Creates a new [GetVirtualNodeSpecListenerConnectionPoolTcp].
  /// [maxConnections] Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster.
  const GetVirtualNodeSpecListenerConnectionPoolTcp({
    required this.maxConnections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnections': maxConnections,
    };
  }

  factory GetVirtualNodeSpecListenerConnectionPoolTcp.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerConnectionPoolTcp(
      maxConnections: pulumi.Input.fromValue((map['maxConnections'] as num).toInt()),
    );
  }
}

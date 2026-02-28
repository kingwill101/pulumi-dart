// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecListenerConnectionPoolTcp {
  /// Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of `1`.
  final int maxConnections;

  /// Creates a new [VirtualNodeSpecListenerConnectionPoolTcp].
  /// [maxConnections] Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of `1`.
  VirtualNodeSpecListenerConnectionPoolTcp({
    required this.maxConnections,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxConnections'] = maxConnections;
    return map;
  }

  factory VirtualNodeSpecListenerConnectionPoolTcp.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecListenerConnectionPoolTcp(
      maxConnections: map['maxConnections'] as int,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerConnectionPoolTcp {
  final int maxConnections;

  /// Creates a new [GetVirtualNodeSpecListenerConnectionPoolTcp].
  /// [maxConnections] Required.
  GetVirtualNodeSpecListenerConnectionPoolTcp({
    required this.maxConnections,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxConnections'] = maxConnections;
    return map;
  }

  factory GetVirtualNodeSpecListenerConnectionPoolTcp.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerConnectionPoolTcp(
      maxConnections: map['maxConnections'] as int,
    );
  }
}

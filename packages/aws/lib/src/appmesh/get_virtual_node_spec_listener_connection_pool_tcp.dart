// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNodeSpecListenerConnectionPoolTcp {
  final int maxConnections;

  /// Creates a new [GetVirtualNodeSpecListenerConnectionPoolTcp].
  /// [maxConnections] Required.
  GetVirtualNodeSpecListenerConnectionPoolTcp({
    required this.maxConnections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnections': maxConnections,
    };
  }

  factory GetVirtualNodeSpecListenerConnectionPoolTcp.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerConnectionPoolTcp(
      maxConnections: map['maxConnections'] as int,
    );
  }
}


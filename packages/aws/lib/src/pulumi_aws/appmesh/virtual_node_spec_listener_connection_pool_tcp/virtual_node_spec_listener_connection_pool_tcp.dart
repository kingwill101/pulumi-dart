// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecListenerConnectionPoolTcp {
  /// Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final int maxConnections;

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

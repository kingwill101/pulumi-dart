// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerConnectionPoolGrpc {
  final int maxRequests;

  /// Creates a new [GetVirtualNodeSpecListenerConnectionPoolGrpc].
  /// [maxRequests] Required.
  GetVirtualNodeSpecListenerConnectionPoolGrpc({
    required this.maxRequests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxRequests'] = maxRequests;
    return map;
  }

  factory GetVirtualNodeSpecListenerConnectionPoolGrpc.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerConnectionPoolGrpc(
      maxRequests: map['maxRequests'] as int,
    );
  }
}

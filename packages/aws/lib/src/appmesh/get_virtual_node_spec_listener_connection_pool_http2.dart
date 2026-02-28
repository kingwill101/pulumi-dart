// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNodeSpecListenerConnectionPoolHttp2 {
  final int maxRequests;

  /// Creates a new [GetVirtualNodeSpecListenerConnectionPoolHttp2].
  /// [maxRequests] Required.
  GetVirtualNodeSpecListenerConnectionPoolHttp2({
    required this.maxRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRequests': maxRequests,
    };
  }

  factory GetVirtualNodeSpecListenerConnectionPoolHttp2.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerConnectionPoolHttp2(
      maxRequests: map['maxRequests'] as int,
    );
  }
}


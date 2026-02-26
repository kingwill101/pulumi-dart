// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerConnectionPoolHttp2 {
  final int maxRequests;

  GetVirtualNodeSpecListenerConnectionPoolHttp2({
    required this.maxRequests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxRequests'] = maxRequests;
    return map;
  }

  factory GetVirtualNodeSpecListenerConnectionPoolHttp2.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerConnectionPoolHttp2(
      maxRequests: map['maxRequests'] as int,
    );
  }
}

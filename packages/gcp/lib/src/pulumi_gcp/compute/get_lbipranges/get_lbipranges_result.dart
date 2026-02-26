// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getLBIPRanges.
class GetLBIPRangesResult {
  /// The IP ranges used for health checks when **HTTP(S), SSL proxy, TCP proxy, and Internal load balancing** is used
  final List<String> httpSslTcpInternals;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The IP ranges used for health checks when **Network load balancing** is used
  final List<String> networks;

  GetLBIPRangesResult({
    required this.httpSslTcpInternals,
    required this.id,
    required this.networks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpSslTcpInternals'] = httpSslTcpInternals;
    map['id'] = id;
    map['networks'] = networks;
    return map;
  }

  factory GetLBIPRangesResult.fromMap(Map<String, dynamic> map) {
    return GetLBIPRangesResult(
      httpSslTcpInternals: (map['httpSslTcpInternals'] as List).cast<String>(),
      id: map['id'] as String,
      networks: (map['networks'] as List).cast<String>(),
    );
  }
}

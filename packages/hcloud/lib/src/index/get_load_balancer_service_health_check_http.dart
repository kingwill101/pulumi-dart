// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancerServiceHealthCheckHttp {
  /// string) Domain we try to access when performing the Health Check.
  final String domain;
  /// (string) Path we try to access when performing the Health Check.
  final String path;
  /// (string) Response we expect to be included in the Target response when a Health Check was performed.
  final String response;
  /// (list[int]) We expect that the target answers with these status codes. If not the target is marked as `unhealthy`.
  final List<int> statusCodes;
  /// (bool) Enable TLS certificate checking.
  final bool tls;

  /// Creates a new [GetLoadBalancerServiceHealthCheckHttp].
  /// [domain] string) Domain we try to access when performing the Health Check.
  /// [path] (string) Path we try to access when performing the Health Check.
  /// [response] (string) Response we expect to be included in the Target response when a Health Check was performed.
  /// [statusCodes] (list[int]) We expect that the target answers with these status codes. If not the target is marked as `unhealthy`.
  /// [tls] (bool) Enable TLS certificate checking.
  GetLoadBalancerServiceHealthCheckHttp({
    required this.domain,
    required this.path,
    required this.response,
    required this.statusCodes,
    required this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'path': path,
      'response': response,
      'statusCodes': statusCodes,
      'tls': tls,
    };
  }

  factory GetLoadBalancerServiceHealthCheckHttp.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerServiceHealthCheckHttp(
      domain: map['domain'] as String,
      path: map['path'] as String,
      response: map['response'] as String,
      statusCodes: (map['statusCodes'] as List).cast<int>(),
      tls: map['tls'] as bool,
    );
  }
}


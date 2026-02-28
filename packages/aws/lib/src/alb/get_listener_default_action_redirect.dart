// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionRedirect {
  final String host;
  final String path;

  /// Port of the listener. Required if `arn` is not set.
  final String port;
  final String protocol;
  final String query;
  final String statusCode;

  /// Creates a new [GetListenerDefaultActionRedirect].
  /// [host] Required.
  /// [path] Required.
  /// [port] Port of the listener. Required if `arn` is not set.
  /// [protocol] Required.
  /// [query] Required.
  /// [statusCode] Required.
  GetListenerDefaultActionRedirect({
    required this.host,
    required this.path,
    required this.port,
    required this.protocol,
    required this.query,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['host'] = host;
    map['path'] = path;
    map['port'] = port;
    map['protocol'] = protocol;
    map['query'] = query;
    map['statusCode'] = statusCode;
    return map;
  }

  factory GetListenerDefaultActionRedirect.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionRedirect(
      host: map['host'] as String,
      path: map['path'] as String,
      port: map['port'] as String,
      protocol: map['protocol'] as String,
      query: map['query'] as String,
      statusCode: map['statusCode'] as String,
    );
  }
}

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
    return <String, dynamic>{
      'host': host,
      'path': path,
      'port': port,
      'protocol': protocol,
      'query': query,
      'statusCode': statusCode,
    };
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


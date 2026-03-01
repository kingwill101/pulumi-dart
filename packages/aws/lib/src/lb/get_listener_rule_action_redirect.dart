// ignore_for_file: unused_element, unnecessary_cast

class GetListenerRuleActionRedirect {
  /// The hostname.
  final String host;

  /// The absolute path, starting with `/`.
  final String path;

  /// The port.
  final String port;

  /// The protocol.
  final String protocol;

  /// The query parameters.
  final String query;

  /// The HTTP redirect code.
  final String statusCode;

  /// Creates a new [GetListenerRuleActionRedirect].
  /// [host] The hostname.
  /// [path] The absolute path, starting with `/`.
  /// [port] The port.
  /// [protocol] The protocol.
  /// [query] The query parameters.
  /// [statusCode] The HTTP redirect code.
  GetListenerRuleActionRedirect({
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

  factory GetListenerRuleActionRedirect.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleActionRedirect(
      host: map['host'] as String,
      path: map['path'] as String,
      port: map['port'] as String,
      protocol: map['protocol'] as String,
      query: map['query'] as String,
      statusCode: map['statusCode'] as String,
    );
  }
}

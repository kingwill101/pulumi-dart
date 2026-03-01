// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleActionRedirect {
  /// The hostname. This component is not percent-encoded. The hostname can contain `#{host}`. Defaults to `#{host}`.
  final String? host;

  /// The absolute path, starting with the leading "/". This component is not percent-encoded. The path can contain #{host}, #{path}, and #{port}. Defaults to `/#{path}`.
  final String? path;

  /// The port. Specify a value from `1` to `65535` or `#{port}`. Defaults to `#{port}`.
  final String? port;

  /// The protocol. Valid values are `HTTP`, `HTTPS`, or `#{protocol}`. Defaults to `#{protocol}`.
  final String? protocol;

  /// The query parameters, URL-encoded when necessary, but not percent-encoded. Do not include the leading "?". Defaults to `#{query}`.
  final String? query;

  /// The HTTP redirect code. The redirect is either permanent (`HTTP_301`) or temporary (`HTTP_302`).
  final String statusCode;

  /// Creates a new [ListenerRuleActionRedirect].
  /// [host] The hostname. This component is not percent-encoded. The hostname can contain `#{host}`. Defaults to `#{host}`.
  /// [path] The absolute path, starting with the leading "/". This component is not percent-encoded. The path can contain #{host}, #{path}, and #{port}. Defaults to `/#{path}`.
  /// [port] The port. Specify a value from `1` to `65535` or `#{port}`. Defaults to `#{port}`.
  /// [protocol] The protocol. Valid values are `HTTP`, `HTTPS`, or `#{protocol}`. Defaults to `#{protocol}`.
  /// [query] The query parameters, URL-encoded when necessary, but not percent-encoded. Do not include the leading "?". Defaults to `#{query}`.
  /// [statusCode] The HTTP redirect code. The redirect is either permanent (`HTTP_301`) or temporary (`HTTP_302`).
  ListenerRuleActionRedirect({
    this.host,
    this.path,
    this.port,
    this.protocol,
    this.query,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'path': ?path,
      'port': ?port,
      'protocol': ?protocol,
      'query': ?query,
      'statusCode': statusCode,
    };
  }

  factory ListenerRuleActionRedirect.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionRedirect(
      host: map['host'] == null ? null : map['host'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      query: map['query'] == null ? null : map['query'] as String,
      statusCode: map['statusCode'] as String,
    );
  }
}

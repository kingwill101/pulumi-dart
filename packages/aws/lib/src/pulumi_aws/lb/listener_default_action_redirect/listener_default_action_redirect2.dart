// ignore_for_file: unused_element, unnecessary_cast

class ListenerDefaultActionRedirect2 {
  /// Hostname. This component is not percent-encoded. The hostname can contain `#{host}`. Defaults to `#{host}`.
  final String? host;

  /// Absolute path, starting with the leading "/". This component is not percent-encoded. The path can contain #{host}, #{path}, and #{port}. Defaults to `/#{path}`.
  final String? path;

  /// Port. Specify a value from <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> to <span pulumi-lang-nodejs="`65535`" pulumi-lang-dotnet="`65535`" pulumi-lang-go="`65535`" pulumi-lang-python="`65535`" pulumi-lang-yaml="`65535`" pulumi-lang-java="`65535`">`65535`</span> or `#{port}`. Defaults to `#{port}`.
  final String? port;

  /// Protocol. Valid values are `HTTP`, `HTTPS`, or `#{protocol}`. Defaults to `#{protocol}`.
  final String? protocol;

  /// Query parameters, URL-encoded when necessary, but not percent-encoded. Do not include the leading "?". Defaults to `#{query}`.
  final String? query;

  /// HTTP redirect code. The redirect is either permanent (`HTTP_301`) or temporary (`HTTP_302`).
  ///
  /// The following arguments are optional:
  final String statusCode;

  ListenerDefaultActionRedirect2({
    this.host,
    this.path,
    this.port,
    this.protocol,
    this.query,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = hostValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final queryValue = query;
    if (queryValue != null) {
      map['query'] = queryValue;
    }
    map['statusCode'] = statusCode;
    return map;
  }

  factory ListenerDefaultActionRedirect2.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionRedirect2(
      host: map['host'] == null ? null : map['host'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      query: map['query'] == null ? null : map['query'] as String,
      statusCode: map['statusCode'] as String,
    );
  }
}

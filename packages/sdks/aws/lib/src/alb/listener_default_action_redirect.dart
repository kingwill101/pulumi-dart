// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerDefaultActionRedirect {
  /// Hostname. This component is not percent-encoded. The hostname can contain `#{host}`. Defaults to `#{host}`.
  final pulumi.Input<String>? host;
  /// Absolute path, starting with the leading "/". This component is not percent-encoded. The path can contain #{host}, #{path}, and #{port}. Defaults to `/#{path}`.
  final pulumi.Input<String>? path;
  /// Port. Specify a value from `1` to `65535` or `#{port}`. Defaults to `#{port}`.
  final pulumi.Input<String>? port;
  /// Protocol. Valid values are `HTTP`, `HTTPS`, or `#{protocol}`. Defaults to `#{protocol}`.
  final pulumi.Input<String>? protocol;
  /// Query parameters, URL-encoded when necessary, but not percent-encoded. Do not include the leading "?". Defaults to `#{query}`.
  final pulumi.Input<String>? query;
  /// HTTP redirect code. The redirect is either permanent (`HTTP_301`) or temporary (`HTTP_302`).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> statusCode;

  /// Creates a new [ListenerDefaultActionRedirect].
  /// [host] Hostname. This component is not percent-encoded. The hostname can contain `#{host}`. Defaults to `#{host}`.
  /// [path] Absolute path, starting with the leading "/". This component is not percent-encoded. The path can contain #{host}, #{path}, and #{port}. Defaults to `/#{path}`.
  /// [port] Port. Specify a value from `1` to `65535` or `#{port}`. Defaults to `#{port}`.
  /// [protocol] Protocol. Valid values are `HTTP`, `HTTPS`, or `#{protocol}`. Defaults to `#{protocol}`.
  /// [query] Query parameters, URL-encoded when necessary, but not percent-encoded. Do not include the leading "?". Defaults to `#{query}`.
  /// [statusCode] HTTP redirect code. The redirect is either permanent (`HTTP_301`) or temporary (`HTTP_302`).
  ListenerDefaultActionRedirect({
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

  factory ListenerDefaultActionRedirect.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionRedirect(
      host: map['host'] == null ? null : ((map['host'] as String).input()).input(),
      path: map['path'] == null ? null : ((map['path'] as String).input()).input(),
      port: map['port'] == null ? null : ((map['port'] as String).input()).input(),
      protocol: map['protocol'] == null ? null : ((map['protocol'] as String).input()).input(),
      query: map['query'] == null ? null : ((map['query'] as String).input()).input(),
      statusCode: (map['statusCode'] as String).input(),
    );
  }
}


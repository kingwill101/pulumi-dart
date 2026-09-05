// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerDefaultActionRedirect {
  /// Hostname. This component is not percent-encoded. The hostname can contain `#{host}`. Defaults to `#{host}`.
  final pulumi.Input<String?>? host;
  /// Absolute path, starting with the leading "/". This component is not percent-encoded. The path can contain #{host}, #{path}, and #{port}. Defaults to `/#{path}`.
  final pulumi.Input<String?>? path;
  /// Port. Specify a value from `1` to `65535` or `#{port}`. Defaults to `#{port}`.
  final pulumi.Input<String?>? port;
  /// Protocol. Valid values are `HTTP`, `HTTPS`, or `#{protocol}`. Defaults to `#{protocol}`.
  final pulumi.Input<String?>? protocol;
  /// Query parameters, URL-encoded when necessary, but not percent-encoded. Do not include the leading "?". Defaults to `#{query}`.
  final pulumi.Input<String?>? query;
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
  const ListenerDefaultActionRedirect({
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
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusCode: pulumi.Input.fromValue(map['statusCode'] as String),
    );
  }
}

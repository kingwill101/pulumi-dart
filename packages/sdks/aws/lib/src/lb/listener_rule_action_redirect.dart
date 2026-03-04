// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerRuleActionRedirect {
  /// The hostname. This component is not percent-encoded. The hostname can contain `#{host}`. Defaults to `#{host}`.
  final pulumi.Input<String>? host;

  /// The absolute path, starting with the leading "/". This component is not percent-encoded. The path can contain #{host}, #{path}, and #{port}. Defaults to `/#{path}`.
  final pulumi.Input<String>? path;

  /// The port. Specify a value from `1` to `65535` or `#{port}`. Defaults to `#{port}`.
  final pulumi.Input<String>? port;

  /// The protocol. Valid values are `HTTP`, `HTTPS`, or `#{protocol}`. Defaults to `#{protocol}`.
  final pulumi.Input<String>? protocol;

  /// The query parameters, URL-encoded when necessary, but not percent-encoded. Do not include the leading "?". Defaults to `#{query}`.
  final pulumi.Input<String>? query;

  /// The HTTP redirect code. The redirect is either permanent (`HTTP_301`) or temporary (`HTTP_302`).
  final pulumi.Input<String> statusCode;

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
      host: (() {
        final guardedValue = map['host'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      query: (() {
        final guardedValue = map['query'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statusCode: pulumi.Input.fromValue(map['statusCode'] as String),
    );
  }
}

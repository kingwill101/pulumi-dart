// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerRuleActionRedirect {
  /// The hostname.
  final pulumi.Input<String> host;
  /// The absolute path, starting with `/`.
  final pulumi.Input<String> path;
  /// The port.
  final pulumi.Input<String> port;
  /// The protocol.
  final pulumi.Input<String> protocol;
  /// The query parameters.
  final pulumi.Input<String> query;
  /// The HTTP redirect code.
  final pulumi.Input<String> statusCode;

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
      host: pulumi.Input.fromValue(map['host'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      port: pulumi.Input.fromValue(map['port'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      query: pulumi.Input.fromValue(map['query'] as String),
      statusCode: pulumi.Input.fromValue(map['statusCode'] as String),
    );
  }
}


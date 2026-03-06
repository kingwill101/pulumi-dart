// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerDefaultActionRedirect {
  final pulumi.Input<String> host;
  final pulumi.Input<String> path;
  /// Port of the listener. Required if `arn` is not set.
  final pulumi.Input<String> port;
  final pulumi.Input<String> protocol;
  final pulumi.Input<String> query;
  final pulumi.Input<String> statusCode;

  /// Creates a new [GetListenerDefaultActionRedirect].
  /// [host] Required.
  /// [path] Required.
  /// [port] Port of the listener. Required if `arn` is not set.
  /// [protocol] Required.
  /// [query] Required.
  /// [statusCode] Required.
  const GetListenerDefaultActionRedirect({
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
      host: pulumi.Input.fromValue(map['host'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      port: pulumi.Input.fromValue(map['port'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      query: pulumi.Input.fromValue(map['query'] as String),
      statusCode: pulumi.Input.fromValue(map['statusCode'] as String),
    );
  }
}


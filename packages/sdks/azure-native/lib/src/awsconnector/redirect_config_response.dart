// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RedirectConfig
class RedirectConfigResponse {
  /// The hostname. This component is not percent-encoded. The hostname can contain #{host}.
  final pulumi.Input<String>? host;
  /// The absolute path, starting with the leading '/'. This component is not percent-encoded. The path can contain #{host}, #{path}, and #{port}.
  final pulumi.Input<String>? path;
  /// The port. You can specify a value from 1 to 65535 or #{port}.
  final pulumi.Input<String>? port;
  /// The protocol. You can specify HTTP, HTTPS, or #{protocol}. You can redirect HTTP to HTTP, HTTP to HTTPS, and HTTPS to HTTPS. You cannot redirect HTTPS to HTTP.
  final pulumi.Input<String>? protocol;
  /// The query parameters, URL-encoded when necessary, but not percent-encoded. Do not include the leading '?', as it is automatically added. You can specify any of the reserved keywords.
  final pulumi.Input<String>? query;
  /// The HTTP redirect code. The redirect is either permanent (HTTP 301) or temporary (HTTP 302).
  final pulumi.Input<String>? statusCode;

  /// Creates a new [RedirectConfigResponse].
  /// [host] The hostname. This component is not percent-encoded. The hostname can contain #{host}.
  /// [path] The absolute path, starting with the leading '/'. This component is not percent-encoded. The path can contain #{host}, #{path}, and #{port}.
  /// [port] The port. You can specify a value from 1 to 65535 or #{port}.
  /// [protocol] The protocol. You can specify HTTP, HTTPS, or #{protocol}. You can redirect HTTP to HTTP, HTTP to HTTPS, and HTTPS to HTTPS. You cannot redirect HTTPS to HTTP.
  /// [query] The query parameters, URL-encoded when necessary, but not percent-encoded. Do not include the leading '?', as it is automatically added. You can specify any of the reserved keywords.
  /// [statusCode] The HTTP redirect code. The redirect is either permanent (HTTP 301) or temporary (HTTP 302).
  RedirectConfigResponse({
    this.host,
    this.path,
    this.port,
    this.protocol,
    this.query,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'path': ?path,
      'port': ?port,
      'protocol': ?protocol,
      'query': ?query,
      'statusCode': ?statusCode,
    };
  }

  factory RedirectConfigResponse.fromMap(Map<String, dynamic> map) {
    return RedirectConfigResponse(
      host: map['host'] == null ? null : (map['host']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      query: map['query'] == null ? null : (map['query']! as String).input(),
      statusCode: map['statusCode'] == null ? null : (map['statusCode']! as String).input(),
    );
  }
}


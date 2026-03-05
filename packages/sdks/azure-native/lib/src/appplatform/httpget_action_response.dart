// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HTTPGetAction describes an action based on HTTP Get requests.
class HTTPGetActionResponse {
  /// Path to access on the HTTP server.
  final pulumi.Input<String>? path;
  /// Scheme to use for connecting to the host. Defaults to HTTP.
  ///
  /// Possible enum values:
  /// - `"HTTP"` means that the scheme used will be http://
  /// - `"HTTPS"` means that the scheme used will be https://
  final pulumi.Input<String>? scheme;
  /// The type of the action to take to perform the health check.
  /// Expected value is 'HTTPGetAction'.
  final pulumi.Input<String> type;

  /// Creates a new [HTTPGetActionResponse].
  /// [path] Path to access on the HTTP server.
  /// [scheme] Scheme to use for connecting to the host. Defaults to HTTP.
  /// [type] The type of the action to take to perform the health check.
  HTTPGetActionResponse({
    this.path,
    this.scheme,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'scheme': ?scheme,
      'type': type,
    };
  }

  factory HTTPGetActionResponse.fromMap(Map<String, dynamic> map) {
    return HTTPGetActionResponse(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheme: (() { final guardedValue = map['scheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}


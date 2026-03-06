// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RequestMatchPatternResponse {
  final pulumi.Input<String>? method;
  final pulumi.Input<String>? path;

  /// Creates a new [RequestMatchPatternResponse].
  /// [method] Optional.
  /// [path] Optional.
  const RequestMatchPatternResponse({
    this.method,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'path': ?path,
    };
  }

  factory RequestMatchPatternResponse.fromMap(Map<String, dynamic> map) {
    return RequestMatchPatternResponse(
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


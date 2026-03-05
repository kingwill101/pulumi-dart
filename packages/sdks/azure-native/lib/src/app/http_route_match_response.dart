// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Criteria to match on
class HttpRouteMatchResponse {
  /// path case sensitive, default is true
  final pulumi.Input<bool>? caseSensitive;
  /// match on exact path
  final pulumi.Input<String>? path;
  /// match on all prefix's. Not exact
  final pulumi.Input<String>? pathSeparatedPrefix;
  /// match on all prefix's. Not exact
  final pulumi.Input<String>? prefix;

  /// Creates a new [HttpRouteMatchResponse].
  /// [caseSensitive] path case sensitive, default is true
  /// [path] match on exact path
  /// [pathSeparatedPrefix] match on all prefix's. Not exact
  /// [prefix] match on all prefix's. Not exact
  HttpRouteMatchResponse({
    this.caseSensitive,
    this.path,
    this.pathSeparatedPrefix,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': ?caseSensitive,
      'path': ?path,
      'pathSeparatedPrefix': ?pathSeparatedPrefix,
      'prefix': ?prefix,
    };
  }

  factory HttpRouteMatchResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteMatchResponse(
      caseSensitive: (() { final guardedValue = map['caseSensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathSeparatedPrefix: (() { final guardedValue = map['pathSeparatedPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


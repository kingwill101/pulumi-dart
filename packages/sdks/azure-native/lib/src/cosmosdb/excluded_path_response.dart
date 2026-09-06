// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExcludedPathResponse {
  /// The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  final pulumi.Input<String?>? path;

  /// Creates a new [ExcludedPathResponse].
  /// [path] The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  const ExcludedPathResponse({
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
    };
  }

  factory ExcludedPathResponse.fromMap(Map<String, dynamic> map) {
    return ExcludedPathResponse(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

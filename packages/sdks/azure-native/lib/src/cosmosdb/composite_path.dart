// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CompositePath {
  /// Sort order for composite paths.
  final pulumi.Input<String>? order;
  /// The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  final pulumi.Input<String>? path;

  /// Creates a new [CompositePath].
  /// [order] Sort order for composite paths.
  /// [path] The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  const CompositePath({
    this.order,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'order': ?order,
      'path': ?path,
    };
  }

  factory CompositePath.fromMap(Map<String, dynamic> map) {
    return CompositePath(
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

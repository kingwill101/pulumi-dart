// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpatialSpec {
  /// The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  final pulumi.Input<String>? path;

  /// List of path's spatial type
  final pulumi.Input<List<String>>? types;

  /// Creates a new [SpatialSpec].
  /// [path] The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  /// [types] List of path's spatial type
  SpatialSpec({this.path, this.types});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': ?path, 'types': ?types};
  }

  factory SpatialSpec.fromMap(Map<String, dynamic> map) {
    return SpatialSpec(
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      types: (() {
        final guardedValue = map['types'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}

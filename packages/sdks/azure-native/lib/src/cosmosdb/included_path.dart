// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'indexes.dart';

/// The paths that are included in indexing
class IncludedPath {
  /// List of indexes for this path
  final pulumi.Input<List<Indexes>>? indexes;
  /// The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  final pulumi.Input<String>? path;

  /// Creates a new [IncludedPath].
  /// [indexes] List of indexes for this path
  /// [path] The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  IncludedPath({
    this.indexes,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexes': ?pulumi.Input.mapOptionalInputValue<List<Indexes>, List<Map<String, dynamic>>>(indexes, (value) => pulumi.Input.encodeList<Indexes, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': ?path,
    };
  }

  factory IncludedPath.fromMap(Map<String, dynamic> map) {
    return IncludedPath(
      indexes: (() { final guardedValue = map['indexes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Indexes>(guardedValue, (value) => Indexes.fromMap((value as Map).cast<String, dynamic>()))); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


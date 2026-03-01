// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'indexes.dart';

/// The paths that are included in indexing
class IncludedPath {
  /// List of indexes for this path
  final List<Indexes>? indexes;
  /// The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  final String? path;

  /// Creates a new [IncludedPath].
  /// [indexes] List of indexes for this path
  /// [path] The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  IncludedPath({
    this.indexes,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexes': ?indexes == null ? null : pulumi.Input.encodeList<Indexes, Map<String, dynamic>>(indexes!, (value) => value.toMap()),
      'path': ?path,
    };
  }

  factory IncludedPath.fromMap(Map<String, dynamic> map) {
    return IncludedPath(
      indexes: map['indexes'] == null ? null : pulumi.Input.decodeList<Indexes>(map['indexes'], (value) => Indexes.fromMap((value as Map).cast<String, dynamic>())),
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}


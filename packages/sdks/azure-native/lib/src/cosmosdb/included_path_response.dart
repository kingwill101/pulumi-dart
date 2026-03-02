// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'indexes_response.dart';

/// The paths that are included in indexing
class IncludedPathResponse {
  /// List of indexes for this path
  final pulumi.Input<List<IndexesResponse>>? indexes;
  /// The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  final pulumi.Input<String>? path;

  /// Creates a new [IncludedPathResponse].
  /// [indexes] List of indexes for this path
  /// [path] The path for which the indexing behavior applies to. Index paths typically start with root and end with wildcard (/path/*)
  IncludedPathResponse({
    this.indexes,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexes': ?pulumi.Input.mapOptionalInputValue<List<IndexesResponse>, List<Map<String, dynamic>>>(indexes, (value) => pulumi.Input.encodeList<IndexesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': ?path,
    };
  }

  factory IncludedPathResponse.fromMap(Map<String, dynamic> map) {
    return IncludedPathResponse(
      indexes: map['indexes'] == null ? null : (pulumi.Input.decodeList<IndexesResponse>(map['indexes']!, (value) => IndexesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The indexes for the path.
class IndexesResponse {
  /// The datatype for which the indexing behavior is applied to.
  final pulumi.Input<String>? dataType;
  /// Indicates the type of index.
  final pulumi.Input<String>? kind;
  /// The precision of the index. -1 is maximum precision.
  final pulumi.Input<int>? precision;

  /// Creates a new [IndexesResponse].
  /// [dataType] The datatype for which the indexing behavior is applied to.
  /// [kind] Indicates the type of index.
  /// [precision] The precision of the index. -1 is maximum precision.
  IndexesResponse({
    this.dataType,
    this.kind,
    this.precision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': ?dataType,
      'kind': ?kind,
      'precision': ?precision,
    };
  }

  factory IndexesResponse.fromMap(Map<String, dynamic> map) {
    return IndexesResponse(
      dataType: map['dataType'] == null ? null : (map['dataType'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      precision: map['precision'] == null ? null : (map['precision'] as int).input(),
    );
  }
}


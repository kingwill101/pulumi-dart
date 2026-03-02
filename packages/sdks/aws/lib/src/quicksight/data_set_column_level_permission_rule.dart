// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetColumnLevelPermissionRule {
  /// An array of column names.
  final pulumi.Input<List<String>>? columnNames;
  /// An array of ARNs for Amazon QuickSight users or groups.
  final pulumi.Input<List<String>>? principals;

  /// Creates a new [DataSetColumnLevelPermissionRule].
  /// [columnNames] An array of column names.
  /// [principals] An array of ARNs for Amazon QuickSight users or groups.
  DataSetColumnLevelPermissionRule({
    this.columnNames,
    this.principals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnNames': ?columnNames,
      'principals': ?principals,
    };
  }

  factory DataSetColumnLevelPermissionRule.fromMap(Map<String, dynamic> map) {
    return DataSetColumnLevelPermissionRule(
      columnNames: map['columnNames'] == null ? null : (((map['columnNames'] as List).cast<String>()).input()).input(),
      principals: map['principals'] == null ? null : (((map['principals'] as List).cast<String>()).input()).input(),
    );
  }
}


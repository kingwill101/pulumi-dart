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
  const DataSetColumnLevelPermissionRule({
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
      columnNames: (() { final guardedValue = map['columnNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principals: (() { final guardedValue = map['principals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

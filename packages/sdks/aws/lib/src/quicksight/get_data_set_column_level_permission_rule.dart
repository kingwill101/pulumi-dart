// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetColumnLevelPermissionRule {
  final pulumi.Input<List<String>> columnNames;
  final pulumi.Input<List<String>> principals;

  /// Creates a new [GetDataSetColumnLevelPermissionRule].
  /// [columnNames] Required.
  /// [principals] Required.
  const GetDataSetColumnLevelPermissionRule({
    required this.columnNames,
    required this.principals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnNames': columnNames,
      'principals': principals,
    };
  }

  factory GetDataSetColumnLevelPermissionRule.fromMap(Map<String, dynamic> map) {
    return GetDataSetColumnLevelPermissionRule(
      columnNames: pulumi.Input.fromValue((map['columnNames'] as List).cast<String>()),
      principals: pulumi.Input.fromValue((map['principals'] as List).cast<String>()),
    );
  }
}


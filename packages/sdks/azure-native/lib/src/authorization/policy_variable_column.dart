// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The variable column.
class PolicyVariableColumn {
  /// The name of this policy variable column.
  final pulumi.Input<String> columnName;

  /// Creates a new [PolicyVariableColumn].
  /// [columnName] The name of this policy variable column.
  const PolicyVariableColumn({
    required this.columnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
    };
  }

  factory PolicyVariableColumn.fromMap(Map<String, dynamic> map) {
    return PolicyVariableColumn(
      columnName: pulumi.Input.fromValue(map['columnName'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetPhysicalTableMapRelationalTableInputColumn {
  final pulumi.Input<String> name;
  final pulumi.Input<String> type;

  /// Creates a new [GetDataSetPhysicalTableMapRelationalTableInputColumn].
  /// [name] Required.
  /// [type] Required.
  const GetDataSetPhysicalTableMapRelationalTableInputColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory GetDataSetPhysicalTableMapRelationalTableInputColumn.fromMap(Map<String, dynamic> map) {
    return GetDataSetPhysicalTableMapRelationalTableInputColumn(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

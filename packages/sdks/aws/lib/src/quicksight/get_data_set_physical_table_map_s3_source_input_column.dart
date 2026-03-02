// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetPhysicalTableMapS3SourceInputColumn {
  final pulumi.Input<String> name;
  final pulumi.Input<String> type;

  /// Creates a new [GetDataSetPhysicalTableMapS3SourceInputColumn].
  /// [name] Required.
  /// [type] Required.
  GetDataSetPhysicalTableMapS3SourceInputColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory GetDataSetPhysicalTableMapS3SourceInputColumn.fromMap(Map<String, dynamic> map) {
    return GetDataSetPhysicalTableMapS3SourceInputColumn(
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}


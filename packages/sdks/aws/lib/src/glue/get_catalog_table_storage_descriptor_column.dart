// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCatalogTableStorageDescriptorColumn {
  /// Free-form text comment.
  final pulumi.Input<String> comment;
  /// Name of the table.
  final pulumi.Input<String> name;
  /// Map of initialization parameters for the SerDe, in key-value form.
  final pulumi.Input<Map<String, String>> parameters;
  /// Datatype of data in the Column.
  final pulumi.Input<String> type;

  /// Creates a new [GetCatalogTableStorageDescriptorColumn].
  /// [comment] Free-form text comment.
  /// [name] Name of the table.
  /// [parameters] Map of initialization parameters for the SerDe, in key-value form.
  /// [type] Datatype of data in the Column.
  const GetCatalogTableStorageDescriptorColumn({
    required this.comment,
    required this.name,
    required this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'name': name,
      'parameters': parameters,
      'type': type,
    };
  }

  factory GetCatalogTableStorageDescriptorColumn.fromMap(Map<String, dynamic> map) {
    return GetCatalogTableStorageDescriptorColumn(
      comment: pulumi.Input.fromValue(map['comment'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue((map['parameters'] as Map).cast<String, String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogTableStorageDescriptorColumn {
  /// Free-form text comment.
  final pulumi.Input<String>? comment;
  /// Name of the Column.
  final pulumi.Input<String> name;
  /// Key-value pairs defining properties associated with the column.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Datatype of data in the Column.
  final pulumi.Input<String>? type;

  /// Creates a new [CatalogTableStorageDescriptorColumn].
  /// [comment] Free-form text comment.
  /// [name] Name of the Column.
  /// [parameters] Key-value pairs defining properties associated with the column.
  /// [type] Datatype of data in the Column.
  CatalogTableStorageDescriptorColumn({
    this.comment,
    required this.name,
    this.parameters,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'name': name,
      'parameters': ?parameters,
      'type': ?type,
    };
  }

  factory CatalogTableStorageDescriptorColumn.fromMap(Map<String, dynamic> map) {
    return CatalogTableStorageDescriptorColumn(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


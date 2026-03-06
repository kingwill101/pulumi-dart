// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PartitionStorageDescriptorColumn {
  /// Free-form text comment.
  final pulumi.Input<String>? comment;
  final pulumi.Input<String> name;
  /// The datatype of data in the Column.
  final pulumi.Input<String>? type;

  /// Creates a new [PartitionStorageDescriptorColumn].
  /// [comment] Free-form text comment.
  /// [name] Required.
  /// [type] The datatype of data in the Column.
  const PartitionStorageDescriptorColumn({
    this.comment,
    required this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'name': name,
      'type': ?type,
    };
  }

  factory PartitionStorageDescriptorColumn.fromMap(Map<String, dynamic> map) {
    return PartitionStorageDescriptorColumn(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


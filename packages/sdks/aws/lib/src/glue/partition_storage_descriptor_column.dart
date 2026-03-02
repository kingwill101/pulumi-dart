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
  PartitionStorageDescriptorColumn({
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
      comment: map['comment'] == null ? null : (map['comment'] as String).input(),
      name: (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}


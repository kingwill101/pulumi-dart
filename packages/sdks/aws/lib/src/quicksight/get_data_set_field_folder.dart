// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetFieldFolder {
  final pulumi.Input<List<String>> columns;
  final pulumi.Input<String> description;
  final pulumi.Input<String> fieldFoldersId;

  /// Creates a new [GetDataSetFieldFolder].
  /// [columns] Required.
  /// [description] Required.
  /// [fieldFoldersId] Required.
  GetDataSetFieldFolder({
    required this.columns,
    required this.description,
    required this.fieldFoldersId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': columns,
      'description': description,
      'fieldFoldersId': fieldFoldersId,
    };
  }

  factory GetDataSetFieldFolder.fromMap(Map<String, dynamic> map) {
    return GetDataSetFieldFolder(
      columns: pulumi.Input.fromValue((map['columns'] as List).cast<String>()),
      description: pulumi.Input.fromValue(map['description'] as String),
      fieldFoldersId: pulumi.Input.fromValue(map['fieldFoldersId'] as String),
    );
  }
}


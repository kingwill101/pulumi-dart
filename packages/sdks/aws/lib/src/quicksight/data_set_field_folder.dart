// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetFieldFolder {
  /// An array of column names to add to the folder. A column can only be in one folder.
  final pulumi.Input<List<String>?>? columns;
  /// Field folder description.
  final pulumi.Input<String?>? description;
  /// Key of the field folder map.
  final pulumi.Input<String> fieldFoldersId;

  /// Creates a new [DataSetFieldFolder].
  /// [columns] An array of column names to add to the folder. A column can only be in one folder.
  /// [description] Field folder description.
  /// [fieldFoldersId] Key of the field folder map.
  const DataSetFieldFolder({
    this.columns,
    this.description,
    required this.fieldFoldersId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
      'description': ?description,
      'fieldFoldersId': fieldFoldersId,
    };
  }

  factory DataSetFieldFolder.fromMap(Map<String, dynamic> map) {
    return DataSetFieldFolder(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldFoldersId: pulumi.Input.fromValue(map['fieldFoldersId'] as String),
    );
  }
}

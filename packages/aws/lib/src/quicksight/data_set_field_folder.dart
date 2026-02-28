// ignore_for_file: unused_element, unnecessary_cast


class DataSetFieldFolder {
  /// An array of column names to add to the folder. A column can only be in one folder.
  final List<String>? columns;
  /// Field folder description.
  final String? description;
  /// Key of the field folder map.
  final String fieldFoldersId;

  /// Creates a new [DataSetFieldFolder].
  /// [columns] An array of column names to add to the folder. A column can only be in one folder.
  /// [description] Field folder description.
  /// [fieldFoldersId] Key of the field folder map.
  DataSetFieldFolder({
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
      columns: map['columns'] == null ? null : (map['columns'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      fieldFoldersId: map['fieldFoldersId'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class GetDataSetFieldFolder {
  final List<String> columns;
  final String description;
  final String fieldFoldersId;

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
      columns: (map['columns'] as List).cast<String>(),
      description: map['description'] as String,
      fieldFoldersId: map['fieldFoldersId'] as String,
    );
  }
}


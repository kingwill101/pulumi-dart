// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceTableCustomLogColumn {
  /// The description of the column.
  final String? description;
  /// The display name of the column.
  final String? displayName;
  /// Specifies the name of the column.
  final String name;
  /// The data type of the column. Possible values are `boolean`, `datetime`, `dynamic`, `guid`, `int`, `long`, `real`, and `string`.
  final String type;

  /// Creates a new [WorkspaceTableCustomLogColumn].
  /// [description] The description of the column.
  /// [displayName] The display name of the column.
  /// [name] Specifies the name of the column.
  /// [type] The data type of the column. Possible values are `boolean`, `datetime`, `dynamic`, `guid`, `int`, `long`, `real`, and `string`.
  WorkspaceTableCustomLogColumn({
    this.description,
    this.displayName,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'name': name,
      'type': type,
    };
  }

  factory WorkspaceTableCustomLogColumn.fromMap(Map<String, dynamic> map) {
    return WorkspaceTableCustomLogColumn(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseMysqlBackupsBackup {
  /// A time value given in a combined date and time format that represents when the database backup was created.
  final String created;
  /// The ID of the database backup object.
  final int id;
  /// The database backup’s label, for display purposes only.
  final String label;
  /// The type of database backup, determined by how the backup was created.
  final String type;

  /// Creates a new [GetDatabaseMysqlBackupsBackup].
  /// [created] A time value given in a combined date and time format that represents when the database backup was created.
  /// [id] The ID of the database backup object.
  /// [label] The database backup’s label, for display purposes only.
  /// [type] The type of database backup, determined by how the backup was created.
  GetDatabaseMysqlBackupsBackup({
    required this.created,
    required this.id,
    required this.label,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'id': id,
      'label': label,
      'type': type,
    };
  }

  factory GetDatabaseMysqlBackupsBackup.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlBackupsBackup(
      created: map['created'] as String,
      id: map['id'] as int,
      label: map['label'] as String,
      type: map['type'] as String,
    );
  }
}


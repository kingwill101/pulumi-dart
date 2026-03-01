// ignore_for_file: unused_element, unnecessary_cast


/// Specifies details of a linked database resource.
class LinkedDatabase {
  /// Resource ID of a database resource to link with this database.
  final String? id;

  /// Creates a new [LinkedDatabase].
  /// [id] Resource ID of a database resource to link with this database.
  LinkedDatabase({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory LinkedDatabase.fromMap(Map<String, dynamic> map) {
    return LinkedDatabase(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// Specifies details of a linked database resource.
class LinkedDatabaseResponse {
  /// Resource ID of a database resource to link with this database.
  final String? id;
  /// State of the link between the database resources.
  final String state;

  /// Creates a new [LinkedDatabaseResponse].
  /// [id] Resource ID of a database resource to link with this database.
  /// [state] State of the link between the database resources.
  LinkedDatabaseResponse({
    this.id,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'state': state,
    };
  }

  factory LinkedDatabaseResponse.fromMap(Map<String, dynamic> map) {
    return LinkedDatabaseResponse(
      id: map['id'] == null ? null : map['id'] as String,
      state: map['state'] as String,
    );
  }
}


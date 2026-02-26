// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDatabase.
class GetDatabaseResult2 {
  final String charset;
  final String collation;
  final String deletionPolicy;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instance;
  final String name;
  final String? project;
  final String selfLink;

  GetDatabaseResult2({
    required this.charset,
    required this.collation,
    required this.deletionPolicy,
    required this.id,
    required this.instance,
    required this.name,
    this.project,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['charset'] = charset;
    map['collation'] = collation;
    map['deletionPolicy'] = deletionPolicy;
    map['id'] = id;
    map['instance'] = instance;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['selfLink'] = selfLink;
    return map;
  }

  factory GetDatabaseResult2.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult2(
      charset: map['charset'] as String,
      collation: map['collation'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      id: map['id'] as String,
      instance: map['instance'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMonitorDefaultKey.
class GetMonitorDefaultKeyResult {
  /// The time of creation of the API key.
  final String? created;
  /// The user that created the API key.
  final String? createdBy;
  /// The value of the API key.
  final String key;
  /// The name of the API key.
  final String? name;

  /// Creates a new [GetMonitorDefaultKeyResult].
  /// [created] The time of creation of the API key.
  /// [createdBy] The user that created the API key.
  /// [key] The value of the API key.
  /// [name] The name of the API key.
  GetMonitorDefaultKeyResult({
    this.created,
    this.createdBy,
    required this.key,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'createdBy': ?createdBy,
      'key': key,
      'name': ?name,
    };
  }

  factory GetMonitorDefaultKeyResult.fromMap(Map<String, dynamic> map) {
    return GetMonitorDefaultKeyResult(
      created: map['created'] == null ? null : map['created'] as String,
      createdBy: map['createdBy'] == null ? null : map['createdBy'] as String,
      key: map['key'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}


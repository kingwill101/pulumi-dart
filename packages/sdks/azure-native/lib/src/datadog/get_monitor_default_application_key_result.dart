// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMonitorDefaultApplicationKey.
class GetMonitorDefaultApplicationKeyResult {
  /// The user that created the Application key.
  final String? createdBy;
  /// The value of the Application key.
  final String key;
  /// The name of the Application key.
  final String? name;

  /// Creates a new [GetMonitorDefaultApplicationKeyResult].
  /// [createdBy] The user that created the Application key.
  /// [key] The value of the Application key.
  /// [name] The name of the Application key.
  const GetMonitorDefaultApplicationKeyResult({
    this.createdBy,
    required this.key,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdBy': ?createdBy,
      'key': key,
      'name': ?name,
    };
  }

  factory GetMonitorDefaultApplicationKeyResult.fromMap(Map<String, dynamic> map) {
    return GetMonitorDefaultApplicationKeyResult(
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      key: map['key'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

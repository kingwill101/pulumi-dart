// ignore_for_file: unused_element, unnecessary_cast


/// Details of the resource scope
class PolicyPropertiesResponseScope {
  /// Display name of the resource
  final String? displayName;
  /// Scope id of the resource
  final String? id;
  /// Type of the resource
  final String? type;

  /// Creates a new [PolicyPropertiesResponseScope].
  /// [displayName] Display name of the resource
  /// [id] Scope id of the resource
  /// [type] Type of the resource
  PolicyPropertiesResponseScope({
    this.displayName,
    this.id,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'type': ?type,
    };
  }

  factory PolicyPropertiesResponseScope.fromMap(Map<String, dynamic> map) {
    return PolicyPropertiesResponseScope(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}


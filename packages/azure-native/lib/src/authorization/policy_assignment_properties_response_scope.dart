// ignore_for_file: unused_element, unnecessary_cast


/// Details of the resource scope
class PolicyAssignmentPropertiesResponseScope {
  /// Display name of the resource
  final String? displayName;
  /// Scope id of the resource
  final String? id;
  /// Type of the resource
  final String? type;

  /// Creates a new [PolicyAssignmentPropertiesResponseScope].
  /// [displayName] Display name of the resource
  /// [id] Scope id of the resource
  /// [type] Type of the resource
  PolicyAssignmentPropertiesResponseScope({
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

  factory PolicyAssignmentPropertiesResponseScope.fromMap(Map<String, dynamic> map) {
    return PolicyAssignmentPropertiesResponseScope(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}


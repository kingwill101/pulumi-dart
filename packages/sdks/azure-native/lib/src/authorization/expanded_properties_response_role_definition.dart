// ignore_for_file: unused_element, unnecessary_cast


/// Details of role definition
class ExpandedPropertiesResponseRoleDefinition {
  /// Display name of the role definition
  final String? displayName;
  /// Id of the role definition
  final String? id;
  /// Type of the role definition
  final String? type;

  /// Creates a new [ExpandedPropertiesResponseRoleDefinition].
  /// [displayName] Display name of the role definition
  /// [id] Id of the role definition
  /// [type] Type of the role definition
  ExpandedPropertiesResponseRoleDefinition({
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

  factory ExpandedPropertiesResponseRoleDefinition.fromMap(Map<String, dynamic> map) {
    return ExpandedPropertiesResponseRoleDefinition(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}


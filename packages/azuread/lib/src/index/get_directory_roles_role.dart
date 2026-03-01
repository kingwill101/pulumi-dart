// ignore_for_file: unused_element, unnecessary_cast


class GetDirectoryRolesRole {
  /// The description of the directory role.
  final String description;
  /// The display name of the directory role.
  final String displayName;
  /// The object ID of the directory role.
  final String objectId;
  /// The template ID of the directory role.
  final String templateId;

  /// Creates a new [GetDirectoryRolesRole].
  /// [description] The description of the directory role.
  /// [displayName] The display name of the directory role.
  /// [objectId] The object ID of the directory role.
  /// [templateId] The template ID of the directory role.
  GetDirectoryRolesRole({
    required this.description,
    required this.displayName,
    required this.objectId,
    required this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'objectId': objectId,
      'templateId': templateId,
    };
  }

  factory GetDirectoryRolesRole.fromMap(Map<String, dynamic> map) {
    return GetDirectoryRolesRole(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      objectId: map['objectId'] as String,
      templateId: map['templateId'] as String,
    );
  }
}


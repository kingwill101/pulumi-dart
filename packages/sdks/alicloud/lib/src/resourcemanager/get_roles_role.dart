// ignore_for_file: unused_element, unnecessary_cast


class GetRolesRole {
  /// The Alibaba Cloud Resource Name (ARN) of the RAM role.
  final String arn;
  /// (Available in v1.114.0+) The assume role policy document.
  final String assumeRolePolicyDocument;
  /// The description of the RAM role.
  final String description;
  /// The ID of the role.
  final String id;
  /// The maximum session duration of the RAM role.
  final int maxSessionDuration;
  /// The ID of the role.
  final String roleId;
  /// The name of the role.
  final String roleName;
  /// The time when the RAM role was updated.
  final String updateDate;

  /// Creates a new [GetRolesRole].
  /// [arn] The Alibaba Cloud Resource Name (ARN) of the RAM role.
  /// [assumeRolePolicyDocument] (Available in v1.114.0+) The assume role policy document.
  /// [description] The description of the RAM role.
  /// [id] The ID of the role.
  /// [maxSessionDuration] The maximum session duration of the RAM role.
  /// [roleId] The ID of the role.
  /// [roleName] The name of the role.
  /// [updateDate] The time when the RAM role was updated.
  GetRolesRole({
    required this.arn,
    required this.assumeRolePolicyDocument,
    required this.description,
    required this.id,
    required this.maxSessionDuration,
    required this.roleId,
    required this.roleName,
    required this.updateDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'assumeRolePolicyDocument': assumeRolePolicyDocument,
      'description': description,
      'id': id,
      'maxSessionDuration': maxSessionDuration,
      'roleId': roleId,
      'roleName': roleName,
      'updateDate': updateDate,
    };
  }

  factory GetRolesRole.fromMap(Map<String, dynamic> map) {
    return GetRolesRole(
      arn: map['arn'] as String,
      assumeRolePolicyDocument: map['assumeRolePolicyDocument'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      maxSessionDuration: map['maxSessionDuration'] as int,
      roleId: map['roleId'] as String,
      roleName: map['roleName'] as String,
      updateDate: map['updateDate'] as String,
    );
  }
}


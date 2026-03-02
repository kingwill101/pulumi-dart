// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRolesRole {
  /// The Alibaba Cloud Resource Name (ARN) of the RAM role.
  final pulumi.Input<String> arn;
  /// (Available in v1.114.0+) The assume role policy document.
  final pulumi.Input<String> assumeRolePolicyDocument;
  /// The description of the RAM role.
  final pulumi.Input<String> description;
  /// The ID of the role.
  final pulumi.Input<String> id;
  /// The maximum session duration of the RAM role.
  final pulumi.Input<int> maxSessionDuration;
  /// The ID of the role.
  final pulumi.Input<String> roleId;
  /// The name of the role.
  final pulumi.Input<String> roleName;
  /// The time when the RAM role was updated.
  final pulumi.Input<String> updateDate;

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
      arn: (map['arn'] as String).input(),
      assumeRolePolicyDocument: (map['assumeRolePolicyDocument'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      maxSessionDuration: (map['maxSessionDuration'] as int).input(),
      roleId: (map['roleId'] as String).input(),
      roleName: (map['roleName'] as String).input(),
      updateDate: (map['updateDate'] as String).input(),
    );
  }
}


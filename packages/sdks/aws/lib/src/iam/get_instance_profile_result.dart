// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInstanceProfile.
class GetInstanceProfileResult {
  /// ARN.
  final String arn;
  /// String representation of the date the instance profile was created.
  final String createDate;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// Path to the instance profile.
  final String path;
  /// Role ARN associated with this instance profile.
  final String roleArn;
  /// Role ID associated with this instance profile.
  final String roleId;
  /// Role name associated with this instance profile.
  final String roleName;

  /// Creates a new [GetInstanceProfileResult].
  /// [arn] ARN.
  /// [createDate] String representation of the date the instance profile was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [path] Path to the instance profile.
  /// [roleArn] Role ARN associated with this instance profile.
  /// [roleId] Role ID associated with this instance profile.
  /// [roleName] Role name associated with this instance profile.
  const GetInstanceProfileResult({
    required this.arn,
    required this.createDate,
    required this.id,
    required this.name,
    required this.path,
    required this.roleArn,
    required this.roleId,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'createDate': createDate,
      'id': id,
      'name': name,
      'path': path,
      'roleArn': roleArn,
      'roleId': roleId,
      'roleName': roleName,
    };
  }

  factory GetInstanceProfileResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceProfileResult(
      arn: map['arn'] as String,
      createDate: map['createDate'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      path: map['path'] as String,
      roleArn: map['roleArn'] as String,
      roleId: map['roleId'] as String,
      roleName: map['roleName'] as String,
    );
  }
}


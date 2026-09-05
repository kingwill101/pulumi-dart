// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInstanceProfile.
class GetInstanceProfileResult {
  /// ARN.
  final String? arn;
  /// String representation of the date the instance profile was created.
  final String? createDate;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// Path to the instance profile.
  final String? path;
  /// Role ARN associated with this instance profile.
  final String? roleArn;
  /// Role ID associated with this instance profile.
  final String? roleId;
  /// Role name associated with this instance profile.
  final String? roleName;

  /// Creates a new [GetInstanceProfileResult].
  /// [arn] ARN.
  /// [createDate] String representation of the date the instance profile was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [path] Path to the instance profile.
  /// [roleArn] Role ARN associated with this instance profile.
  /// [roleId] Role ID associated with this instance profile.
  /// [roleName] Role name associated with this instance profile.
  const GetInstanceProfileResult({
    this.arn,
    this.createDate,
    this.id,
    this.name,
    this.path,
    this.roleArn,
    this.roleId,
    this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createDate': ?createDate,
      'id': ?id,
      'name': ?name,
      'path': ?path,
      'roleArn': ?roleArn,
      'roleId': ?roleId,
      'roleName': ?roleName,
    };
  }

  factory GetInstanceProfileResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceProfileResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createDate: (() { final guardedValue = map['createDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleId: (() { final guardedValue = map['roleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

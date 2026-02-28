// ignore_for_file: unused_element, unnecessary_cast


class AssessmentRolesAll {
  /// Amazon Resource Name (ARN) of the IAM role.
  final String roleArn;
  /// Type of customer persona. For assessment creation, type must always be `PROCESS_OWNER`.
  final String roleType;

  /// Creates a new [AssessmentRolesAll].
  /// [roleArn] Amazon Resource Name (ARN) of the IAM role.
  /// [roleType] Type of customer persona. For assessment creation, type must always be `PROCESS_OWNER`.
  AssessmentRolesAll({
    required this.roleArn,
    required this.roleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleArn': roleArn,
      'roleType': roleType,
    };
  }

  factory AssessmentRolesAll.fromMap(Map<String, dynamic> map) {
    return AssessmentRolesAll(
      roleArn: map['roleArn'] as String,
      roleType: map['roleType'] as String,
    );
  }
}


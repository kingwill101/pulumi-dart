// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssessmentRole {
  /// Amazon Resource Name (ARN) of the IAM role.
  final pulumi.Input<String> roleArn;
  /// Type of customer persona. For assessment creation, type must always be `PROCESS_OWNER`.
  final pulumi.Input<String> roleType;

  /// Creates a new [AssessmentRole].
  /// [roleArn] Amazon Resource Name (ARN) of the IAM role.
  /// [roleType] Type of customer persona. For assessment creation, type must always be `PROCESS_OWNER`.
  AssessmentRole({
    required this.roleArn,
    required this.roleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleArn': roleArn,
      'roleType': roleType,
    };
  }

  factory AssessmentRole.fromMap(Map<String, dynamic> map) {
    return AssessmentRole(
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      roleType: pulumi.Input.fromValue(map['roleType'] as String),
    );
  }
}


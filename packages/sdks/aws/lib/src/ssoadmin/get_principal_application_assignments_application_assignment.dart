// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPrincipalApplicationAssignmentsApplicationAssignment {
  /// ARN of the application.
  final pulumi.Input<String> applicationArn;
  /// An identifier for an object in IAM Identity Center, such as a user or group.
  final pulumi.Input<String> principalId;
  /// Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  final pulumi.Input<String> principalType;

  /// Creates a new [GetPrincipalApplicationAssignmentsApplicationAssignment].
  /// [applicationArn] ARN of the application.
  /// [principalId] An identifier for an object in IAM Identity Center, such as a user or group.
  /// [principalType] Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  GetPrincipalApplicationAssignmentsApplicationAssignment({
    required this.applicationArn,
    required this.principalId,
    required this.principalType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': applicationArn,
      'principalId': principalId,
      'principalType': principalType,
    };
  }

  factory GetPrincipalApplicationAssignmentsApplicationAssignment.fromMap(Map<String, dynamic> map) {
    return GetPrincipalApplicationAssignmentsApplicationAssignment(
      applicationArn: (map['applicationArn'] as String).input(),
      principalId: (map['principalId'] as String).input(),
      principalType: (map['principalType'] as String).input(),
    );
  }
}


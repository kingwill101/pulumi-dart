// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationAssignmentsApplicationAssignment {
  /// ARN of the application.
  final String applicationArn;
  /// An identifier for an object in IAM Identity Center, such as a user or group.
  final String principalId;
  /// Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  final String principalType;

  /// Creates a new [GetApplicationAssignmentsApplicationAssignment].
  /// [applicationArn] ARN of the application.
  /// [principalId] An identifier for an object in IAM Identity Center, such as a user or group.
  /// [principalType] Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  GetApplicationAssignmentsApplicationAssignment({
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

  factory GetApplicationAssignmentsApplicationAssignment.fromMap(Map<String, dynamic> map) {
    return GetApplicationAssignmentsApplicationAssignment(
      applicationArn: map['applicationArn'] as String,
      principalId: map['principalId'] as String,
      principalType: map['principalType'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

class GetApplicationAssignmentsApplicationAssignment {
  /// ARN of the application.
  final String applicationArn;

  /// An identifier for an object in IAM Identity Center, such as a user or group.
  final String principalId;

  /// Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  final String principalType;

  GetApplicationAssignmentsApplicationAssignment({
    required this.applicationArn,
    required this.principalId,
    required this.principalType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationArn'] = applicationArn;
    map['principalId'] = principalId;
    map['principalType'] = principalType;
    return map;
  }

  factory GetApplicationAssignmentsApplicationAssignment.fromMap(
      Map<String, dynamic> map) {
    return GetApplicationAssignmentsApplicationAssignment(
      applicationArn: map['applicationArn'] as String,
      principalId: map['principalId'] as String,
      principalType: map['principalType'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_principal_application_assignments_application_assignment/get_principal_application_assignments_application_assignment.dart';

/// Arguments for getPrincipalApplicationAssignments.
class GetPrincipalApplicationAssignmentsArgs {
  /// List of principals assigned to the application. See the `application_assignments` attribute reference below.
  final Input<List<GetPrincipalApplicationAssignmentsApplicationAssignment>>?
      applicationAssignments;

  /// ARN of the instance of IAM Identity Center.
  final Input<String> instanceArn;

  /// An identifier for an object in IAM Identity Center, such as a user or group.
  final Input<String> principalId;

  /// Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  final Input<String> principalType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetPrincipalApplicationAssignmentsArgs({
    this.applicationAssignments,
    required this.instanceArn,
    required this.principalId,
    required this.principalType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applicationAssignmentsValue = applicationAssignments;
    if (applicationAssignmentsValue != null) {
      map['applicationAssignments'] = Input.mapOptionalInputValue<
              List<GetPrincipalApplicationAssignmentsApplicationAssignment>,
              List<Map<String, dynamic>>>(
          applicationAssignmentsValue,
          (value) => Input.encodeList<
              GetPrincipalApplicationAssignmentsApplicationAssignment,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['instanceArn'] = instanceArn;
    map['principalId'] = principalId;
    map['principalType'] = principalType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetPrincipalApplicationAssignmentsArgs.fromMap(
      Map<String, dynamic> map) {
    return GetPrincipalApplicationAssignmentsArgs(
      applicationAssignments: Input.asOptionalInput<
              List<GetPrincipalApplicationAssignmentsApplicationAssignment>>(
          map['applicationAssignments']),
      instanceArn: Input.asInput<String>(map['instanceArn']),
      principalId: Input.asInput<String>(map['principalId']),
      principalType: Input.asInput<String>(map['principalType']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}

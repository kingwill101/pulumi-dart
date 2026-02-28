// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_principal_application_assignments_application_assignment.dart';

/// {@template pulumi_ssoadmin_get_principal_application_assignments_get_principal_application_assignments_args_doc}
/// Arguments for getPrincipalApplicationAssignments.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_get_principal_application_assignments_get_principal_application_assignments_args_doc}
class GetPrincipalApplicationAssignmentsArgs {
  /// List of principals assigned to the application. See the `application_assignments` attribute reference below.
  final pulumi
      .Input<List<GetPrincipalApplicationAssignmentsApplicationAssignment>>?
      applicationAssignments;

  /// ARN of the instance of IAM Identity Center.
  final pulumi.Input<String> instanceArn;

  /// An identifier for an object in IAM Identity Center, such as a user or group.
  final pulumi.Input<String> principalId;

  /// Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  final pulumi.Input<String> principalType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetPrincipalApplicationAssignmentsArgs].
  /// [applicationAssignments] List of principals assigned to the application. See the `application_assignments` attribute reference below.
  /// [instanceArn] ARN of the instance of IAM Identity Center.
  /// [principalId] An identifier for an object in IAM Identity Center, such as a user or group.
  /// [principalType] Entity type for which the assignment will be created. Valid values are `USER` or `GROUP`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetPrincipalApplicationAssignmentsArgs({
    List<GetPrincipalApplicationAssignmentsApplicationAssignment>?
        applicationAssignments,
    required String instanceArn,
    required String principalId,
    required String principalType,
    String? region,
  })  : applicationAssignments = pulumi.Input.asOptionalInput<
                List<GetPrincipalApplicationAssignmentsApplicationAssignment>>(
            applicationAssignments),
        instanceArn = pulumi.Input.asInput<String>(instanceArn),
        principalId = pulumi.Input.asInput<String>(principalId),
        principalType = pulumi.Input.asInput<String>(principalType),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applicationAssignmentsValue = applicationAssignments;
    if (applicationAssignmentsValue != null) {
      map['applicationAssignments'] = pulumi.Input.mapOptionalInputValue<
              List<GetPrincipalApplicationAssignmentsApplicationAssignment>,
              List<Map<String, dynamic>>>(
          applicationAssignmentsValue,
          (value) => pulumi.Input.encodeList<
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
      applicationAssignments: map['applicationAssignments'] == null
          ? null
          : pulumi.Input.decodeList<
                  GetPrincipalApplicationAssignmentsApplicationAssignment>(
              map['applicationAssignments'],
              (value) => GetPrincipalApplicationAssignmentsApplicationAssignment
                  .fromMap((value as Map).cast<String, dynamic>())),
      instanceArn: map['instanceArn'] as String,
      principalId: map['principalId'] as String,
      principalType: map['principalType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

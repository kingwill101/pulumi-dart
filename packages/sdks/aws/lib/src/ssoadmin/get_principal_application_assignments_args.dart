// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_principal_application_assignments_application_assignment.dart';

/// {@template pulumi_ssoadmin_get_principal_application_assignments_get_principal_application_assignments_args_doc}
/// Arguments for getPrincipalApplicationAssignments.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_get_principal_application_assignments_get_principal_application_assignments_args_doc}
class GetPrincipalApplicationAssignmentsArgs {
  /// List of principals assigned to the application. See the `application_assignments` attribute reference below.
  final pulumi.Input<List<GetPrincipalApplicationAssignmentsApplicationAssignment>>? applicationAssignments;
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
    pulumi.Output<List<GetPrincipalApplicationAssignmentsApplicationAssignment>>? applicationAssignments,
    required pulumi.Output<String> instanceArn,
    required pulumi.Output<String> principalId,
    required pulumi.Output<String> principalType,
    pulumi.Output<String>? region,
  }) :
      applicationAssignments = pulumi.Input.asOptionalInput<List<GetPrincipalApplicationAssignmentsApplicationAssignment>>(applicationAssignments),
      instanceArn = pulumi.Input.asInput<String>(instanceArn),
      principalId = pulumi.Input.asInput<String>(principalId),
      principalType = pulumi.Input.asInput<String>(principalType),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAssignments': ?pulumi.Input.mapOptionalInputValue<List<GetPrincipalApplicationAssignmentsApplicationAssignment>, List<Map<String, dynamic>>>(applicationAssignments, (value) => pulumi.Input.encodeList<GetPrincipalApplicationAssignmentsApplicationAssignment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceArn': instanceArn,
      'principalId': principalId,
      'principalType': principalType,
      'region': ?region,
    };
  }

  factory GetPrincipalApplicationAssignmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetPrincipalApplicationAssignmentsArgs(
      applicationAssignments: map['applicationAssignments'] == null ? null : pulumi.Output.create<List<GetPrincipalApplicationAssignmentsApplicationAssignment>>(pulumi.Input.decodeList<GetPrincipalApplicationAssignmentsApplicationAssignment>(map['applicationAssignments'], (value) => GetPrincipalApplicationAssignmentsApplicationAssignment.fromMap((value as Map).cast<String, dynamic>()))),
      instanceArn: pulumi.Output.create<String>(map['instanceArn'] as String),
      principalId: pulumi.Output.create<String>(map['principalId'] as String),
      principalType: pulumi.Output.create<String>(map['principalType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}


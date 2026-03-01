// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eligible_role_assignment_schedule.dart';
import 'eligible_role_assignment_ticket.dart';

/// {@template pulumi_pim_eligible_role_assignment_eligible_role_assignment_args_doc}
/// The set of arguments for EligibleRoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_pim_eligible_role_assignment_eligible_role_assignment_args_doc}
class EligibleRoleAssignmentArgs {
  /// The condition that limits the resources that the role can be assigned to. See the [official conditions documentation](https://learn.microsoft.com/en-us/azure/role-based-access-control/conditions-overview#what-are-role-assignment-conditions) for details. Changing this forces a new resource to be created.
  final pulumi.Input<String>? condition;
  /// The version of the condition. Supported values include `2.0`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `condition_version` is required when specifying `condition` and vice versa.
  final pulumi.Input<String>? conditionVersion;
  /// The justification of the role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? justification;
  /// Object ID of the principal for this eligible role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String> principalId;
  /// The role definition ID for this eligible role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String> roleDefinitionId;
  /// A `schedule` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<EligibleRoleAssignmentSchedule>? schedule;
  /// The scope for this eligible role assignment, should be a valid resource ID. Changing this forces a new resource to be created.
  final pulumi.Input<String> scope;
  /// A `ticket` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<EligibleRoleAssignmentTicket>? ticket;

  /// Creates a new [EligibleRoleAssignmentArgs].
  /// [condition] The condition that limits the resources that the role can be assigned to. See the [official conditions documentation](https://learn.microsoft.com/en-us/azure/role-based-access-control/conditions-overview#what-are-role-assignment-conditions) for details. Changing this forces a new resource to be created.
  /// [conditionVersion] The version of the condition. Supported values include `2.0`. Changing this forces a new resource to be created.
  /// [justification] The justification of the role assignment. Changing this forces a new resource to be created.
  /// [principalId] Object ID of the principal for this eligible role assignment. Changing this forces a new resource to be created.
  /// [roleDefinitionId] The role definition ID for this eligible role assignment. Changing this forces a new resource to be created.
  /// [schedule] A `schedule` block as defined below. Changing this forces a new resource to be created.
  /// [scope] The scope for this eligible role assignment, should be a valid resource ID. Changing this forces a new resource to be created.
  /// [ticket] A `ticket` block as defined below. Changing this forces a new resource to be created.
  EligibleRoleAssignmentArgs({
    String? condition,
    String? conditionVersion,
    String? justification,
    required String principalId,
    required String roleDefinitionId,
    EligibleRoleAssignmentSchedule? schedule,
    required String scope,
    EligibleRoleAssignmentTicket? ticket,
  }) :
      condition = pulumi.Input.asOptionalInput<String>(condition),
      conditionVersion = pulumi.Input.asOptionalInput<String>(conditionVersion),
      justification = pulumi.Input.asOptionalInput<String>(justification),
      principalId = pulumi.Input.asInput<String>(principalId),
      roleDefinitionId = pulumi.Input.asInput<String>(roleDefinitionId),
      schedule = pulumi.Input.asOptionalInput<EligibleRoleAssignmentSchedule>(schedule),
      scope = pulumi.Input.asInput<String>(scope),
      ticket = pulumi.Input.asOptionalInput<EligibleRoleAssignmentTicket>(ticket);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'conditionVersion': ?conditionVersion,
      'justification': ?justification,
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
      'schedule': ?pulumi.Input.mapOptionalInputValue<EligibleRoleAssignmentSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'scope': scope,
      'ticket': ?pulumi.Input.mapOptionalInputValue<EligibleRoleAssignmentTicket, Map<String, dynamic>>(ticket, (value) => value.toMap()),
    };
  }

  factory EligibleRoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return EligibleRoleAssignmentArgs(
      condition: map['condition'] == null ? null : map['condition'] as String,
      conditionVersion: map['conditionVersion'] == null ? null : map['conditionVersion'] as String,
      justification: map['justification'] == null ? null : map['justification'] as String,
      principalId: map['principalId'] as String,
      roleDefinitionId: map['roleDefinitionId'] as String,
      schedule: map['schedule'] == null ? null : EligibleRoleAssignmentSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      scope: map['scope'] as String,
      ticket: map['ticket'] == null ? null : EligibleRoleAssignmentTicket.fromMap((map['ticket'] as Map).cast<String, dynamic>()),
    );
  }
}


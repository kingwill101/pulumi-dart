// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_role_assignment_schedule.dart';
import 'active_role_assignment_ticket.dart';

/// {@template pulumi_pim_active_role_assignment_active_role_assignment_args_doc}
/// The set of arguments for ActiveRoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_pim_active_role_assignment_active_role_assignment_args_doc}
class ActiveRoleAssignmentArgs {
  /// The justification for the role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? justification;
  /// Object ID of the principal for this role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String> principalId;
  /// The role definition ID for this role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String> roleDefinitionId;
  /// A `schedule` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ActiveRoleAssignmentSchedule>? schedule;
  /// The scope for this role assignment, should be a valid resource ID. Changing this forces a new resource to be created.
  final pulumi.Input<String> scope;
  /// A `ticket` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ActiveRoleAssignmentTicket>? ticket;

  /// Creates a new [ActiveRoleAssignmentArgs].
  /// [justification] The justification for the role assignment. Changing this forces a new resource to be created.
  /// [principalId] Object ID of the principal for this role assignment. Changing this forces a new resource to be created.
  /// [roleDefinitionId] The role definition ID for this role assignment. Changing this forces a new resource to be created.
  /// [schedule] A `schedule` block as defined below. Changing this forces a new resource to be created.
  /// [scope] The scope for this role assignment, should be a valid resource ID. Changing this forces a new resource to be created.
  /// [ticket] A `ticket` block as defined below. Changing this forces a new resource to be created.
  ActiveRoleAssignmentArgs({
    String? justification,
    required String principalId,
    required String roleDefinitionId,
    ActiveRoleAssignmentSchedule? schedule,
    required String scope,
    ActiveRoleAssignmentTicket? ticket,
  }) :
      justification = pulumi.Input.asOptionalInput<String>(justification),
      principalId = pulumi.Input.asInput<String>(principalId),
      roleDefinitionId = pulumi.Input.asInput<String>(roleDefinitionId),
      schedule = pulumi.Input.asOptionalInput<ActiveRoleAssignmentSchedule>(schedule),
      scope = pulumi.Input.asInput<String>(scope),
      ticket = pulumi.Input.asOptionalInput<ActiveRoleAssignmentTicket>(ticket);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'justification': ?justification,
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
      'schedule': ?pulumi.Input.mapOptionalInputValue<ActiveRoleAssignmentSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'scope': scope,
      'ticket': ?pulumi.Input.mapOptionalInputValue<ActiveRoleAssignmentTicket, Map<String, dynamic>>(ticket, (value) => value.toMap()),
    };
  }

  factory ActiveRoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ActiveRoleAssignmentArgs(
      justification: map['justification'] == null ? null : map['justification'] as String,
      principalId: map['principalId'] as String,
      roleDefinitionId: map['roleDefinitionId'] as String,
      schedule: map['schedule'] == null ? null : ActiveRoleAssignmentSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      scope: map['scope'] as String,
      ticket: map['ticket'] == null ? null : ActiveRoleAssignmentTicket.fromMap((map['ticket'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blueprint_get_assignment_args_doc}
/// Arguments for getAssignment.
/// {@endtemplate}
/// {@macro pulumi_blueprint_get_assignment_args_doc}
class GetAssignmentArgs {
  /// Name of the blueprint assignment.
  final pulumi.Input<String> assignmentName;
  /// The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  final pulumi.Input<String> resourceScope;

  /// Creates a new [GetAssignmentArgs].
  /// [assignmentName] Name of the blueprint assignment.
  /// [resourceScope] The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  GetAssignmentArgs({
    required pulumi.Output<String> assignmentName,
    required pulumi.Output<String> resourceScope,
  }) :
      assignmentName = pulumi.Input.asInput<String>(assignmentName),
      resourceScope = pulumi.Input.asInput<String>(resourceScope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentName': assignmentName,
      'resourceScope': resourceScope,
    };
  }

  factory GetAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetAssignmentArgs(
      assignmentName: pulumi.Output.create<String>(map['assignmentName'] as String),
      resourceScope: pulumi.Output.create<String>(map['resourceScope'] as String),
    );
  }
}


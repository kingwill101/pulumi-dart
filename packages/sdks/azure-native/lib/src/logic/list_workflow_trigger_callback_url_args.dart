// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_list_workflow_trigger_callback_url_args_doc}
/// Arguments for listWorkflowTriggerCallbackUrl.
/// {@endtemplate}
/// {@macro pulumi_logic_list_workflow_trigger_callback_url_args_doc}
class ListWorkflowTriggerCallbackUrlArgs {
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The workflow trigger name.
  final pulumi.Input<String> triggerName;
  /// The workflow name.
  final pulumi.Input<String> workflowName;

  /// Creates a new [ListWorkflowTriggerCallbackUrlArgs].
  /// [resourceGroupName] The resource group name.
  /// [triggerName] The workflow trigger name.
  /// [workflowName] The workflow name.
  ListWorkflowTriggerCallbackUrlArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> triggerName,
    required pulumi.Output<String> workflowName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      triggerName = pulumi.Input.asInput<String>(triggerName),
      workflowName = pulumi.Input.asInput<String>(workflowName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'triggerName': triggerName,
      'workflowName': workflowName,
    };
  }

  factory ListWorkflowTriggerCallbackUrlArgs.fromMap(Map<String, dynamic> map) {
    return ListWorkflowTriggerCallbackUrlArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      triggerName: pulumi.Output.create<String>(map['triggerName'] as String),
      workflowName: pulumi.Output.create<String>(map['workflowName'] as String),
    );
  }
}


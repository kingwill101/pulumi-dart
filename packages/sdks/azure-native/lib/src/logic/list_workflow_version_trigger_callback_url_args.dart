// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_list_workflow_version_trigger_callback_url_args_doc}
/// Arguments for listWorkflowVersionTriggerCallbackUrl.
/// {@endtemplate}
/// {@macro pulumi_logic_list_workflow_version_trigger_callback_url_args_doc}
class ListWorkflowVersionTriggerCallbackUrlArgs {
  /// The key type.
  final pulumi.Input<String>? keyType;
  /// The expiry time.
  final pulumi.Input<String>? notAfter;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The workflow trigger name.
  final pulumi.Input<String> triggerName;
  /// The workflow versionId.
  final pulumi.Input<String> versionId;
  /// The workflow name.
  final pulumi.Input<String> workflowName;

  /// Creates a new [ListWorkflowVersionTriggerCallbackUrlArgs].
  /// [keyType] The key type.
  /// [notAfter] The expiry time.
  /// [resourceGroupName] The resource group name.
  /// [triggerName] The workflow trigger name.
  /// [versionId] The workflow versionId.
  /// [workflowName] The workflow name.
  ListWorkflowVersionTriggerCallbackUrlArgs({
    pulumi.Output<String>? keyType,
    pulumi.Output<String>? notAfter,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> triggerName,
    required pulumi.Output<String> versionId,
    required pulumi.Output<String> workflowName,
  }) :
      keyType = pulumi.Input.asOptionalInput<String>(keyType),
      notAfter = pulumi.Input.asOptionalInput<String>(notAfter),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      triggerName = pulumi.Input.asInput<String>(triggerName),
      versionId = pulumi.Input.asInput<String>(versionId),
      workflowName = pulumi.Input.asInput<String>(workflowName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyType': ?keyType,
      'notAfter': ?notAfter,
      'resourceGroupName': resourceGroupName,
      'triggerName': triggerName,
      'versionId': versionId,
      'workflowName': workflowName,
    };
  }

  factory ListWorkflowVersionTriggerCallbackUrlArgs.fromMap(Map<String, dynamic> map) {
    return ListWorkflowVersionTriggerCallbackUrlArgs(
      keyType: map['keyType'] == null ? null : pulumi.Output.create<String>(map['keyType'] as String),
      notAfter: map['notAfter'] == null ? null : pulumi.Output.create<String>(map['notAfter'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      triggerName: pulumi.Output.create<String>(map['triggerName'] as String),
      versionId: pulumi.Output.create<String>(map['versionId'] as String),
      workflowName: pulumi.Output.create<String>(map['workflowName'] as String),
    );
  }
}


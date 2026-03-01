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
    String? keyType,
    String? notAfter,
    required String resourceGroupName,
    required String triggerName,
    required String versionId,
    required String workflowName,
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
      keyType: map['keyType'] == null ? null : map['keyType'] as String,
      notAfter: map['notAfter'] == null ? null : map['notAfter'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      triggerName: map['triggerName'] as String,
      versionId: map['versionId'] as String,
      workflowName: map['workflowName'] as String,
    );
  }
}


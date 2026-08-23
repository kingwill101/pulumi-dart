// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_list_workflow_callback_url_args_doc}
/// Arguments for listWorkflowCallbackUrl.
/// {@endtemplate}
/// {@macro pulumi_logic_list_workflow_callback_url_args_doc}
class ListWorkflowCallbackUrlArgs {
  /// The key type.
  final pulumi.Input<String>? keyType;
  /// The expiry time.
  final pulumi.Input<String>? notAfter;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The workflow name.
  final pulumi.Input<String> workflowName;

  /// Creates a new [ListWorkflowCallbackUrlArgs].
  /// [keyType] The key type.
  /// [notAfter] The expiry time.
  /// [resourceGroupName] The resource group name.
  /// [workflowName] The workflow name.
  const ListWorkflowCallbackUrlArgs({
    this.keyType,
    this.notAfter,
    required this.resourceGroupName,
    required this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyType': ?keyType,
      'notAfter': ?notAfter,
      'resourceGroupName': resourceGroupName,
      'workflowName': workflowName,
    };
  }

  factory ListWorkflowCallbackUrlArgs.fromMap(Map<String, dynamic> map) {
    return ListWorkflowCallbackUrlArgs(
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notAfter: (() { final guardedValue = map['notAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workflowName: pulumi.Input.fromValue(map['workflowName'] as String),
    );
  }
}

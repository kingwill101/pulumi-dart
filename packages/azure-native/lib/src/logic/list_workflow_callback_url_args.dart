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
  ListWorkflowCallbackUrlArgs({
    String? keyType,
    String? notAfter,
    required String resourceGroupName,
    required String workflowName,
  }) :
      keyType = pulumi.Input.asOptionalInput<String>(keyType),
      notAfter = pulumi.Input.asOptionalInput<String>(notAfter),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workflowName = pulumi.Input.asInput<String>(workflowName);

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
      keyType: map['keyType'] == null ? null : map['keyType'] as String,
      notAfter: map['notAfter'] == null ? null : map['notAfter'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workflowName: map['workflowName'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_type.dart';

/// {@template pulumi_logic_list_workflow_version_callback_url_args_doc}
/// Arguments for listWorkflowVersionCallbackUrl.
/// {@endtemplate}
/// {@macro pulumi_logic_list_workflow_version_callback_url_args_doc}
class ListWorkflowVersionCallbackUrlArgs {
  /// The key type.
  final pulumi.Input<KeyType>? keyType;
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

  /// Creates a new [ListWorkflowVersionCallbackUrlArgs].
  /// [keyType] The key type.
  /// [notAfter] The expiry time.
  /// [resourceGroupName] The resource group name.
  /// [triggerName] The workflow trigger name.
  /// [versionId] The workflow versionId.
  /// [workflowName] The workflow name.
  ListWorkflowVersionCallbackUrlArgs({
    this.keyType,
    this.notAfter,
    required this.resourceGroupName,
    required this.triggerName,
    required this.versionId,
    required this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyType': ?pulumi.Input.mapOptionalInputValue<KeyType, String>(keyType, (value) => value.value),
      'notAfter': ?notAfter,
      'resourceGroupName': resourceGroupName,
      'triggerName': triggerName,
      'versionId': versionId,
      'workflowName': workflowName,
    };
  }

  factory ListWorkflowVersionCallbackUrlArgs.fromMap(Map<String, dynamic> map) {
    return ListWorkflowVersionCallbackUrlArgs(
      keyType: map['keyType'] == null ? null : (KeyType.fromValue(map['keyType']! as String)).input(),
      notAfter: map['notAfter'] == null ? null : (map['notAfter']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      triggerName: (map['triggerName'] as String).input(),
      versionId: (map['versionId'] as String).input(),
      workflowName: (map['workflowName'] as String).input(),
    );
  }
}


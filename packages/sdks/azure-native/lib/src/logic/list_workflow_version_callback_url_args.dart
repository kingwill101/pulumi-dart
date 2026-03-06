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
  const ListWorkflowVersionCallbackUrlArgs({
    this.keyType,
    this.notAfter,
    required this.resourceGroupName,
    required this.triggerName,
    required this.versionId,
    required this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyType': ?pulumi.Input.mapOptionalInputValue<KeyType, String>(keyType, (value) => value.wireValue),
      'notAfter': ?notAfter,
      'resourceGroupName': resourceGroupName,
      'triggerName': triggerName,
      'versionId': versionId,
      'workflowName': workflowName,
    };
  }

  factory ListWorkflowVersionCallbackUrlArgs.fromMap(Map<String, dynamic> map) {
    return ListWorkflowVersionCallbackUrlArgs(
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyType.fromValue(guardedValue as String)); })(),
      notAfter: (() { final guardedValue = map['notAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      triggerName: pulumi.Input.fromValue(map['triggerName'] as String),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
      workflowName: pulumi.Input.fromValue(map['workflowName'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_workflow_access_key_args_doc}
/// The set of arguments for WorkflowAccessKey.
/// {@endtemplate}
/// {@macro pulumi_logic_workflow_access_key_args_doc}
class WorkflowAccessKeyArgs {
  /// The workflow access key name.
  final pulumi.Input<String>? accessKeyName;
  /// Gets or sets the resource id.
  final pulumi.Input<String>? id;
  /// Gets or sets the not-after time.
  final pulumi.Input<String>? notAfter;
  /// Gets or sets the not-before time.
  final pulumi.Input<String>? notBefore;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The workflow name.
  final pulumi.Input<String> workflowName;

  /// Creates a new [WorkflowAccessKeyArgs].
  /// [accessKeyName] The workflow access key name.
  /// [id] Gets or sets the resource id.
  /// [notAfter] Gets or sets the not-after time.
  /// [notBefore] Gets or sets the not-before time.
  /// [resourceGroupName] The resource group name.
  /// [workflowName] The workflow name.
  WorkflowAccessKeyArgs({
    this.accessKeyName,
    this.id,
    this.notAfter,
    this.notBefore,
    required this.resourceGroupName,
    required this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyName': ?accessKeyName,
      'id': ?id,
      'notAfter': ?notAfter,
      'notBefore': ?notBefore,
      'resourceGroupName': resourceGroupName,
      'workflowName': workflowName,
    };
  }

  factory WorkflowAccessKeyArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowAccessKeyArgs(
      accessKeyName: map['accessKeyName'] == null ? null : (map['accessKeyName'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      notAfter: map['notAfter'] == null ? null : (map['notAfter'] as String).input(),
      notBefore: map['notBefore'] == null ? null : (map['notBefore'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workflowName: (map['workflowName'] as String).input(),
    );
  }
}


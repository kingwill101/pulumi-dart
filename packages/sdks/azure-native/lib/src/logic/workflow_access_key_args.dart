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
    pulumi.Output<String>? accessKeyName,
    pulumi.Output<String>? id,
    pulumi.Output<String>? notAfter,
    pulumi.Output<String>? notBefore,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workflowName,
  }) :
      accessKeyName = pulumi.Input.asOptionalInput<String>(accessKeyName),
      id = pulumi.Input.asOptionalInput<String>(id),
      notAfter = pulumi.Input.asOptionalInput<String>(notAfter),
      notBefore = pulumi.Input.asOptionalInput<String>(notBefore),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workflowName = pulumi.Input.asInput<String>(workflowName);

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
      accessKeyName: map['accessKeyName'] == null ? null : pulumi.Output.create<String>(map['accessKeyName'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      notAfter: map['notAfter'] == null ? null : pulumi.Output.create<String>(map['notAfter'] as String),
      notBefore: map['notBefore'] == null ? null : pulumi.Output.create<String>(map['notBefore'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workflowName: pulumi.Output.create<String>(map['workflowName'] as String),
    );
  }
}


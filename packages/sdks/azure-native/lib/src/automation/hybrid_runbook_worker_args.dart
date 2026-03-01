// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_hybrid_runbook_worker_args_doc}
/// The set of arguments for HybridRunbookWorker.
/// {@endtemplate}
/// {@macro pulumi_automation_hybrid_runbook_worker_args_doc}
class HybridRunbookWorkerArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The hybrid runbook worker group name
  final pulumi.Input<String> hybridRunbookWorkerGroupName;
  /// The hybrid runbook worker id
  final pulumi.Input<String>? hybridRunbookWorkerId;
  /// Gets or sets the name of the resource.
  final pulumi.Input<String>? name;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Resource Manager Id for a virtual machine.
  final pulumi.Input<String>? vmResourceId;

  /// Creates a new [HybridRunbookWorkerArgs].
  /// [automationAccountName] The name of the automation account.
  /// [hybridRunbookWorkerGroupName] The hybrid runbook worker group name
  /// [hybridRunbookWorkerId] The hybrid runbook worker id
  /// [name] Gets or sets the name of the resource.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [vmResourceId] Azure Resource Manager Id for a virtual machine.
  HybridRunbookWorkerArgs({
    required pulumi.Output<String> automationAccountName,
    required pulumi.Output<String> hybridRunbookWorkerGroupName,
    pulumi.Output<String>? hybridRunbookWorkerId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? vmResourceId,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      hybridRunbookWorkerGroupName = pulumi.Input.asInput<String>(hybridRunbookWorkerGroupName),
      hybridRunbookWorkerId = pulumi.Input.asOptionalInput<String>(hybridRunbookWorkerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vmResourceId = pulumi.Input.asOptionalInput<String>(vmResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'hybridRunbookWorkerGroupName': hybridRunbookWorkerGroupName,
      'hybridRunbookWorkerId': ?hybridRunbookWorkerId,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'vmResourceId': ?vmResourceId,
    };
  }

  factory HybridRunbookWorkerArgs.fromMap(Map<String, dynamic> map) {
    return HybridRunbookWorkerArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      hybridRunbookWorkerGroupName: pulumi.Output.create<String>(map['hybridRunbookWorkerGroupName'] as String),
      hybridRunbookWorkerId: map['hybridRunbookWorkerId'] == null ? null : pulumi.Output.create<String>(map['hybridRunbookWorkerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vmResourceId: map['vmResourceId'] == null ? null : pulumi.Output.create<String>(map['vmResourceId'] as String),
    );
  }
}


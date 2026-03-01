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
    required String automationAccountName,
    required String hybridRunbookWorkerGroupName,
    String? hybridRunbookWorkerId,
    String? name,
    required String resourceGroupName,
    String? vmResourceId,
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
      automationAccountName: map['automationAccountName'] as String,
      hybridRunbookWorkerGroupName: map['hybridRunbookWorkerGroupName'] as String,
      hybridRunbookWorkerId: map['hybridRunbookWorkerId'] == null ? null : map['hybridRunbookWorkerId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      vmResourceId: map['vmResourceId'] == null ? null : map['vmResourceId'] as String,
    );
  }
}


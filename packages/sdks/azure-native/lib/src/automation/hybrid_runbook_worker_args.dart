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
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Resource Manager Id for a virtual machine.
  final pulumi.Input<String>? vmResourceId;

  /// Creates a new [HybridRunbookWorkerArgs].
  /// [automationAccountName] The name of the automation account.
  /// [hybridRunbookWorkerGroupName] The hybrid runbook worker group name
  /// [hybridRunbookWorkerId] The hybrid runbook worker id
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vmResourceId] Azure Resource Manager Id for a virtual machine.
  const HybridRunbookWorkerArgs({
    required this.automationAccountName,
    required this.hybridRunbookWorkerGroupName,
    this.hybridRunbookWorkerId,
    required this.resourceGroupName,
    this.vmResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'hybridRunbookWorkerGroupName': hybridRunbookWorkerGroupName,
      'hybridRunbookWorkerId': ?hybridRunbookWorkerId,
      'resourceGroupName': resourceGroupName,
      'vmResourceId': ?vmResourceId,
    };
  }

  factory HybridRunbookWorkerArgs.fromMap(Map<String, dynamic> map) {
    return HybridRunbookWorkerArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      hybridRunbookWorkerGroupName: pulumi.Input.fromValue(map['hybridRunbookWorkerGroupName'] as String),
      hybridRunbookWorkerId: (() { final guardedValue = map['hybridRunbookWorkerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      vmResourceId: (() { final guardedValue = map['vmResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

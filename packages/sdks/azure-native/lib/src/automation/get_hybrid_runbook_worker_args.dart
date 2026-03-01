// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_hybrid_runbook_worker_args_doc}
/// Arguments for getHybridRunbookWorker.
/// {@endtemplate}
/// {@macro pulumi_automation_get_hybrid_runbook_worker_args_doc}
class GetHybridRunbookWorkerArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The hybrid runbook worker group name
  final pulumi.Input<String> hybridRunbookWorkerGroupName;
  /// The hybrid runbook worker id
  final pulumi.Input<String> hybridRunbookWorkerId;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHybridRunbookWorkerArgs].
  /// [automationAccountName] The name of the automation account.
  /// [hybridRunbookWorkerGroupName] The hybrid runbook worker group name
  /// [hybridRunbookWorkerId] The hybrid runbook worker id
  /// [resourceGroupName] Name of an Azure Resource group.
  GetHybridRunbookWorkerArgs({
    required pulumi.Output<String> automationAccountName,
    required pulumi.Output<String> hybridRunbookWorkerGroupName,
    required pulumi.Output<String> hybridRunbookWorkerId,
    required pulumi.Output<String> resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      hybridRunbookWorkerGroupName = pulumi.Input.asInput<String>(hybridRunbookWorkerGroupName),
      hybridRunbookWorkerId = pulumi.Input.asInput<String>(hybridRunbookWorkerId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'hybridRunbookWorkerGroupName': hybridRunbookWorkerGroupName,
      'hybridRunbookWorkerId': hybridRunbookWorkerId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHybridRunbookWorkerArgs.fromMap(Map<String, dynamic> map) {
    return GetHybridRunbookWorkerArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      hybridRunbookWorkerGroupName: pulumi.Output.create<String>(map['hybridRunbookWorkerGroupName'] as String),
      hybridRunbookWorkerId: pulumi.Output.create<String>(map['hybridRunbookWorkerId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


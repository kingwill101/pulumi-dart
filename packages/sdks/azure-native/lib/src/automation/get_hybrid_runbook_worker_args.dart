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
    required this.automationAccountName,
    required this.hybridRunbookWorkerGroupName,
    required this.hybridRunbookWorkerId,
    required this.resourceGroupName,
  });

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
      automationAccountName: pulumi.Input.fromValue(
        map['automationAccountName'] as String,
      ),
      hybridRunbookWorkerGroupName: pulumi.Input.fromValue(
        map['hybridRunbookWorkerGroupName'] as String,
      ),
      hybridRunbookWorkerId: pulumi.Input.fromValue(
        map['hybridRunbookWorkerId'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}

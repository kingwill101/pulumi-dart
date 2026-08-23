// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_hybrid_runbook_worker_group_args_doc}
/// Arguments for getHybridRunbookWorkerGroup.
/// {@endtemplate}
/// {@macro pulumi_automation_get_hybrid_runbook_worker_group_args_doc}
class GetHybridRunbookWorkerGroupArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The hybrid runbook worker group name
  final pulumi.Input<String> hybridRunbookWorkerGroupName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHybridRunbookWorkerGroupArgs].
  /// [automationAccountName] The name of the automation account.
  /// [hybridRunbookWorkerGroupName] The hybrid runbook worker group name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetHybridRunbookWorkerGroupArgs({
    required this.automationAccountName,
    required this.hybridRunbookWorkerGroupName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'hybridRunbookWorkerGroupName': hybridRunbookWorkerGroupName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHybridRunbookWorkerGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetHybridRunbookWorkerGroupArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      hybridRunbookWorkerGroupName: pulumi.Input.fromValue(map['hybridRunbookWorkerGroupName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

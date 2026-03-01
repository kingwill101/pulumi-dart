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
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHybridRunbookWorkerGroupArgs].
  /// [automationAccountName] The name of the automation account.
  /// [hybridRunbookWorkerGroupName] The hybrid runbook worker group name
  /// [resourceGroupName] Name of an Azure Resource group.
  GetHybridRunbookWorkerGroupArgs({
    required pulumi.Output<String> automationAccountName,
    required pulumi.Output<String> hybridRunbookWorkerGroupName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      hybridRunbookWorkerGroupName = pulumi.Input.asInput<String>(hybridRunbookWorkerGroupName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'hybridRunbookWorkerGroupName': hybridRunbookWorkerGroupName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHybridRunbookWorkerGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetHybridRunbookWorkerGroupArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      hybridRunbookWorkerGroupName: pulumi.Output.create<String>(map['hybridRunbookWorkerGroupName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


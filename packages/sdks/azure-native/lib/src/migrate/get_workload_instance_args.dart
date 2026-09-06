// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_workload_instance_args_doc}
/// Arguments for getWorkloadInstance.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_workload_instance_args_doc}
class GetWorkloadInstanceArgs {
  /// ModernizeProject name.
  final pulumi.Input<String> modernizeProjectName;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Subscription Id in which project was created.
  final pulumi.Input<String?>? subscriptionId;
  /// Workload instance name.
  final pulumi.Input<String> workloadInstanceName;

  /// Creates a new [GetWorkloadInstanceArgs].
  /// [modernizeProjectName] ModernizeProject name.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  /// [subscriptionId] Azure Subscription Id in which project was created.
  /// [workloadInstanceName] Workload instance name.
  const GetWorkloadInstanceArgs({
    required this.modernizeProjectName,
    required this.resourceGroupName,
    this.subscriptionId,
    required this.workloadInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modernizeProjectName': modernizeProjectName,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
      'workloadInstanceName': workloadInstanceName,
    };
  }

  factory GetWorkloadInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadInstanceArgs(
      modernizeProjectName: pulumi.Input.fromValue(map['modernizeProjectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadInstanceName: pulumi.Input.fromValue(map['workloadInstanceName'] as String),
    );
  }
}

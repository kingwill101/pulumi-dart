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
  final pulumi.Input<String>? subscriptionId;
  /// Workload instance name.
  final pulumi.Input<String> workloadInstanceName;

  /// Creates a new [GetWorkloadInstanceArgs].
  /// [modernizeProjectName] ModernizeProject name.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  /// [subscriptionId] Azure Subscription Id in which project was created.
  /// [workloadInstanceName] Workload instance name.
  GetWorkloadInstanceArgs({
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
      modernizeProjectName: (map['modernizeProjectName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      workloadInstanceName: (map['workloadInstanceName'] as String).input(),
    );
  }
}


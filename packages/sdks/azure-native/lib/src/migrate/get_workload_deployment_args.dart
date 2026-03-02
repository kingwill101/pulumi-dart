// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_workload_deployment_args_doc}
/// Arguments for getWorkloadDeployment.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_workload_deployment_args_doc}
class GetWorkloadDeploymentArgs {
  /// ModernizeProject name.
  final pulumi.Input<String> modernizeProjectName;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Subscription Id in which project was created.
  final pulumi.Input<String>? subscriptionId;
  /// Workload deployment name.
  final pulumi.Input<String> workloadDeploymentName;

  /// Creates a new [GetWorkloadDeploymentArgs].
  /// [modernizeProjectName] ModernizeProject name.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  /// [subscriptionId] Azure Subscription Id in which project was created.
  /// [workloadDeploymentName] Workload deployment name.
  GetWorkloadDeploymentArgs({
    required this.modernizeProjectName,
    required this.resourceGroupName,
    this.subscriptionId,
    required this.workloadDeploymentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modernizeProjectName': modernizeProjectName,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
      'workloadDeploymentName': workloadDeploymentName,
    };
  }

  factory GetWorkloadDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadDeploymentArgs(
      modernizeProjectName: (map['modernizeProjectName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      workloadDeploymentName: (map['workloadDeploymentName'] as String).input(),
    );
  }
}


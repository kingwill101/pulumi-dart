// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_workload_deployment_secret_configurations_args_doc}
/// Arguments for getWorkloadDeploymentSecretConfigurations.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_workload_deployment_secret_configurations_args_doc}
class GetWorkloadDeploymentSecretConfigurationsArgs {
  /// ModernizeProject name.
  final pulumi.Input<String> modernizeProjectName;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Subscription Id in which project was created.
  final pulumi.Input<String>? subscriptionId;
  /// Workload deployment name.
  final pulumi.Input<String> workloadDeploymentName;

  /// Creates a new [GetWorkloadDeploymentSecretConfigurationsArgs].
  /// [modernizeProjectName] ModernizeProject name.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  /// [subscriptionId] Azure Subscription Id in which project was created.
  /// [workloadDeploymentName] Workload deployment name.
  GetWorkloadDeploymentSecretConfigurationsArgs({
    required pulumi.Output<String> modernizeProjectName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? subscriptionId,
    required pulumi.Output<String> workloadDeploymentName,
  }) :
      modernizeProjectName = pulumi.Input.asInput<String>(modernizeProjectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      workloadDeploymentName = pulumi.Input.asInput<String>(workloadDeploymentName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modernizeProjectName': modernizeProjectName,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
      'workloadDeploymentName': workloadDeploymentName,
    };
  }

  factory GetWorkloadDeploymentSecretConfigurationsArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadDeploymentSecretConfigurationsArgs(
      modernizeProjectName: pulumi.Output.create<String>(map['modernizeProjectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
      workloadDeploymentName: pulumi.Output.create<String>(map['workloadDeploymentName'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_deployment_model_properties.dart';

/// {@template pulumi_migrate_workload_deployment_args_doc}
/// The set of arguments for WorkloadDeployment.
/// {@endtemplate}
/// {@macro pulumi_migrate_workload_deployment_args_doc}
class WorkloadDeploymentArgs {
  /// ModernizeProject name.
  final pulumi.Input<String> modernizeProjectName;
  /// Workload deployment model properties.
  final pulumi.Input<WorkloadDeploymentModelProperties?>? properties;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Subscription Id in which project was created.
  final pulumi.Input<String?>? subscriptionId;
  /// Gets or sets the resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Workload deployment name.
  final pulumi.Input<String?>? workloadDeploymentName;

  /// Creates a new [WorkloadDeploymentArgs].
  /// [modernizeProjectName] ModernizeProject name.
  /// [properties] Workload deployment model properties.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  /// [subscriptionId] Azure Subscription Id in which project was created.
  /// [tags] Gets or sets the resource tags.
  /// [workloadDeploymentName] Workload deployment name.
  const WorkloadDeploymentArgs({
    required this.modernizeProjectName,
    this.properties,
    required this.resourceGroupName,
    this.subscriptionId,
    this.tags,
    this.workloadDeploymentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modernizeProjectName': modernizeProjectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<WorkloadDeploymentModelProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
      'tags': ?tags,
      'workloadDeploymentName': ?workloadDeploymentName,
    };
  }

  factory WorkloadDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadDeploymentArgs(
      modernizeProjectName: pulumi.Input.fromValue(map['modernizeProjectName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadDeploymentModelProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workloadDeploymentName: (() { final guardedValue = map['workloadDeploymentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

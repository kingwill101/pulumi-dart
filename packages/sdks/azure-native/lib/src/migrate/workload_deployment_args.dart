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
  final pulumi.Input<WorkloadDeploymentModelProperties>? properties;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Subscription Id in which project was created.
  final pulumi.Input<String>? subscriptionId;
  /// Gets or sets the resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Workload deployment name.
  final pulumi.Input<String>? workloadDeploymentName;

  /// Creates a new [WorkloadDeploymentArgs].
  /// [modernizeProjectName] ModernizeProject name.
  /// [properties] Workload deployment model properties.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  /// [subscriptionId] Azure Subscription Id in which project was created.
  /// [tags] Gets or sets the resource tags.
  /// [workloadDeploymentName] Workload deployment name.
  WorkloadDeploymentArgs({
    required pulumi.Output<String> modernizeProjectName,
    pulumi.Output<WorkloadDeploymentModelProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? subscriptionId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? workloadDeploymentName,
  }) :
      modernizeProjectName = pulumi.Input.asInput<String>(modernizeProjectName),
      properties = pulumi.Input.asOptionalInput<WorkloadDeploymentModelProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workloadDeploymentName = pulumi.Input.asOptionalInput<String>(workloadDeploymentName);

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
      modernizeProjectName: pulumi.Output.create<String>(map['modernizeProjectName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<WorkloadDeploymentModelProperties>(WorkloadDeploymentModelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workloadDeploymentName: map['workloadDeploymentName'] == null ? null : pulumi.Output.create<String>(map['workloadDeploymentName'] as String),
    );
  }
}


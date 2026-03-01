// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_instance_model_properties.dart';

/// {@template pulumi_migrate_workload_instance_args_doc}
/// The set of arguments for WorkloadInstance.
/// {@endtemplate}
/// {@macro pulumi_migrate_workload_instance_args_doc}
class WorkloadInstanceArgs {
  /// ModernizeProject name.
  final pulumi.Input<String> modernizeProjectName;
  /// Workload instance model properties.
  final pulumi.Input<WorkloadInstanceModelProperties>? properties;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Subscription Id in which project was created.
  final pulumi.Input<String>? subscriptionId;
  /// Gets or sets the resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Workload instance name.
  final pulumi.Input<String>? workloadInstanceName;

  /// Creates a new [WorkloadInstanceArgs].
  /// [modernizeProjectName] ModernizeProject name.
  /// [properties] Workload instance model properties.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  /// [subscriptionId] Azure Subscription Id in which project was created.
  /// [tags] Gets or sets the resource tags.
  /// [workloadInstanceName] Workload instance name.
  WorkloadInstanceArgs({
    required pulumi.Output<String> modernizeProjectName,
    pulumi.Output<WorkloadInstanceModelProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? subscriptionId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? workloadInstanceName,
  }) :
      modernizeProjectName = pulumi.Input.asInput<String>(modernizeProjectName),
      properties = pulumi.Input.asOptionalInput<WorkloadInstanceModelProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workloadInstanceName = pulumi.Input.asOptionalInput<String>(workloadInstanceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modernizeProjectName': modernizeProjectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<WorkloadInstanceModelProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
      'tags': ?tags,
      'workloadInstanceName': ?workloadInstanceName,
    };
  }

  factory WorkloadInstanceArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadInstanceArgs(
      modernizeProjectName: pulumi.Output.create<String>(map['modernizeProjectName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<WorkloadInstanceModelProperties>(WorkloadInstanceModelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workloadInstanceName: map['workloadInstanceName'] == null ? null : pulumi.Output.create<String>(map['workloadInstanceName'] as String),
    );
  }
}


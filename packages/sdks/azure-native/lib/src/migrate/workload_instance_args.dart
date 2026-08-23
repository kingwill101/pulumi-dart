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
  const WorkloadInstanceArgs({
    required this.modernizeProjectName,
    this.properties,
    required this.resourceGroupName,
    this.subscriptionId,
    this.tags,
    this.workloadInstanceName,
  });

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
      modernizeProjectName: pulumi.Input.fromValue(map['modernizeProjectName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadInstanceModelProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workloadInstanceName: (() { final guardedValue = map['workloadInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

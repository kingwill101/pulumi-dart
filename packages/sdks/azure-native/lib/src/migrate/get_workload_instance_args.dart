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
    required pulumi.Output<String> modernizeProjectName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? subscriptionId,
    required pulumi.Output<String> workloadInstanceName,
  }) :
      modernizeProjectName = pulumi.Input.asInput<String>(modernizeProjectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      workloadInstanceName = pulumi.Input.asInput<String>(workloadInstanceName);

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
      modernizeProjectName: pulumi.Output.create<String>(map['modernizeProjectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
      workloadInstanceName: pulumi.Output.create<String>(map['workloadInstanceName'] as String),
    );
  }
}


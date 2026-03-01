// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_fleet_manager_get_fleet_manager_args_doc}
/// Arguments for getFleetManager.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_fleet_manager_get_fleet_manager_args_doc}
class GetFleetManagerArgs {
  /// The name of this Kubernetes Fleet Manager.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Kubernetes Fleet Manager exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFleetManagerArgs].
  /// [name] The name of this Kubernetes Fleet Manager.
  /// [resourceGroupName] The name of the Resource Group where the Kubernetes Fleet Manager exists.
  GetFleetManagerArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFleetManagerArgs.fromMap(Map<String, dynamic> map) {
    return GetFleetManagerArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


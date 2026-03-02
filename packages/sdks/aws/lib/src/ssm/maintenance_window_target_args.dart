// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_target_target.dart';

/// {@template pulumi_ssm_maintenance_window_target_maintenance_window_target_args_doc}
/// The set of arguments for MaintenanceWindowTarget.
/// {@endtemplate}
/// {@macro pulumi_ssm_maintenance_window_target_maintenance_window_target_args_doc}
class MaintenanceWindowTargetArgs {
  /// The description of the maintenance window target.
  final pulumi.Input<String>? description;
  /// The name of the maintenance window target.
  final pulumi.Input<String>? name;
  /// User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this Maintenance Window.
  final pulumi.Input<String>? ownerInformation;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The type of target being registered with the Maintenance Window. Possible values are `INSTANCE` and `RESOURCE_GROUP`.
  final pulumi.Input<String> resourceType;
  /// The targets to register with the maintenance window. In other words, the instances to run commands on when the maintenance window runs. You can specify targets using instance IDs, resource group names, or tags that have been applied to instances. For more information about these examples formats see
  /// (https://docs.aws.amazon.com/systems-manager/latest/userguide/mw-cli-tutorial-targets-examples.html)
  final pulumi.Input<List<MaintenanceWindowTargetTarget>> targets;
  /// The Id of the maintenance window to register the target with.
  final pulumi.Input<String> windowId;

  /// Creates a new [MaintenanceWindowTargetArgs].
  /// [description] The description of the maintenance window target.
  /// [name] The name of the maintenance window target.
  /// [ownerInformation] User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this Maintenance Window.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceType] The type of target being registered with the Maintenance Window. Possible values are `INSTANCE` and `RESOURCE_GROUP`.
  /// [targets] The targets to register with the maintenance window. In other words, the instances to run commands on when the maintenance window runs. You can specify targets using instance IDs, resource group names, or tags that have been applied to instances. For more information about these examples formats see
  /// [windowId] The Id of the maintenance window to register the target with.
  MaintenanceWindowTargetArgs({
    this.description,
    this.name,
    this.ownerInformation,
    this.region,
    required this.resourceType,
    required this.targets,
    required this.windowId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'ownerInformation': ?ownerInformation,
      'region': ?region,
      'resourceType': resourceType,
      'targets': pulumi.Input.mapInputValue<List<MaintenanceWindowTargetTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<MaintenanceWindowTargetTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windowId': windowId,
    };
  }

  factory MaintenanceWindowTargetArgs.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTargetArgs(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      ownerInformation: map['ownerInformation'] == null ? null : ((map['ownerInformation'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceType: (map['resourceType'] as String).input(),
      targets: (pulumi.Input.decodeList<MaintenanceWindowTargetTarget>(map['targets']!, (value) => MaintenanceWindowTargetTarget.fromMap((value as Map).cast<String, dynamic>()))).input(),
      windowId: (map['windowId'] as String).input(),
    );
  }
}


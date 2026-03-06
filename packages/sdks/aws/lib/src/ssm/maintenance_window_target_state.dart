// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_target_target.dart';

/// Input properties used for looking up and filtering MaintenanceWindowTarget resources.
class MaintenanceWindowTargetState {
  /// The description of the maintenance window target.
  final pulumi.Input<String>? description;
  /// The name of the maintenance window target.
  final pulumi.Input<String>? name;
  /// User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this Maintenance Window.
  final pulumi.Input<String>? ownerInformation;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The type of target being registered with the Maintenance Window. Possible values are `INSTANCE` and `RESOURCE_GROUP`.
  final pulumi.Input<String>? resourceType;
  /// The targets to register with the maintenance window. In other words, the instances to run commands on when the maintenance window runs. You can specify targets using instance IDs, resource group names, or tags that have been applied to instances. For more information about these examples formats see
  /// (https://docs.aws.amazon.com/systems-manager/latest/userguide/mw-cli-tutorial-targets-examples.html)
  final pulumi.Input<List<MaintenanceWindowTargetTarget>>? targets;
  /// The Id of the maintenance window to register the target with.
  final pulumi.Input<String>? windowId;

  /// Creates a new [MaintenanceWindowTargetState].
  /// [description] The description of the maintenance window target.
  /// [name] The name of the maintenance window target.
  /// [ownerInformation] User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this Maintenance Window.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceType] The type of target being registered with the Maintenance Window. Possible values are `INSTANCE` and `RESOURCE_GROUP`.
  /// [targets] The targets to register with the maintenance window. In other words, the instances to run commands on when the maintenance window runs. You can specify targets using instance IDs, resource group names, or tags that have been applied to instances. For more information about these examples formats see
  /// [windowId] The Id of the maintenance window to register the target with.
  const MaintenanceWindowTargetState({
    this.description,
    this.name,
    this.ownerInformation,
    this.region,
    this.resourceType,
    this.targets,
    this.windowId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'ownerInformation': ?ownerInformation,
      'region': ?region,
      'resourceType': ?resourceType,
      'targets': ?pulumi.Input.mapOptionalInputValue<List<MaintenanceWindowTargetTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<MaintenanceWindowTargetTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windowId': ?windowId,
    };
  }

  factory MaintenanceWindowTargetState.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTargetState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerInformation: (() { final guardedValue = map['ownerInformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MaintenanceWindowTargetTarget>(guardedValue, (value) => MaintenanceWindowTargetTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
      windowId: (() { final guardedValue = map['windowId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


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
  MaintenanceWindowTargetState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownerInformation,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceType,
    pulumi.Output<List<MaintenanceWindowTargetTarget>>? targets,
    pulumi.Output<String>? windowId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerInformation = pulumi.Input.asOptionalInput<String>(ownerInformation),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      targets = pulumi.Input.asOptionalInput<List<MaintenanceWindowTargetTarget>>(targets),
      windowId = pulumi.Input.asOptionalInput<String>(windowId);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerInformation: map['ownerInformation'] == null ? null : pulumi.Output.create<String>(map['ownerInformation'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      targets: map['targets'] == null ? null : pulumi.Output.create<List<MaintenanceWindowTargetTarget>>(pulumi.Input.decodeList<MaintenanceWindowTargetTarget>(map['targets'], (value) => MaintenanceWindowTargetTarget.fromMap((value as Map).cast<String, dynamic>()))),
      windowId: map['windowId'] == null ? null : pulumi.Output.create<String>(map['windowId'] as String),
    );
  }
}


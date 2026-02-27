// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../maintenance_window_target_target/maintenance_window_target_target.dart';

/// The set of arguments for MaintenanceWindowTarget.
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
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final ownerInformationValue = ownerInformation;
    if (ownerInformationValue != null) {
      map['ownerInformation'] = ownerInformationValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceType'] = resourceType;
    map['targets'] = pulumi.Input.mapInputValue<
            List<MaintenanceWindowTargetTarget>, List<Map<String, dynamic>>>(
        targets,
        (value) => pulumi.Input.encodeList<MaintenanceWindowTargetTarget,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['windowId'] = windowId;
    return map;
  }

  factory MaintenanceWindowTargetArgs.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTargetArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      ownerInformation:
          pulumi.Input.asOptionalInput<String>(map['ownerInformation']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceType: pulumi.Input.asInput<String>(map['resourceType']),
      targets: pulumi.Input.asInput<List<MaintenanceWindowTargetTarget>>(
          map['targets']),
      windowId: pulumi.Input.asInput<String>(map['windowId']),
    );
  }
}

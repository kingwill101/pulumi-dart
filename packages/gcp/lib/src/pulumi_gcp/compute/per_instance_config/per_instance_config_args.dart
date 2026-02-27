// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../per_instance_config_preserved_state/per_instance_config_preserved_state.dart';

/// The set of arguments for PerInstanceConfig.
class PerInstanceConfigArgs {
  /// The instance group manager this instance config is part of.
  final pulumi.Input<String> instanceGroupManager;

  /// The minimal action to perform on the instance during an update.
  /// Default is `NONE`. Possible values are:
  /// * REPLACE
  /// * RESTART
  /// * REFRESH
  /// * NONE
  final pulumi.Input<String>? minimalAction;

  /// The most disruptive action to perform on the instance during an update.
  /// Default is `REPLACE`. Possible values are:
  /// * REPLACE
  /// * RESTART
  /// * REFRESH
  /// * NONE
  final pulumi.Input<String>? mostDisruptiveAllowedAction;

  /// The name for this per-instance config and its corresponding instance.
  final pulumi.Input<String>? name;

  /// The preserved state for this instance.
  /// Structure is documented below.
  final pulumi.Input<PerInstanceConfigPreservedState>? preservedState;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// When true, deleting this config will immediately remove the underlying instance.
  /// When false, deleting this config will use the behavior as determined by remove_instance_on_destroy.
  final pulumi.Input<bool>? removeInstanceOnDestroy;

  /// When true, deleting this config will immediately remove any specified state from the underlying instance.
  /// When false, deleting this config will *not* immediately remove any state from the underlying instance.
  /// State will be removed on the next instance recreation or update.
  final pulumi.Input<bool>? removeInstanceStateOnDestroy;

  /// Zone where the containing instance group manager is located
  final pulumi.Input<String>? zone;

  PerInstanceConfigArgs({
    required this.instanceGroupManager,
    this.minimalAction,
    this.mostDisruptiveAllowedAction,
    this.name,
    this.preservedState,
    this.project,
    this.removeInstanceOnDestroy,
    this.removeInstanceStateOnDestroy,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceGroupManager'] = instanceGroupManager;
    final minimalActionValue = minimalAction;
    if (minimalActionValue != null) {
      map['minimalAction'] = minimalActionValue;
    }
    final mostDisruptiveAllowedActionValue = mostDisruptiveAllowedAction;
    if (mostDisruptiveAllowedActionValue != null) {
      map['mostDisruptiveAllowedAction'] = mostDisruptiveAllowedActionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final preservedStateValue = preservedState;
    if (preservedStateValue != null) {
      map['preservedState'] = pulumi.Input.mapOptionalInputValue<
          PerInstanceConfigPreservedState,
          Map<String, dynamic>>(preservedStateValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final removeInstanceOnDestroyValue = removeInstanceOnDestroy;
    if (removeInstanceOnDestroyValue != null) {
      map['removeInstanceOnDestroy'] = removeInstanceOnDestroyValue;
    }
    final removeInstanceStateOnDestroyValue = removeInstanceStateOnDestroy;
    if (removeInstanceStateOnDestroyValue != null) {
      map['removeInstanceStateOnDestroy'] = removeInstanceStateOnDestroyValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory PerInstanceConfigArgs.fromMap(Map<String, dynamic> map) {
    return PerInstanceConfigArgs(
      instanceGroupManager:
          pulumi.Input.asInput<String>(map['instanceGroupManager']),
      minimalAction: pulumi.Input.asOptionalInput<String>(map['minimalAction']),
      mostDisruptiveAllowedAction: pulumi.Input.asOptionalInput<String>(
          map['mostDisruptiveAllowedAction']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      preservedState:
          pulumi.Input.asOptionalInput<PerInstanceConfigPreservedState>(
              map['preservedState']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      removeInstanceOnDestroy:
          pulumi.Input.asOptionalInput<bool>(map['removeInstanceOnDestroy']),
      removeInstanceStateOnDestroy: pulumi.Input.asOptionalInput<bool>(
          map['removeInstanceStateOnDestroy']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}

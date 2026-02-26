// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../per_instance_config_preserved_state/per_instance_config_preserved_state.dart';

/// The set of arguments for PerInstanceConfig.
class PerInstanceConfigArgs {
  /// The instance group manager this instance config is part of.
  final Input<String> instanceGroupManager;

  /// The minimal action to perform on the instance during an update.
  /// Default is `NONE`. Possible values are:
  /// * REPLACE
  /// * RESTART
  /// * REFRESH
  /// * NONE
  final Input<String>? minimalAction;

  /// The most disruptive action to perform on the instance during an update.
  /// Default is `REPLACE`. Possible values are:
  /// * REPLACE
  /// * RESTART
  /// * REFRESH
  /// * NONE
  final Input<String>? mostDisruptiveAllowedAction;

  /// The name for this per-instance config and its corresponding instance.
  final Input<String>? name;

  /// The preserved state for this instance.
  /// Structure is documented below.
  final Input<PerInstanceConfigPreservedState>? preservedState;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// When true, deleting this config will immediately remove the underlying instance.
  /// When false, deleting this config will use the behavior as determined by remove_instance_on_destroy.
  final Input<bool>? removeInstanceOnDestroy;

  /// When true, deleting this config will immediately remove any specified state from the underlying instance.
  /// When false, deleting this config will *not* immediately remove any state from the underlying instance.
  /// State will be removed on the next instance recreation or update.
  final Input<bool>? removeInstanceStateOnDestroy;

  /// Zone where the containing instance group manager is located
  final Input<String>? zone;

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
      map['preservedState'] = Input.mapOptionalInputValue<
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
      instanceGroupManager: Input.asInput<String>(map['instanceGroupManager']),
      minimalAction: Input.asOptionalInput<String>(map['minimalAction']),
      mostDisruptiveAllowedAction:
          Input.asOptionalInput<String>(map['mostDisruptiveAllowedAction']),
      name: Input.asOptionalInput<String>(map['name']),
      preservedState: Input.asOptionalInput<PerInstanceConfigPreservedState>(
          map['preservedState']),
      project: Input.asOptionalInput<String>(map['project']),
      removeInstanceOnDestroy:
          Input.asOptionalInput<bool>(map['removeInstanceOnDestroy']),
      removeInstanceStateOnDestroy:
          Input.asOptionalInput<bool>(map['removeInstanceStateOnDestroy']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}

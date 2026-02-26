// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../region_per_instance_config_preserved_state/region_per_instance_config_preserved_state.dart';

/// The set of arguments for RegionPerInstanceConfig.
class RegionPerInstanceConfigArgs {
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
  final Input<RegionPerInstanceConfigPreservedState>? preservedState;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Region where the containing instance group manager is located
  final Input<String>? region;

  /// The region instance group manager this instance config is part of.
  final Input<String> regionInstanceGroupManager;

  /// When true, deleting this config will immediately remove the underlying instance.
  /// When false, deleting this config will use the behavior as determined by remove_instance_on_destroy.
  final Input<bool>? removeInstanceOnDestroy;

  /// When true, deleting this config will immediately remove any specified state from the underlying instance.
  /// When false, deleting this config will *not* immediately remove any state from the underlying instance.
  /// State will be removed on the next instance recreation or update.
  final Input<bool>? removeInstanceStateOnDestroy;

  RegionPerInstanceConfigArgs({
    this.minimalAction,
    this.mostDisruptiveAllowedAction,
    this.name,
    this.preservedState,
    this.project,
    this.region,
    required this.regionInstanceGroupManager,
    this.removeInstanceOnDestroy,
    this.removeInstanceStateOnDestroy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
          RegionPerInstanceConfigPreservedState,
          Map<String, dynamic>>(preservedStateValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['regionInstanceGroupManager'] = regionInstanceGroupManager;
    final removeInstanceOnDestroyValue = removeInstanceOnDestroy;
    if (removeInstanceOnDestroyValue != null) {
      map['removeInstanceOnDestroy'] = removeInstanceOnDestroyValue;
    }
    final removeInstanceStateOnDestroyValue = removeInstanceStateOnDestroy;
    if (removeInstanceStateOnDestroyValue != null) {
      map['removeInstanceStateOnDestroy'] = removeInstanceStateOnDestroyValue;
    }
    return map;
  }

  factory RegionPerInstanceConfigArgs.fromMap(Map<String, dynamic> map) {
    return RegionPerInstanceConfigArgs(
      minimalAction: Input.asOptionalInput<String>(map['minimalAction']),
      mostDisruptiveAllowedAction:
          Input.asOptionalInput<String>(map['mostDisruptiveAllowedAction']),
      name: Input.asOptionalInput<String>(map['name']),
      preservedState:
          Input.asOptionalInput<RegionPerInstanceConfigPreservedState>(
              map['preservedState']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      regionInstanceGroupManager:
          Input.asInput<String>(map['regionInstanceGroupManager']),
      removeInstanceOnDestroy:
          Input.asOptionalInput<bool>(map['removeInstanceOnDestroy']),
      removeInstanceStateOnDestroy:
          Input.asOptionalInput<bool>(map['removeInstanceStateOnDestroy']),
    );
  }
}

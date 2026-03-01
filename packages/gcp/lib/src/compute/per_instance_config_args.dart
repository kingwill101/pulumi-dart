// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'per_instance_config_preserved_state.dart';

/// {@template pulumi_compute_per_instance_config_per_instance_config_args_doc}
/// The set of arguments for PerInstanceConfig.
/// {@endtemplate}
/// {@macro pulumi_compute_per_instance_config_per_instance_config_args_doc}
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

  /// Creates a new [PerInstanceConfigArgs].
  /// [instanceGroupManager] The instance group manager this instance config is part of.
  /// [minimalAction] The minimal action to perform on the instance during an update.
  /// [mostDisruptiveAllowedAction] The most disruptive action to perform on the instance during an update.
  /// [name] The name for this per-instance config and its corresponding instance.
  /// [preservedState] The preserved state for this instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [removeInstanceOnDestroy] When true, deleting this config will immediately remove the underlying instance.
  /// [removeInstanceStateOnDestroy] When true, deleting this config will immediately remove any specified state from the underlying instance.
  /// [zone] Zone where the containing instance group manager is located
  PerInstanceConfigArgs({
    required String instanceGroupManager,
    String? minimalAction,
    String? mostDisruptiveAllowedAction,
    String? name,
    PerInstanceConfigPreservedState? preservedState,
    String? project,
    bool? removeInstanceOnDestroy,
    bool? removeInstanceStateOnDestroy,
    String? zone,
  }) : instanceGroupManager = pulumi.Input.asInput<String>(
         instanceGroupManager,
       ),
       minimalAction = pulumi.Input.asOptionalInput<String>(minimalAction),
       mostDisruptiveAllowedAction = pulumi.Input.asOptionalInput<String>(
         mostDisruptiveAllowedAction,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       preservedState =
           pulumi.Input.asOptionalInput<PerInstanceConfigPreservedState>(
             preservedState,
           ),
       project = pulumi.Input.asOptionalInput<String>(project),
       removeInstanceOnDestroy = pulumi.Input.asOptionalInput<bool>(
         removeInstanceOnDestroy,
       ),
       removeInstanceStateOnDestroy = pulumi.Input.asOptionalInput<bool>(
         removeInstanceStateOnDestroy,
       ),
       zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceGroupManager': instanceGroupManager,
      'minimalAction': ?minimalAction,
      'mostDisruptiveAllowedAction': ?mostDisruptiveAllowedAction,
      'name': ?name,
      'preservedState':
          ?pulumi.Input.mapOptionalInputValue<
            PerInstanceConfigPreservedState,
            Map<String, dynamic>
          >(preservedState, (value) => value.toMap()),
      'project': ?project,
      'removeInstanceOnDestroy': ?removeInstanceOnDestroy,
      'removeInstanceStateOnDestroy': ?removeInstanceStateOnDestroy,
      'zone': ?zone,
    };
  }

  factory PerInstanceConfigArgs.fromMap(Map<String, dynamic> map) {
    return PerInstanceConfigArgs(
      instanceGroupManager: map['instanceGroupManager'] as String,
      minimalAction: map['minimalAction'] == null
          ? null
          : map['minimalAction'] as String,
      mostDisruptiveAllowedAction: map['mostDisruptiveAllowedAction'] == null
          ? null
          : map['mostDisruptiveAllowedAction'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      preservedState: map['preservedState'] == null
          ? null
          : PerInstanceConfigPreservedState.fromMap(
              (map['preservedState'] as Map).cast<String, dynamic>(),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      removeInstanceOnDestroy: map['removeInstanceOnDestroy'] == null
          ? null
          : map['removeInstanceOnDestroy'] as bool,
      removeInstanceStateOnDestroy: map['removeInstanceStateOnDestroy'] == null
          ? null
          : map['removeInstanceStateOnDestroy'] as bool,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

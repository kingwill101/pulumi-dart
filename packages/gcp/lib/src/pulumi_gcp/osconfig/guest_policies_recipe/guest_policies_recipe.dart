// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../guest_policies_recipe_artifact/guest_policies_recipe_artifact.dart';
import '../guest_policies_recipe_install_step/guest_policies_recipe_install_step.dart';
import '../guest_policies_recipe_update_step/guest_policies_recipe_update_step.dart';

class GuestPoliciesRecipe {
  /// Resources available to be used in the steps in the recipe.
  /// Structure is documented below.
  final List<GuestPoliciesRecipeArtifact>? artifacts;

  /// Default is INSTALLED. The desired state the agent should maintain for this recipe.
  /// INSTALLED: The software recipe is installed on the instance but won't be updated to new versions.
  /// INSTALLED_KEEP_UPDATED: The software recipe is installed on the instance. The recipe is updated to a higher version,
  /// if a higher version of the recipe is assigned to this instance.
  /// REMOVE: Remove is unsupported for software recipes and attempts to create or update a recipe to the REMOVE state is rejected.
  /// Default value is `INSTALLED`.
  /// Possible values are: `INSTALLED`, `UPDATED`, `REMOVED`.
  final String? desiredState;

  /// Actions to be taken for installing this recipe. On failure it stops executing steps and does not attempt another installation.
  /// Any steps taken (including partially completed steps) are not rolled back.
  /// Structure is documented below.
  final List<GuestPoliciesRecipeInstallStep>? installSteps;

  /// Unique identifier for the recipe. Only one recipe with a given name is installed on an instance.
  /// Names are also used to identify resources which helps to determine whether guest policies have conflicts.
  /// This means that requests to create multiple recipes with the same name and version are rejected since they
  /// could potentially have conflicting assignments.
  final String name;

  /// Actions to be taken for updating this recipe. On failure it stops executing steps and does not attempt another update for this recipe.
  /// Any steps taken (including partially completed steps) are not rolled back.
  /// Structure is documented below.
  final List<GuestPoliciesRecipeUpdateStep>? updateSteps;

  /// The version of this software recipe. Version can be up to 4 period separated numbers (e.g. 12.34.56.78).
  final String? version;

  GuestPoliciesRecipe({
    this.artifacts,
    this.desiredState,
    this.installSteps,
    required this.name,
    this.updateSteps,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final artifactsValue = artifacts;
    if (artifactsValue != null) {
      map['artifacts'] =
          Input.encodeList<GuestPoliciesRecipeArtifact, Map<String, dynamic>>(
              artifactsValue, (value) => value.toMap());
    }
    final desiredStateValue = desiredState;
    if (desiredStateValue != null) {
      map['desiredState'] = desiredStateValue;
    }
    final installStepsValue = installSteps;
    if (installStepsValue != null) {
      map['installSteps'] = Input.encodeList<GuestPoliciesRecipeInstallStep,
          Map<String, dynamic>>(installStepsValue, (value) => value.toMap());
    }
    map['name'] = name;
    final updateStepsValue = updateSteps;
    if (updateStepsValue != null) {
      map['updateSteps'] =
          Input.encodeList<GuestPoliciesRecipeUpdateStep, Map<String, dynamic>>(
              updateStepsValue, (value) => value.toMap());
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GuestPoliciesRecipe.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesRecipe(
      artifacts: map['artifacts'] == null
          ? null
          : Input.decodeList<GuestPoliciesRecipeArtifact>(
              map['artifacts'],
              (value) => GuestPoliciesRecipeArtifact.fromMap(
                  (value as Map).cast<String, dynamic>())),
      desiredState:
          map['desiredState'] == null ? null : map['desiredState'] as String,
      installSteps: map['installSteps'] == null
          ? null
          : Input.decodeList<GuestPoliciesRecipeInstallStep>(
              map['installSteps'],
              (value) => GuestPoliciesRecipeInstallStep.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      updateSteps: map['updateSteps'] == null
          ? null
          : Input.decodeList<GuestPoliciesRecipeUpdateStep>(
              map['updateSteps'],
              (value) => GuestPoliciesRecipeUpdateStep.fromMap(
                  (value as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

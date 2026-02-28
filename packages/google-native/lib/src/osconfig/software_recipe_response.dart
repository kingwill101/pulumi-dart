// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'software_recipe_artifact_response.dart';
import 'software_recipe_step_response.dart';

/// A software recipe is a set of instructions for installing and configuring a piece of software. It consists of a set of artifacts that are downloaded, and a set of steps that install, configure, and/or update the software. Recipes support installing and updating software from artifacts in the following formats: Zip archive, Tar archive, Windows MSI, Debian package, and RPM package. Additionally, recipes support executing a script (either defined in a file or directly in this api) in bash, sh, cmd, and powershell. Updating a software recipe If a recipe is assigned to an instance and there is a recipe with the same name but a lower version already installed and the assigned state of the recipe is `UPDATED`, then the recipe is updated to the new version. Script Working Directories Each script or execution step is run in its own temporary directory which is deleted after completing the step.
class SoftwareRecipeResponse {
  /// Resources available to be used in the steps in the recipe.
  final List<SoftwareRecipeArtifactResponse> artifacts;

  /// Default is INSTALLED. The desired state the agent should maintain for this recipe. INSTALLED: The software recipe is installed on the instance but won't be updated to new versions. UPDATED: The software recipe is installed on the instance. The recipe is updated to a higher version, if a higher version of the recipe is assigned to this instance. REMOVE: Remove is unsupported for software recipes and attempts to create or update a recipe to the REMOVE state is rejected.
  final String desiredState;

  /// Actions to be taken for installing this recipe. On failure it stops executing steps and does not attempt another installation. Any steps taken (including partially completed steps) are not rolled back.
  final List<SoftwareRecipeStepResponse> installSteps;

  /// Unique identifier for the recipe. Only one recipe with a given name is installed on an instance. Names are also used to identify resources which helps to determine whether guest policies have conflicts. This means that requests to create multiple recipes with the same name and version are rejected since they could potentially have conflicting assignments.
  final String name;

  /// Actions to be taken for updating this recipe. On failure it stops executing steps and does not attempt another update for this recipe. Any steps taken (including partially completed steps) are not rolled back.
  final List<SoftwareRecipeStepResponse> updateSteps;

  /// The version of this software recipe. Version can be up to 4 period separated numbers (e.g. 12.34.56.78).
  final String version;

  /// Creates a new [SoftwareRecipeResponse].
  /// [artifacts] Resources available to be used in the steps in the recipe.
  /// [desiredState] Default is INSTALLED. The desired state the agent should maintain for this recipe. INSTALLED: The software recipe is installed on the instance but won't be updated to new versions. UPDATED: The software recipe is installed on the instance. The recipe is updated to a higher version, if a higher version of the recipe is assigned to this instance. REMOVE: Remove is unsupported for software recipes and attempts to create or update a recipe to the REMOVE state is rejected.
  /// [installSteps] Actions to be taken for installing this recipe. On failure it stops executing steps and does not attempt another installation. Any steps taken (including partially completed steps) are not rolled back.
  /// [name] Unique identifier for the recipe. Only one recipe with a given name is installed on an instance. Names are also used to identify resources which helps to determine whether guest policies have conflicts. This means that requests to create multiple recipes with the same name and version are rejected since they could potentially have conflicting assignments.
  /// [updateSteps] Actions to be taken for updating this recipe. On failure it stops executing steps and does not attempt another update for this recipe. Any steps taken (including partially completed steps) are not rolled back.
  /// [version] The version of this software recipe. Version can be up to 4 period separated numbers (e.g. 12.34.56.78).
  SoftwareRecipeResponse({
    required this.artifacts,
    required this.desiredState,
    required this.installSteps,
    required this.name,
    required this.updateSteps,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['artifacts'] = pulumi.Input.encodeList<SoftwareRecipeArtifactResponse,
        Map<String, dynamic>>(artifacts, (value) => value.toMap());
    map['desiredState'] = desiredState;
    map['installSteps'] = pulumi.Input.encodeList<SoftwareRecipeStepResponse,
        Map<String, dynamic>>(installSteps, (value) => value.toMap());
    map['name'] = name;
    map['updateSteps'] = pulumi.Input.encodeList<SoftwareRecipeStepResponse,
        Map<String, dynamic>>(updateSteps, (value) => value.toMap());
    map['version'] = version;
    return map;
  }

  factory SoftwareRecipeResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeResponse(
      artifacts: pulumi.Input.decodeList<SoftwareRecipeArtifactResponse>(
          map['artifacts'],
          (value) => SoftwareRecipeArtifactResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      desiredState: map['desiredState'] as String,
      installSteps: pulumi.Input.decodeList<SoftwareRecipeStepResponse>(
          map['installSteps'],
          (value) => SoftwareRecipeStepResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      updateSteps: pulumi.Input.decodeList<SoftwareRecipeStepResponse>(
          map['updateSteps'],
          (value) => SoftwareRecipeStepResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      version: map['version'] as String,
    );
  }
}

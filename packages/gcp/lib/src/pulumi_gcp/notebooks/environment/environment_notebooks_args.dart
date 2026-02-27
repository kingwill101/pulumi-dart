// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../environment_container_image/environment_container_image.dart';
import '../environment_vm_image/environment_vm_image.dart';

/// The set of arguments for Environment.
class EnvironmentNotebooksArgs {
  /// Use a container image to start the notebook instance.
  /// Structure is documented below.
  final pulumi.Input<EnvironmentContainerImage>? containerImage;

  /// A brief description of this environment.
  final pulumi.Input<String>? description;

  /// Display name of this environment for the UI.
  final pulumi.Input<String>? displayName;

  /// A reference to the zone where the machine resides.
  final pulumi.Input<String> location;

  /// The name specified for the Environment instance.
  /// Format: projects/{project_id}/locations/{location}/environments/{environmentId}
  final pulumi.Input<String>? name;

  /// Path to a Bash script that automatically runs after a notebook instance fully boots up.
  /// The path must be a URL or Cloud Storage path. Example: "gs://path-to-file/file-name"
  final pulumi.Input<String>? postStartupScript;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Use a Compute Engine VM image to start the notebook instance.
  /// Structure is documented below.
  final pulumi.Input<EnvironmentVmImage>? vmImage;

  EnvironmentNotebooksArgs({
    this.containerImage,
    this.description,
    this.displayName,
    required this.location,
    this.name,
    this.postStartupScript,
    this.project,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerImageValue = containerImage;
    if (containerImageValue != null) {
      map['containerImage'] = pulumi.Input.mapOptionalInputValue<
          EnvironmentContainerImage,
          Map<String, dynamic>>(containerImageValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final postStartupScriptValue = postStartupScript;
    if (postStartupScriptValue != null) {
      map['postStartupScript'] = postStartupScriptValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final vmImageValue = vmImage;
    if (vmImageValue != null) {
      map['vmImage'] = pulumi.Input.mapOptionalInputValue<EnvironmentVmImage,
          Map<String, dynamic>>(vmImageValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnvironmentNotebooksArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentNotebooksArgs(
      containerImage: pulumi.Input.asOptionalInput<EnvironmentContainerImage>(
          map['containerImage']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      postStartupScript:
          pulumi.Input.asOptionalInput<String>(map['postStartupScript']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      vmImage: pulumi.Input.asOptionalInput<EnvironmentVmImage>(map['vmImage']),
    );
  }
}

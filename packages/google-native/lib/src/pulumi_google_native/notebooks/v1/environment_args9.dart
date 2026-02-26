// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'container_image.dart';
import 'vm_image.dart';

/// The set of arguments for Environment.
class EnvironmentArgs9 {
  /// Use a container image to start the notebook instance.
  final Input<ContainerImage>? containerImage;

  /// A brief description of this environment.
  final Input<String>? description;

  /// Display name of this environment for the UI.
  final Input<String>? displayName;

  /// Required. User-defined unique ID of this environment. The `environment_id` must be 1 to 63 characters long and contain only lowercase letters, numeric characters, and dashes. The first character must be a lowercase letter and the last character cannot be a dash.
  final Input<String> environmentId;
  final Input<String>? location;

  /// Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path. Example: `"gs://path-to-file/file-name"`
  final Input<String>? postStartupScript;
  final Input<String>? project;

  /// Use a Compute Engine VM image to start the notebook instance.
  final Input<VmImage>? vmImage;

  EnvironmentArgs9({
    this.containerImage,
    this.description,
    this.displayName,
    required this.environmentId,
    this.location,
    this.postStartupScript,
    this.project,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerImageValue = containerImage;
    if (containerImageValue != null) {
      map['containerImage'] =
          Input.mapOptionalInputValue<ContainerImage, Map<String, dynamic>>(
              containerImageValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['environmentId'] = environmentId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
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
      map['vmImage'] =
          Input.mapOptionalInputValue<VmImage, Map<String, dynamic>>(
              vmImageValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnvironmentArgs9.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs9(
      containerImage:
          Input.asOptionalInput<ContainerImage>(map['containerImage']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      environmentId: Input.asInput<String>(map['environmentId']),
      location: Input.asOptionalInput<String>(map['location']),
      postStartupScript:
          Input.asOptionalInput<String>(map['postStartupScript']),
      project: Input.asOptionalInput<String>(map['project']),
      vmImage: Input.asOptionalInput<VmImage>(map['vmImage']),
    );
  }
}

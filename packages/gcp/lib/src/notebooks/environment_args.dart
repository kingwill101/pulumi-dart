// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_container_image.dart';
import 'environment_vm_image.dart';

/// {@template pulumi_notebooks_environment_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_notebooks_environment_environment_args_doc}
class EnvironmentArgs {
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

  /// Creates a new [EnvironmentArgs].
  /// [containerImage] Use a container image to start the notebook instance.
  /// [description] A brief description of this environment.
  /// [displayName] Display name of this environment for the UI.
  /// [location] A reference to the zone where the machine resides.
  /// [name] The name specified for the Environment instance.
  /// [postStartupScript] Path to a Bash script that automatically runs after a notebook instance fully boots up.
  /// [project] The ID of the project in which the resource belongs.
  /// [vmImage] Use a Compute Engine VM image to start the notebook instance.
  EnvironmentArgs({
    EnvironmentContainerImage? containerImage,
    String? description,
    String? displayName,
    required String location,
    String? name,
    String? postStartupScript,
    String? project,
    EnvironmentVmImage? vmImage,
  }) : containerImage = pulumi.Input.asOptionalInput<EnvironmentContainerImage>(
         containerImage,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       location = pulumi.Input.asInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       postStartupScript = pulumi.Input.asOptionalInput<String>(
         postStartupScript,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       vmImage = pulumi.Input.asOptionalInput<EnvironmentVmImage>(vmImage);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImage':
          ?pulumi.Input.mapOptionalInputValue<
            EnvironmentContainerImage,
            Map<String, dynamic>
          >(containerImage, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'location': location,
      'name': ?name,
      'postStartupScript': ?postStartupScript,
      'project': ?project,
      'vmImage':
          ?pulumi.Input.mapOptionalInputValue<
            EnvironmentVmImage,
            Map<String, dynamic>
          >(vmImage, (value) => value.toMap()),
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      containerImage: map['containerImage'] == null
          ? null
          : EnvironmentContainerImage.fromMap(
              (map['containerImage'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      postStartupScript: map['postStartupScript'] == null
          ? null
          : map['postStartupScript'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      vmImage: map['vmImage'] == null
          ? null
          : EnvironmentVmImage.fromMap(
              (map['vmImage'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

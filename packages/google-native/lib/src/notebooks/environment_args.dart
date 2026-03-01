// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_image.dart';
import 'vm_image.dart';

/// {@template pulumi_notebooks_v1_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_notebooks_v1_environment_args_doc}
class EnvironmentArgs {
  /// Use a container image to start the notebook instance.
  final pulumi.Input<ContainerImage>? containerImage;

  /// A brief description of this environment.
  final pulumi.Input<String>? description;

  /// Display name of this environment for the UI.
  final pulumi.Input<String>? displayName;

  /// Required. User-defined unique ID of this environment. The `environment_id` must be 1 to 63 characters long and contain only lowercase letters, numeric characters, and dashes. The first character must be a lowercase letter and the last character cannot be a dash.
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String>? location;

  /// Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path. Example: `"gs://path-to-file/file-name"`
  final pulumi.Input<String>? postStartupScript;
  final pulumi.Input<String>? project;

  /// Use a Compute Engine VM image to start the notebook instance.
  final pulumi.Input<VmImage>? vmImage;

  /// Creates a new [EnvironmentArgs].
  /// [containerImage] Use a container image to start the notebook instance.
  /// [description] A brief description of this environment.
  /// [displayName] Display name of this environment for the UI.
  /// [environmentId] Required. User-defined unique ID of this environment. The `environment_id` must be 1 to 63 characters long and contain only lowercase letters, numeric characters, and dashes. The first character must be a lowercase letter and the last character cannot be a dash.
  /// [location] Optional.
  /// [postStartupScript] Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path. Example: `"gs://path-to-file/file-name"`
  /// [project] Optional.
  /// [vmImage] Use a Compute Engine VM image to start the notebook instance.
  EnvironmentArgs({
    ContainerImage? containerImage,
    String? description,
    String? displayName,
    required String environmentId,
    String? location,
    String? postStartupScript,
    String? project,
    VmImage? vmImage,
  }) : containerImage = pulumi.Input.asOptionalInput<ContainerImage>(
         containerImage,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       environmentId = pulumi.Input.asInput<String>(environmentId),
       location = pulumi.Input.asOptionalInput<String>(location),
       postStartupScript = pulumi.Input.asOptionalInput<String>(
         postStartupScript,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       vmImage = pulumi.Input.asOptionalInput<VmImage>(vmImage);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImage':
          ?pulumi.Input.mapOptionalInputValue<
            ContainerImage,
            Map<String, dynamic>
          >(containerImage, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'environmentId': environmentId,
      'location': ?location,
      'postStartupScript': ?postStartupScript,
      'project': ?project,
      'vmImage':
          ?pulumi.Input.mapOptionalInputValue<VmImage, Map<String, dynamic>>(
            vmImage,
            (value) => value.toMap(),
          ),
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      containerImage: map['containerImage'] == null
          ? null
          : ContainerImage.fromMap(
              (map['containerImage'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      environmentId: map['environmentId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      postStartupScript: map['postStartupScript'] == null
          ? null
          : map['postStartupScript'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      vmImage: map['vmImage'] == null
          ? null
          : VmImage.fromMap((map['vmImage'] as Map).cast<String, dynamic>()),
    );
  }
}

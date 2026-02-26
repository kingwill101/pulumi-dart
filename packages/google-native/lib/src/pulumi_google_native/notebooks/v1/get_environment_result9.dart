// ignore_for_file: unused_element, unnecessary_cast

import 'container_image_response.dart';
import 'vm_image_response.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentResult9 {
  /// Use a container image to start the notebook instance.
  final ContainerImageResponse containerImage;

  /// The time at which this environment was created.
  final String createTime;

  /// A brief description of this environment.
  final String description;

  /// Display name of this environment for the UI.
  final String displayName;

  /// Name of this environment. Format: `projects/{project_id}/locations/{location}/environments/{environment_id}`
  final String name;

  /// Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path. Example: `"gs://path-to-file/file-name"`
  final String postStartupScript;

  /// Use a Compute Engine VM image to start the notebook instance.
  final VmImageResponse vmImage;

  GetEnvironmentResult9({
    required this.containerImage,
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.name,
    required this.postStartupScript,
    required this.vmImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerImage'] = containerImage.toMap();
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['name'] = name;
    map['postStartupScript'] = postStartupScript;
    map['vmImage'] = vmImage.toMap();
    return map;
  }

  factory GetEnvironmentResult9.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult9(
      containerImage: ContainerImageResponse.fromMap(
          (map['containerImage'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      postStartupScript: map['postStartupScript'] as String,
      vmImage: VmImageResponse.fromMap(
          (map['vmImage'] as Map).cast<String, dynamic>()),
    );
  }
}

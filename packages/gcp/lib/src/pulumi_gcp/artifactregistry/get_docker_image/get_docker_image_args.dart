// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDockerImage.
class GetDockerImageArgs {
  /// The image name to fetch. If no digest or tag is provided, then the latest modified image will be used.
  final pulumi.Input<String> imageName;

  /// The location of the artifact registry.
  final pulumi.Input<String> location;

  /// The project ID in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The last part of the repository name to fetch from.
  final pulumi.Input<String> repositoryId;

  GetDockerImageArgs({
    required this.imageName,
    required this.location,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['imageName'] = imageName;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory GetDockerImageArgs.fromMap(Map<String, dynamic> map) {
    return GetDockerImageArgs(
      imageName: pulumi.Input.asInput<String>(map['imageName']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      repositoryId: pulumi.Input.asInput<String>(map['repositoryId']),
    );
  }
}

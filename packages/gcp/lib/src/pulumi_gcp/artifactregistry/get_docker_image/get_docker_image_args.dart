// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDockerImage.
class GetDockerImageArgs {
  /// The image name to fetch. If no digest or tag is provided, then the latest modified image will be used.
  final Input<String> imageName;

  /// The location of the artifact registry.
  final Input<String> location;

  /// The project ID in which the resource belongs. If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The last part of the repository name to fetch from.
  final Input<String> repositoryId;

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
      imageName: Input.asInput<String>(map['imageName']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
    );
  }
}

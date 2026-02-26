// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDockerImages.
class GetDockerImagesArgs {
  /// The location of the Artifact Registry repository.
  final Input<String> location;

  /// The project ID in which the resource belongs. If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The last part of the repository name to fetch from.
  final Input<String> repositoryId;

  GetDockerImagesArgs({
    required this.location,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory GetDockerImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetDockerImagesArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
    );
  }
}

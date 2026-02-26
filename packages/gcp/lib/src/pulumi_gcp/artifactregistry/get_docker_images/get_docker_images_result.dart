// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_docker_images_docker_image/get_docker_images_docker_image.dart';

/// Result data returned by getDockerImages.
class GetDockerImagesResult {
  /// A list of all retrieved Artifact Registry Docker images. Structure is defined below.
  final List<GetDockerImagesDockerImage> dockerImages;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? project;
  final String repositoryId;

  GetDockerImagesResult({
    required this.dockerImages,
    required this.id,
    required this.location,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dockerImages'] =
        Input.encodeList<GetDockerImagesDockerImage, Map<String, dynamic>>(
            dockerImages, (value) => value.toMap());
    map['id'] = id;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory GetDockerImagesResult.fromMap(Map<String, dynamic> map) {
    return GetDockerImagesResult(
      dockerImages: Input.decodeList<GetDockerImagesDockerImage>(
          map['dockerImages'],
          (value) => GetDockerImagesDockerImage.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
    );
  }
}

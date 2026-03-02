// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container registry that the final image will be uploaded to.
class ContainerRegistryWithCustomImageResponse {
  /// Full name that the final image should be uploaded as, including both image name and tag.
  final pulumi.Input<String>? image;
  /// Login server of the container registry that the final image should be uploaded to. Builder resource needs to have this container registry defined along with an identity to use to access it.
  final pulumi.Input<String> server;

  /// Creates a new [ContainerRegistryWithCustomImageResponse].
  /// [image] Full name that the final image should be uploaded as, including both image name and tag.
  /// [server] Login server of the container registry that the final image should be uploaded to. Builder resource needs to have this container registry defined along with an identity to use to access it.
  ContainerRegistryWithCustomImageResponse({
    this.image,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': ?image,
      'server': server,
    };
  }

  factory ContainerRegistryWithCustomImageResponse.fromMap(Map<String, dynamic> map) {
    return ContainerRegistryWithCustomImageResponse(
      image: map['image'] == null ? null : (map['image']! as String).input(),
      server: (map['server'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// Container registry that the final image will be uploaded to.
class ContainerRegistryWithCustomImage {
  /// Full name that the final image should be uploaded as, including both image name and tag.
  final String? image;
  /// Login server of the container registry that the final image should be uploaded to. Builder resource needs to have this container registry defined along with an identity to use to access it.
  final String server;

  /// Creates a new [ContainerRegistryWithCustomImage].
  /// [image] Full name that the final image should be uploaded as, including both image name and tag.
  /// [server] Login server of the container registry that the final image should be uploaded to. Builder resource needs to have this container registry defined along with an identity to use to access it.
  ContainerRegistryWithCustomImage({
    this.image,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': ?image,
      'server': server,
    };
  }

  factory ContainerRegistryWithCustomImage.fromMap(Map<String, dynamic> map) {
    return ContainerRegistryWithCustomImage(
      image: map['image'] == null ? null : map['image'] as String,
      server: map['server'] as String,
    );
  }
}


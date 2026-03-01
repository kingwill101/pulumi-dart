// ignore_for_file: unused_element, unnecessary_cast

/// Docker image that is used to create a container and start a VM instance for the version that you deploy. Only applicable for instances running in the App Engine flexible environment.
class ContainerInfoResponseAppengineV1beta {
  /// URI to the hosted container image in Google Container Registry. The URI must be fully qualified and include a tag or digest. Examples: "gcr.io/my-project/image:tag" or "gcr.io/my-project/image@digest"
  final String image;

  /// Creates a new [ContainerInfoResponseAppengineV1beta].
  /// [image] URI to the hosted container image in Google Container Registry. The URI must be fully qualified and include a tag or digest. Examples: "gcr.io/my-project/image:tag" or "gcr.io/my-project/image@digest"
  ContainerInfoResponseAppengineV1beta({required this.image});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'image': image};
  }

  factory ContainerInfoResponseAppengineV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ContainerInfoResponseAppengineV1beta(image: map['image'] as String);
  }
}

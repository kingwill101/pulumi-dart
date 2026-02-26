// ignore_for_file: unused_element, unnecessary_cast

/// Docker image that is used to create a container and start a VM instance for the version that you deploy. Only applicable for instances running in the App Engine flexible environment.
class ContainerInfo2 {
  /// URI to the hosted container image in Google Container Registry. The URI must be fully qualified and include a tag or digest. Examples: "gcr.io/my-project/image:tag" or "gcr.io/my-project/image@digest"
  final String? image;

  ContainerInfo2({
    this.image,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue;
    }
    return map;
  }

  factory ContainerInfo2.fromMap(Map<String, dynamic> map) {
    return ContainerInfo2(
      image: map['image'] == null ? null : map['image'] as String,
    );
  }
}

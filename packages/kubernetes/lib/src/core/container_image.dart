// ignore_for_file: unused_element, unnecessary_cast


/// Describe a container image
class ContainerImage {
  /// Names by which this image is known. e.g. ["kubernetes.example/hyperkube:v1.0.7", "cloud-vendor.registry.example/cloud-vendor/hyperkube:v1.0.7"]
  final List<String> names;
  /// The size of the image in bytes.
  final int? sizeBytes;

  /// Creates a new [ContainerImage].
  /// [names] Names by which this image is known. e.g. ["kubernetes.example/hyperkube:v1.0.7", "cloud-vendor.registry.example/cloud-vendor/hyperkube:v1.0.7"]
  /// [sizeBytes] The size of the image in bytes.
  ContainerImage({
    required this.names,
    this.sizeBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'names': names,
      'sizeBytes': ?sizeBytes,
    };
  }

  factory ContainerImage.fromMap(Map<String, dynamic> map) {
    return ContainerImage(
      names: (map['names'] as List).cast<String>(),
      sizeBytes: map['sizeBytes'] == null ? null : map['sizeBytes'] as int,
    );
  }
}


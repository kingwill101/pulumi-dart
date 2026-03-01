// ignore_for_file: unused_element, unnecessary_cast


/// Describe a container image
class ContainerImagePatch {
  /// Names by which this image is known. e.g. ["kubernetes.example/hyperkube:v1.0.7", "cloud-vendor.registry.example/cloud-vendor/hyperkube:v1.0.7"]
  final List<String>? names;
  /// The size of the image in bytes.
  final int? sizeBytes;

  /// Creates a new [ContainerImagePatch].
  /// [names] Names by which this image is known. e.g. ["kubernetes.example/hyperkube:v1.0.7", "cloud-vendor.registry.example/cloud-vendor/hyperkube:v1.0.7"]
  /// [sizeBytes] The size of the image in bytes.
  ContainerImagePatch({
    this.names,
    this.sizeBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'names': ?names,
      'sizeBytes': ?sizeBytes,
    };
  }

  factory ContainerImagePatch.fromMap(Map<String, dynamic> map) {
    return ContainerImagePatch(
      names: map['names'] == null ? null : (map['names'] as List).cast<String>(),
      sizeBytes: map['sizeBytes'] == null ? null : map['sizeBytes'] as int,
    );
  }
}


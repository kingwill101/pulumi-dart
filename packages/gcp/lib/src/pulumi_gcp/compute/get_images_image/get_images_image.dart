// ignore_for_file: unused_element, unnecessary_cast

class GetImagesImage {
  /// The size of the image tar.gz archive stored in Google Cloud Storage in bytes.
  final int archiveSizeBytes;

  /// The creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this image.
  final String description;

  /// The size of the image when restored onto a persistent disk in gigabytes.
  final int diskSizeGb;

  /// The family name of the image.
  final String family;
  final int imageId;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final Map<String, String> labels;

  /// The name of the image.
  final String name;

  /// The URI of the image.
  final String selfLink;

  /// The URL of the source disk used to create this image.
  final String sourceDisk;

  /// The ID value of the disk used to create this image.
  final String sourceDiskId;

  /// The ID value of the image used to create this image.
  final String sourceImageId;

  GetImagesImage({
    required this.archiveSizeBytes,
    required this.creationTimestamp,
    required this.description,
    required this.diskSizeGb,
    required this.family,
    required this.imageId,
    required this.labels,
    required this.name,
    required this.selfLink,
    required this.sourceDisk,
    required this.sourceDiskId,
    required this.sourceImageId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['archiveSizeBytes'] = archiveSizeBytes;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['diskSizeGb'] = diskSizeGb;
    map['family'] = family;
    map['imageId'] = imageId;
    map['labels'] = labels;
    map['name'] = name;
    map['selfLink'] = selfLink;
    map['sourceDisk'] = sourceDisk;
    map['sourceDiskId'] = sourceDiskId;
    map['sourceImageId'] = sourceImageId;
    return map;
  }

  factory GetImagesImage.fromMap(Map<String, dynamic> map) {
    return GetImagesImage(
      archiveSizeBytes: map['archiveSizeBytes'] as int,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      diskSizeGb: map['diskSizeGb'] as int,
      family: map['family'] as String,
      imageId: map['imageId'] as int,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      selfLink: map['selfLink'] as String,
      sourceDisk: map['sourceDisk'] as String,
      sourceDiskId: map['sourceDiskId'] as String,
      sourceImageId: map['sourceImageId'] as String,
    );
  }
}

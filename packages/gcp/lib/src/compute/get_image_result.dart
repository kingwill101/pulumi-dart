// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getImage.
class GetImageResult {
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
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// encoded SHA-256 hash of the [customer-supplied encryption key](https://cloud.google.com/compute/docs/disks/customer-supplied-encryption)
  /// that protects this image.
  final String imageEncryptionKeySha256;

  /// The unique identifier for the image.
  final String imageId;

  /// A fingerprint for the labels being applied to this image.
  final String labelFingerprint;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final Map<String, String> labels;

  /// A list of applicable license URI.
  final List<String> licenses;
  final bool? mostRecent;

  /// The name of the image.
  final String name;
  final String project;

  /// The URI of the image.
  final String selfLink;

  /// The URL of the source disk used to create this image.
  final String sourceDisk;

  /// The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// encoded SHA-256 hash of the [customer-supplied encryption key](https://cloud.google.com/compute/docs/disks/customer-supplied-encryption)
  /// that protects this image.
  final String sourceDiskEncryptionKeySha256;

  /// The ID value of the disk used to create this image.
  final String sourceDiskId;

  /// The ID value of the image used to create this image.
  final String sourceImageId;

  /// The status of the image. Possible values are **FAILED**, **PENDING**, or **READY**.
  final String status;

  /// Creates a new [GetImageResult].
  /// [archiveSizeBytes] The size of the image tar.gz archive stored in Google Cloud Storage in bytes.
  /// [creationTimestamp] The creation timestamp in RFC3339 text format.
  /// [description] An optional description of this image.
  /// [diskSizeGb] The size of the image when restored onto a persistent disk in gigabytes.
  /// [family] The family name of the image.
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageEncryptionKeySha256] The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// [imageId] The unique identifier for the image.
  /// [labelFingerprint] A fingerprint for the labels being applied to this image.
  /// [labels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [licenses] A list of applicable license URI.
  /// [mostRecent] Optional.
  /// [name] The name of the image.
  /// [project] Required.
  /// [selfLink] The URI of the image.
  /// [sourceDisk] The URL of the source disk used to create this image.
  /// [sourceDiskEncryptionKeySha256] The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// [sourceDiskId] The ID value of the disk used to create this image.
  /// [sourceImageId] The ID value of the image used to create this image.
  /// [status] The status of the image. Possible values are **FAILED**, **PENDING**, or **READY**.
  GetImageResult({
    required this.archiveSizeBytes,
    required this.creationTimestamp,
    required this.description,
    required this.diskSizeGb,
    required this.family,
    this.filter,
    required this.id,
    required this.imageEncryptionKeySha256,
    required this.imageId,
    required this.labelFingerprint,
    required this.labels,
    required this.licenses,
    this.mostRecent,
    required this.name,
    required this.project,
    required this.selfLink,
    required this.sourceDisk,
    required this.sourceDiskEncryptionKeySha256,
    required this.sourceDiskId,
    required this.sourceImageId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveSizeBytes': archiveSizeBytes,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'diskSizeGb': diskSizeGb,
      'family': family,
      'filter': ?filter,
      'id': id,
      'imageEncryptionKeySha256': imageEncryptionKeySha256,
      'imageId': imageId,
      'labelFingerprint': labelFingerprint,
      'labels': labels,
      'licenses': licenses,
      'mostRecent': ?mostRecent,
      'name': name,
      'project': project,
      'selfLink': selfLink,
      'sourceDisk': sourceDisk,
      'sourceDiskEncryptionKeySha256': sourceDiskEncryptionKeySha256,
      'sourceDiskId': sourceDiskId,
      'sourceImageId': sourceImageId,
      'status': status,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      archiveSizeBytes: map['archiveSizeBytes'] as int,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      diskSizeGb: map['diskSizeGb'] as int,
      family: map['family'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      imageEncryptionKeySha256: map['imageEncryptionKeySha256'] as String,
      imageId: map['imageId'] as String,
      labelFingerprint: map['labelFingerprint'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      licenses: (map['licenses'] as List).cast<String>(),
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      name: map['name'] as String,
      project: map['project'] as String,
      selfLink: map['selfLink'] as String,
      sourceDisk: map['sourceDisk'] as String,
      sourceDiskEncryptionKeySha256:
          map['sourceDiskEncryptionKeySha256'] as String,
      sourceDiskId: map['sourceDiskId'] as String,
      sourceImageId: map['sourceImageId'] as String,
      status: map['status'] as String,
    );
  }
}

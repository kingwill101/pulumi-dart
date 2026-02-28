// ignore_for_file: unused_element, unnecessary_cast

class ImageRawDisk {
  /// The format used to encode and transmit the block device, which
  /// should be TAR. This is just a container and transmission format
  /// and not a runtime format. Provided by the client when the disk
  /// image is created.
  /// Default value is `TAR`.
  /// Possible values are: `TAR`.
  final String? containerType;

  /// An optional SHA1 checksum of the disk image before unpackaging.
  /// This is provided by the client when the disk image is created.
  final String? sha1;

  /// The full Google Cloud Storage URL where disk storage is stored
  /// You must provide either this property or the sourceDisk property
  /// but not both.
  final String source;

  /// Creates a new [ImageRawDisk].
  /// [containerType] The format used to encode and transmit the block device, which
  /// [sha1] An optional SHA1 checksum of the disk image before unpackaging.
  /// [source] The full Google Cloud Storage URL where disk storage is stored
  ImageRawDisk({
    this.containerType,
    this.sha1,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerTypeValue = containerType;
    if (containerTypeValue != null) {
      map['containerType'] = containerTypeValue;
    }
    final sha1Value = sha1;
    if (sha1Value != null) {
      map['sha1'] = sha1Value;
    }
    map['source'] = source;
    return map;
  }

  factory ImageRawDisk.fromMap(Map<String, dynamic> map) {
    return ImageRawDisk(
      containerType:
          map['containerType'] == null ? null : map['containerType'] as String,
      sha1: map['sha1'] == null ? null : map['sha1'] as String,
      source: map['source'] as String,
    );
  }
}

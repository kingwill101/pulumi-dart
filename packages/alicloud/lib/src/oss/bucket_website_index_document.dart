// ignore_for_file: unused_element, unnecessary_cast


class BucketWebsiteIndexDocument {
  /// The default home page.
  final String? suffix;
  /// Whether to jump to the default home page of a subdirectory when accessing a subdirectory.
  final bool? supportSubDir;
  /// After the default homepage is set, the behavior when an Object that ends with a non-forward slash (/) is accessed and the Object does not exist.
  final String? type;

  /// Creates a new [BucketWebsiteIndexDocument].
  /// [suffix] The default home page.
  /// [supportSubDir] Whether to jump to the default home page of a subdirectory when accessing a subdirectory.
  /// [type] After the default homepage is set, the behavior when an Object that ends with a non-forward slash (/) is accessed and the Object does not exist.
  BucketWebsiteIndexDocument({
    this.suffix,
    this.supportSubDir,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'suffix': ?suffix,
      'supportSubDir': ?supportSubDir,
      'type': ?type,
    };
  }

  factory BucketWebsiteIndexDocument.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteIndexDocument(
      suffix: map['suffix'] == null ? null : map['suffix'] as String,
      supportSubDir: map['supportSubDir'] == null ? null : map['supportSubDir'] as bool,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}


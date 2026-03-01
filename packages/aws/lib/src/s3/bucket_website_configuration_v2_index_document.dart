// ignore_for_file: unused_element, unnecessary_cast


class BucketWebsiteConfigurationV2IndexDocument {
  /// Suffix that is appended to a request that is for a directory on the website endpoint.
  /// For example, if the suffix is `index.html` and you make a request to `samplebucket/images/`, the data that is returned will be for the object with the key name `images/index.html`.
  /// The suffix must not be empty and must not include a slash character.
  final String suffix;

  /// Creates a new [BucketWebsiteConfigurationV2IndexDocument].
  /// [suffix] Suffix that is appended to a request that is for a directory on the website endpoint.
  BucketWebsiteConfigurationV2IndexDocument({
    required this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'suffix': suffix,
    };
  }

  factory BucketWebsiteConfigurationV2IndexDocument.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteConfigurationV2IndexDocument(
      suffix: map['suffix'] as String,
    );
  }
}


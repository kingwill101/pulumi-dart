// ignore_for_file: unused_element, unnecessary_cast

class BucketWebsiteConfigurationIndexDocument {
  /// Suffix that is appended to a request that is for a directory on the website endpoint.
  /// For example, if the suffix is `index.html` and you make a request to `samplebucket/images/`, the data that is returned will be for the object with the key name `images/index.html`.
  /// The suffix must not be empty and must not include a slash character.
  final String suffix;

  BucketWebsiteConfigurationIndexDocument({
    required this.suffix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['suffix'] = suffix;
    return map;
  }

  factory BucketWebsiteConfigurationIndexDocument.fromMap(
      Map<String, dynamic> map) {
    return BucketWebsiteConfigurationIndexDocument(
      suffix: map['suffix'] as String,
    );
  }
}

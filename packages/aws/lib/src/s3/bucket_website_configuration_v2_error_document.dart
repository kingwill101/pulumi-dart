// ignore_for_file: unused_element, unnecessary_cast


class BucketWebsiteConfigurationV2ErrorDocument {
  /// Object key name to use when a 4XX class error occurs.
  final String key;

  /// Creates a new [BucketWebsiteConfigurationV2ErrorDocument].
  /// [key] Object key name to use when a 4XX class error occurs.
  BucketWebsiteConfigurationV2ErrorDocument({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
    };
  }

  factory BucketWebsiteConfigurationV2ErrorDocument.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteConfigurationV2ErrorDocument(
      key: map['key'] as String,
    );
  }
}


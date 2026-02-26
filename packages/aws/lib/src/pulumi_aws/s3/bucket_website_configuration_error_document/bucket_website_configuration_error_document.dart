// ignore_for_file: unused_element, unnecessary_cast

class BucketWebsiteConfigurationErrorDocument {
  /// Object key name to use when a 4XX class error occurs.
  final String key;

  BucketWebsiteConfigurationErrorDocument({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    return map;
  }

  factory BucketWebsiteConfigurationErrorDocument.fromMap(
      Map<String, dynamic> map) {
    return BucketWebsiteConfigurationErrorDocument(
      key: map['key'] as String,
    );
  }
}

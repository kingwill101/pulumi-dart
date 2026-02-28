// ignore_for_file: unused_element, unnecessary_cast

class PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet {
  /// The url, in the format `gs://<bucket>/<path>`. Trailing wildcard in the path is allowed.
  final String url;

  /// Creates a new [PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet].
  /// [url] The url, in the format `gs://<bucket>/<path>`. Trailing wildcard in the path is allowed.
  PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['url'] = url;
    return map;
  }

  factory PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet.fromMap(
      Map<String, dynamic> map) {
    return PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet(
      url: map['url'] as String,
    );
  }
}

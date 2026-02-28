// ignore_for_file: unused_element, unnecessary_cast

/// Message representing a set of files in Cloud Storage.
class GooglePrivacyDlpV2CloudStorageFileSet {
  /// The url, in the format `gs:///`. Trailing wildcard in the path is allowed.
  final String? url;

  /// Creates a new [GooglePrivacyDlpV2CloudStorageFileSet].
  /// [url] The url, in the format `gs:///`. Trailing wildcard in the path is allowed.
  GooglePrivacyDlpV2CloudStorageFileSet({
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory GooglePrivacyDlpV2CloudStorageFileSet.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CloudStorageFileSet(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

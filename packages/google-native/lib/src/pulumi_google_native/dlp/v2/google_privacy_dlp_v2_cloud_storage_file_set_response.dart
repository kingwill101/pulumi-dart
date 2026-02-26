// ignore_for_file: unused_element, unnecessary_cast

/// Message representing a set of files in Cloud Storage.
class GooglePrivacyDlpV2CloudStorageFileSetResponse {
  /// The url, in the format `gs:///`. Trailing wildcard in the path is allowed.
  final String url;

  GooglePrivacyDlpV2CloudStorageFileSetResponse({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['url'] = url;
    return map;
  }

  factory GooglePrivacyDlpV2CloudStorageFileSetResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CloudStorageFileSetResponse(
      url: map['url'] as String,
    );
  }
}

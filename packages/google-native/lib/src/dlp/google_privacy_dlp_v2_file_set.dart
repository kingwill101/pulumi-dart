// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_cloud_storage_regex_file_set.dart';

/// Set of files to scan.
class GooglePrivacyDlpV2FileSet {
  /// The regex-filtered set of files to scan. Exactly one of `url` or `regex_file_set` must be set.
  final GooglePrivacyDlpV2CloudStorageRegexFileSet? regexFileSet;
  /// The Cloud Storage url of the file(s) to scan, in the format `gs:///`. Trailing wildcard in the path is allowed. If the url ends in a trailing slash, the bucket or directory represented by the url will be scanned non-recursively (content in sub-directories will not be scanned). This means that `gs://mybucket/` is equivalent to `gs://mybucket/*`, and `gs://mybucket/directory/` is equivalent to `gs://mybucket/directory/*`. Exactly one of `url` or `regex_file_set` must be set.
  final String? url;

  /// Creates a new [GooglePrivacyDlpV2FileSet].
  /// [regexFileSet] The regex-filtered set of files to scan. Exactly one of `url` or `regex_file_set` must be set.
  /// [url] The Cloud Storage url of the file(s) to scan, in the format `gs:///`. Trailing wildcard in the path is allowed. If the url ends in a trailing slash, the bucket or directory represented by the url will be scanned non-recursively (content in sub-directories will not be scanned). This means that `gs://mybucket/` is equivalent to `gs://mybucket/*`, and `gs://mybucket/directory/` is equivalent to `gs://mybucket/directory/*`. Exactly one of `url` or `regex_file_set` must be set.
  GooglePrivacyDlpV2FileSet({
    this.regexFileSet,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regexFileSet': ?regexFileSet == null ? null : regexFileSet!.toMap(),
      'url': ?url,
    };
  }

  factory GooglePrivacyDlpV2FileSet.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2FileSet(
      regexFileSet: map['regexFileSet'] == null ? null : GooglePrivacyDlpV2CloudStorageRegexFileSet.fromMap((map['regexFileSet'] as Map).cast<String, dynamic>()),
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}


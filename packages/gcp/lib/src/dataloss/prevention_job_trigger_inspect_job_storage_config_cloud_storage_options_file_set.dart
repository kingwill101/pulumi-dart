// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_job_trigger_inspect_job_storage_config_cloud_storage_options_file_set_regex_file_set.dart';

class PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet {
  /// The regex-filtered set of files to scan.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetRegexFileSet? regexFileSet;
  /// The Cloud Storage url of the file(s) to scan, in the format `gs://<bucket>/<path>`. Trailing wildcard
  /// in the path is allowed.
  /// If the url ends in a trailing slash, the bucket or directory represented by the url will be scanned
  /// non-recursively (content in sub-directories will not be scanned). This means that `gs://mybucket/` is
  /// equivalent to `gs://mybucket/*`, and `gs://mybucket/directory/` is equivalent to `gs://mybucket/directory/*`.
  final String? url;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet].
  /// [regexFileSet] The regex-filtered set of files to scan.
  /// [url] The Cloud Storage url of the file(s) to scan, in the format `gs://<bucket>/<path>`. Trailing wildcard
  PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet({
    this.regexFileSet,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regexFileSet': ?regexFileSet == null ? null : regexFileSet!.toMap(),
      'url': ?url,
    };
  }

  factory PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet(
      regexFileSet: map['regexFileSet'] == null ? null : PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSetRegexFileSet.fromMap((map['regexFileSet'] as Map).cast<String, dynamic>()),
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}


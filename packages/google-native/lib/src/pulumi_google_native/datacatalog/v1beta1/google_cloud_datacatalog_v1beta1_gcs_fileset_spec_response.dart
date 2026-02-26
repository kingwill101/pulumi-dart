// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_datacatalog_v1beta1_gcs_file_spec_response.dart';

/// Describes a Cloud Storage fileset entry.
class GoogleCloudDatacatalogV1beta1GcsFilesetSpecResponse {
  /// Patterns to identify a set of files in Google Cloud Storage. See [Cloud Storage documentation](https://cloud.google.com/storage/docs/gsutil/addlhelp/WildcardNames) for more information. Note that bucket wildcards are currently not supported. Examples of valid file_patterns: * `gs://bucket_name/dir/*`: matches all files within `bucket_name/dir` directory. * `gs://bucket_name/dir/**`: matches all files in `bucket_name/dir` spanning all subdirectories. * `gs://bucket_name/file*`: matches files prefixed by `file` in `bucket_name` * `gs://bucket_name/??.txt`: matches files with two characters followed by `.txt` in `bucket_name` * `gs://bucket_name/[aeiou].txt`: matches files that contain a single vowel character followed by `.txt` in `bucket_name` * `gs://bucket_name/[a-m].txt`: matches files that contain `a`, `b`, ... or `m` followed by `.txt` in `bucket_name` * `gs://bucket_name/a/*/b`: matches all files in `bucket_name` that match `a/*/b` pattern, such as `a/c/b`, `a/d/b` * `gs://another_bucket/a.txt`: matches `gs://another_bucket/a.txt` You can combine wildcards to provide more powerful matches, for example: * `gs://bucket_name/[a-m]??.j*g`
  final List<String> filePatterns;

  /// Sample files contained in this fileset, not all files contained in this fileset are represented here.
  final List<GoogleCloudDatacatalogV1beta1GcsFileSpecResponse>
      sampleGcsFileSpecs;

  GoogleCloudDatacatalogV1beta1GcsFilesetSpecResponse({
    required this.filePatterns,
    required this.sampleGcsFileSpecs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filePatterns'] = filePatterns;
    map['sampleGcsFileSpecs'] = Input.encodeList<
        GoogleCloudDatacatalogV1beta1GcsFileSpecResponse,
        Map<String, dynamic>>(sampleGcsFileSpecs, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDatacatalogV1beta1GcsFilesetSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1beta1GcsFilesetSpecResponse(
      filePatterns: (map['filePatterns'] as List).cast<String>(),
      sampleGcsFileSpecs:
          Input.decodeList<GoogleCloudDatacatalogV1beta1GcsFileSpecResponse>(
              map['sampleGcsFileSpecs'],
              (value) =>
                  GoogleCloudDatacatalogV1beta1GcsFileSpecResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_gcs_file_spec_response.dart';

/// Describes a Cloud Storage fileset entry.
class GoogleCloudDatacatalogV1GcsFilesetSpecResponse {
  /// Patterns to identify a set of files in Google Cloud Storage. For more information, see [Wildcard Names] (https://cloud.google.com/storage/docs/gsutil/addlhelp/WildcardNames). Note: Currently, bucket wildcards are not supported. Examples of valid `file_patterns`: * `gs://bucket_name/dir/*`: matches all files in `bucket_name/dir` directory * `gs://bucket_name/dir/**`: matches all files in `bucket_name/dir` and all subdirectories * `gs://bucket_name/file*`: matches files prefixed by `file` in `bucket_name` * `gs://bucket_name/??.txt`: matches files with two characters followed by `.txt` in `bucket_name` * `gs://bucket_name/[aeiou].txt`: matches files that contain a single vowel character followed by `.txt` in `bucket_name` * `gs://bucket_name/[a-m].txt`: matches files that contain `a`, `b`, ... or `m` followed by `.txt` in `bucket_name` * `gs://bucket_name/a/*/b`: matches all files in `bucket_name` that match the `a/*/b` pattern, such as `a/c/b`, `a/d/b` * `gs://another_bucket/a.txt`: matches `gs://another_bucket/a.txt` You can combine wildcards to match complex sets of files, for example: `gs://bucket_name/[a-m]??.j*g`
  final List<String> filePatterns;

  /// Sample files contained in this fileset, not all files contained in this fileset are represented here.
  final List<GoogleCloudDatacatalogV1GcsFileSpecResponse> sampleGcsFileSpecs;

  /// Creates a new [GoogleCloudDatacatalogV1GcsFilesetSpecResponse].
  /// [filePatterns] Patterns to identify a set of files in Google Cloud Storage. For more information, see [Wildcard Names] (https://cloud.google.com/storage/docs/gsutil/addlhelp/WildcardNames). Note: Currently, bucket wildcards are not supported. Examples of valid `file_patterns`: * `gs://bucket_name/dir/*`: matches all files in `bucket_name/dir` directory * `gs://bucket_name/dir/**`: matches all files in `bucket_name/dir` and all subdirectories * `gs://bucket_name/file*`: matches files prefixed by `file` in `bucket_name` * `gs://bucket_name/??.txt`: matches files with two characters followed by `.txt` in `bucket_name` * `gs://bucket_name/[aeiou].txt`: matches files that contain a single vowel character followed by `.txt` in `bucket_name` * `gs://bucket_name/[a-m].txt`: matches files that contain `a`, `b`, ... or `m` followed by `.txt` in `bucket_name` * `gs://bucket_name/a/*/b`: matches all files in `bucket_name` that match the `a/*/b` pattern, such as `a/c/b`, `a/d/b` * `gs://another_bucket/a.txt`: matches `gs://another_bucket/a.txt` You can combine wildcards to match complex sets of files, for example: `gs://bucket_name/[a-m]??.j*g`
  /// [sampleGcsFileSpecs] Sample files contained in this fileset, not all files contained in this fileset are represented here.
  GoogleCloudDatacatalogV1GcsFilesetSpecResponse({
    required this.filePatterns,
    required this.sampleGcsFileSpecs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filePatterns'] = filePatterns;
    map['sampleGcsFileSpecs'] = pulumi.Input.encodeList<
        GoogleCloudDatacatalogV1GcsFileSpecResponse,
        Map<String, dynamic>>(sampleGcsFileSpecs, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDatacatalogV1GcsFilesetSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1GcsFilesetSpecResponse(
      filePatterns: (map['filePatterns'] as List).cast<String>(),
      sampleGcsFileSpecs:
          pulumi.Input.decodeList<GoogleCloudDatacatalogV1GcsFileSpecResponse>(
              map['sampleGcsFileSpecs'],
              (value) => GoogleCloudDatacatalogV1GcsFileSpecResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

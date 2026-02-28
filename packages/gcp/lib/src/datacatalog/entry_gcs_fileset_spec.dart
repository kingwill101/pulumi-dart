// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_gcs_fileset_spec_sample_gcs_file_spec.dart';

class EntryGcsFilesetSpec {
  /// Patterns to identify a set of files in Google Cloud Storage.
  /// See [Cloud Storage documentation](https://cloud.google.com/storage/docs/gsutil/addlhelp/WildcardNames)
  /// for more information. Note that bucket wildcards are currently not supported. Examples of valid filePatterns:
  /// * gs://bucket_name/dir/*: matches all files within bucket_name/dir directory.
  /// * gs://bucket_name/dir/**: matches all files in bucket_name/dir spanning all subdirectories.
  /// * gs://bucket_name/file*: matches files prefixed by file in bucket_name
  /// * gs://bucket_name/??.txt: matches files with two characters followed by .txt in bucket_name
  /// * gs://bucket_name/[aeiou].txt: matches files that contain a single vowel character followed by .txt in bucket_name
  /// * gs://bucket_name/[a-m].txt: matches files that contain a, b, ... or m followed by .txt in bucket_name
  /// * gs://bucket_name/a/*/b: matches all files in bucket_name that match a/*/b pattern, such as a/c/b, a/d/b
  /// * gs://another_bucket/a.txt: matches gs://another_bucket/a.txt
  final List<String> filePatterns;

  /// (Output)
  /// Sample files contained in this fileset, not all files contained in this fileset are represented here.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_gcs_fileset_spec_sample_gcs_file_specs"></a>The `sample_gcs_file_specs` block contains:
  final List<EntryGcsFilesetSpecSampleGcsFileSpec>? sampleGcsFileSpecs;

  /// Creates a new [EntryGcsFilesetSpec].
  /// [filePatterns] Patterns to identify a set of files in Google Cloud Storage.
  /// [sampleGcsFileSpecs] (Output)
  EntryGcsFilesetSpec({
    required this.filePatterns,
    this.sampleGcsFileSpecs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filePatterns'] = filePatterns;
    final sampleGcsFileSpecsValue = sampleGcsFileSpecs;
    if (sampleGcsFileSpecsValue != null) {
      map['sampleGcsFileSpecs'] = pulumi.Input.encodeList<
              EntryGcsFilesetSpecSampleGcsFileSpec, Map<String, dynamic>>(
          sampleGcsFileSpecsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EntryGcsFilesetSpec.fromMap(Map<String, dynamic> map) {
    return EntryGcsFilesetSpec(
      filePatterns: (map['filePatterns'] as List).cast<String>(),
      sampleGcsFileSpecs: map['sampleGcsFileSpecs'] == null
          ? null
          : pulumi.Input.decodeList<EntryGcsFilesetSpecSampleGcsFileSpec>(
              map['sampleGcsFileSpecs'],
              (value) => EntryGcsFilesetSpecSampleGcsFileSpec.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

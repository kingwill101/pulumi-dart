// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../entry_gcs_fileset_spec_sample_gcs_file_spec/entry_gcs_fileset_spec_sample_gcs_file_spec.dart';

class EntryGcsFilesetSpec {
  /// Patterns to identify a set of files in Google Cloud Storage.
  /// See [Cloud Storage documentation](https://cloud.google.com/storage/docs/gsutil/addlhelp/WildcardNames)
  /// for more information. Note that bucket wildcards are currently not supported. Examples of valid filePatterns:
  /// * gs://bucket_name/dir/*: matches all files within bucket_name/dir directory.
  /// * gs://bucket_name/dir/**: matches all files in bucket_name/dir spanning all subdirectories.
  /// * gs://bucket_name/file*: matches files prefixed by file in<span pulumi-lang-nodejs=" bucketName
  /// " pulumi-lang-dotnet=" BucketName
  /// " pulumi-lang-go=" bucketName
  /// " pulumi-lang-python=" bucket_name
  /// " pulumi-lang-yaml=" bucketName
  /// " pulumi-lang-java=" bucketName
  /// "> bucket_name
  /// </span>* gs://bucket_name/??.txt: matches files with two characters followed by .txt in<span pulumi-lang-nodejs=" bucketName
  /// " pulumi-lang-dotnet=" BucketName
  /// " pulumi-lang-go=" bucketName
  /// " pulumi-lang-python=" bucket_name
  /// " pulumi-lang-yaml=" bucketName
  /// " pulumi-lang-java=" bucketName
  /// "> bucket_name
  /// </span>* gs://bucket_name/[aeiou].txt: matches files that contain a single vowel character followed by .txt in<span pulumi-lang-nodejs=" bucketName
  /// " pulumi-lang-dotnet=" BucketName
  /// " pulumi-lang-go=" bucketName
  /// " pulumi-lang-python=" bucket_name
  /// " pulumi-lang-yaml=" bucketName
  /// " pulumi-lang-java=" bucketName
  /// "> bucket_name
  /// </span>* gs://bucket_name/[a-m].txt: matches files that contain a, b, ... or m followed by .txt in<span pulumi-lang-nodejs=" bucketName
  /// " pulumi-lang-dotnet=" BucketName
  /// " pulumi-lang-go=" bucketName
  /// " pulumi-lang-python=" bucket_name
  /// " pulumi-lang-yaml=" bucketName
  /// " pulumi-lang-java=" bucketName
  /// "> bucket_name
  /// </span>* gs://bucket_name/a/*/b: matches all files in<span pulumi-lang-nodejs=" bucketName " pulumi-lang-dotnet=" BucketName " pulumi-lang-go=" bucketName " pulumi-lang-python=" bucket_name " pulumi-lang-yaml=" bucketName " pulumi-lang-java=" bucketName "> bucket_name </span>that match a/*/b pattern, such as a/c/b, a/d/b
  /// * gs://another_bucket/a.txt: matches gs://another_bucket/a.txt
  final List<String> filePatterns;

  /// (Output)
  /// Sample files contained in this fileset, not all files contained in this fileset are represented here.
  /// Structure is documented below.
  ///
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedGcsFilesetSpecSampleGcsFileSpecs"" pulumi-lang-dotnet=""NestedGcsFilesetSpecSampleGcsFileSpecs"" pulumi-lang-go=""nestedGcsFilesetSpecSampleGcsFileSpecs"" pulumi-lang-python=""nested_gcs_fileset_spec_sample_gcs_file_specs"" pulumi-lang-yaml=""nestedGcsFilesetSpecSampleGcsFileSpecs"" pulumi-lang-java=""nestedGcsFilesetSpecSampleGcsFileSpecs"">"nested_gcs_fileset_spec_sample_gcs_file_specs"</span>></a>The <span pulumi-lang-nodejs="`sampleGcsFileSpecs`" pulumi-lang-dotnet="`SampleGcsFileSpecs`" pulumi-lang-go="`sampleGcsFileSpecs`" pulumi-lang-python="`sample_gcs_file_specs`" pulumi-lang-yaml="`sampleGcsFileSpecs`" pulumi-lang-java="`sampleGcsFileSpecs`">`sample_gcs_file_specs`</span> block contains:
  final List<EntryGcsFilesetSpecSampleGcsFileSpec>? sampleGcsFileSpecs;

  EntryGcsFilesetSpec({
    required this.filePatterns,
    this.sampleGcsFileSpecs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filePatterns'] = filePatterns;
    final sampleGcsFileSpecsValue = sampleGcsFileSpecs;
    if (sampleGcsFileSpecsValue != null) {
      map['sampleGcsFileSpecs'] = Input.encodeList<
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
          : Input.decodeList<EntryGcsFilesetSpecSampleGcsFileSpec>(
              map['sampleGcsFileSpecs'],
              (value) => EntryGcsFilesetSpecSampleGcsFileSpec.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

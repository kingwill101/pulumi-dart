// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_big_query_field.dart';
import 'google_privacy_dlp_v2_cloud_storage_file_set.dart';
import 'google_privacy_dlp_v2_cloud_storage_path.dart';

/// Configuration for a custom dictionary created from a data source of any size up to the maximum size defined in the [limits](https://cloud.google.com/dlp/limits) page. The artifacts of dictionary creation are stored in the specified Cloud Storage location. Consider using `CustomInfoType.Dictionary` for smaller dictionaries that satisfy the size requirements.
class GooglePrivacyDlpV2LargeCustomDictionaryConfig {
  /// Field in a BigQuery table where each cell represents a dictionary phrase.
  final GooglePrivacyDlpV2BigQueryField? bigQueryField;

  /// Set of files containing newline-delimited lists of dictionary phrases.
  final GooglePrivacyDlpV2CloudStorageFileSet? cloudStorageFileSet;

  /// Location to store dictionary artifacts in Cloud Storage. These files will only be accessible by project owners and the DLP API. If any of these artifacts are modified, the dictionary is considered invalid and can no longer be used.
  final GooglePrivacyDlpV2CloudStoragePath? outputPath;

  /// Creates a new [GooglePrivacyDlpV2LargeCustomDictionaryConfig].
  /// [bigQueryField] Field in a BigQuery table where each cell represents a dictionary phrase.
  /// [cloudStorageFileSet] Set of files containing newline-delimited lists of dictionary phrases.
  /// [outputPath] Location to store dictionary artifacts in Cloud Storage. These files will only be accessible by project owners and the DLP API. If any of these artifacts are modified, the dictionary is considered invalid and can no longer be used.
  GooglePrivacyDlpV2LargeCustomDictionaryConfig({
    this.bigQueryField,
    this.cloudStorageFileSet,
    this.outputPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryField': ?bigQueryField == null ? null : bigQueryField!.toMap(),
      'cloudStorageFileSet': ?cloudStorageFileSet == null
          ? null
          : cloudStorageFileSet!.toMap(),
      'outputPath': ?outputPath == null ? null : outputPath!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2LargeCustomDictionaryConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2LargeCustomDictionaryConfig(
      bigQueryField: map['bigQueryField'] == null
          ? null
          : GooglePrivacyDlpV2BigQueryField.fromMap(
              (map['bigQueryField'] as Map).cast<String, dynamic>(),
            ),
      cloudStorageFileSet: map['cloudStorageFileSet'] == null
          ? null
          : GooglePrivacyDlpV2CloudStorageFileSet.fromMap(
              (map['cloudStorageFileSet'] as Map).cast<String, dynamic>(),
            ),
      outputPath: map['outputPath'] == null
          ? null
          : GooglePrivacyDlpV2CloudStoragePath.fromMap(
              (map['outputPath'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

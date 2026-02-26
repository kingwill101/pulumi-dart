// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_stored_info_type_large_custom_dictionary_big_query_field/prevention_stored_info_type_large_custom_dictionary_big_query_field.dart';
import '../prevention_stored_info_type_large_custom_dictionary_cloud_storage_file_set/prevention_stored_info_type_large_custom_dictionary_cloud_storage_file_set.dart';
import '../prevention_stored_info_type_large_custom_dictionary_output_path/prevention_stored_info_type_large_custom_dictionary_output_path.dart';

class PreventionStoredInfoTypeLargeCustomDictionary {
  /// Field in a BigQuery table where each cell represents a dictionary phrase.
  /// Structure is documented below.
  final PreventionStoredInfoTypeLargeCustomDictionaryBigQueryField?
      bigQueryField;

  /// Set of files containing newline-delimited lists of dictionary phrases.
  /// Structure is documented below.
  final PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet?
      cloudStorageFileSet;

  /// Location to store dictionary artifacts in Google Cloud Storage. These files will only be accessible by project owners and the DLP API.
  /// If any of these artifacts are modified, the dictionary is considered invalid and can no longer be used.
  /// Structure is documented below.
  final PreventionStoredInfoTypeLargeCustomDictionaryOutputPath outputPath;

  PreventionStoredInfoTypeLargeCustomDictionary({
    this.bigQueryField,
    this.cloudStorageFileSet,
    required this.outputPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigQueryFieldValue = bigQueryField;
    if (bigQueryFieldValue != null) {
      map['bigQueryField'] = bigQueryFieldValue.toMap();
    }
    final cloudStorageFileSetValue = cloudStorageFileSet;
    if (cloudStorageFileSetValue != null) {
      map['cloudStorageFileSet'] = cloudStorageFileSetValue.toMap();
    }
    map['outputPath'] = outputPath.toMap();
    return map;
  }

  factory PreventionStoredInfoTypeLargeCustomDictionary.fromMap(
      Map<String, dynamic> map) {
    return PreventionStoredInfoTypeLargeCustomDictionary(
      bigQueryField: map['bigQueryField'] == null
          ? null
          : PreventionStoredInfoTypeLargeCustomDictionaryBigQueryField.fromMap(
              (map['bigQueryField'] as Map).cast<String, dynamic>()),
      cloudStorageFileSet: map['cloudStorageFileSet'] == null
          ? null
          : PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSet
              .fromMap(
                  (map['cloudStorageFileSet'] as Map).cast<String, dynamic>()),
      outputPath:
          PreventionStoredInfoTypeLargeCustomDictionaryOutputPath.fromMap(
              (map['outputPath'] as Map).cast<String, dynamic>()),
    );
  }
}

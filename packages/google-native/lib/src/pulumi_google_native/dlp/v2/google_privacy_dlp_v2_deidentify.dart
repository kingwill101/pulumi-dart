// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_deidentify_file_types_to_transform_item.dart';
import 'google_privacy_dlp_v2_transformation_config.dart';
import 'google_privacy_dlp_v2_transformation_details_storage_config.dart';

/// Create a de-identified copy of the requested table or files. A TransformationDetail will be created for each transformation. If any rows in BigQuery are skipped during de-identification (transformation errors or row size exceeds BigQuery insert API limits) they are placed in the failure output table. If the original row exceeds the BigQuery insert API limit it will be truncated when written to the failure output table. The failure output table can be set in the action.deidentify.output.big_query_output.deidentified_failure_output_table field, if no table is set, a table will be automatically created in the same project and dataset as the original table. Compatible with: Inspect
class GooglePrivacyDlpV2Deidentify {
  /// User settable Cloud Storage bucket and folders to store de-identified files. This field must be set for cloud storage deidentification. The output Cloud Storage bucket must be different from the input bucket. De-identified files will overwrite files in the output path. Form of: gs://bucket/folder/ or gs://bucket
  final String cloudStorageOutput;

  /// List of user-specified file type groups to transform. If specified, only the files with these filetypes will be transformed. If empty, all supported files will be transformed. Supported types may be automatically added over time. If a file type is set in this field that isn't supported by the Deidentify action then the job will fail and will not be successfully created/started. Currently the only filetypes supported are: IMAGES, TEXT_FILES, CSV, TSV.
  final List<GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem>?
      fileTypesToTransform;

  /// User specified deidentify templates and configs for structured, unstructured, and image files.
  final GooglePrivacyDlpV2TransformationConfig? transformationConfig;

  /// Config for storing transformation details. This is separate from the de-identified content, and contains metadata about the successful transformations and/or failures that occurred while de-identifying. This needs to be set in order for users to access information about the status of each transformation (see TransformationDetails message for more information about what is noted).
  final GooglePrivacyDlpV2TransformationDetailsStorageConfig?
      transformationDetailsStorageConfig;

  GooglePrivacyDlpV2Deidentify({
    required this.cloudStorageOutput,
    this.fileTypesToTransform,
    this.transformationConfig,
    this.transformationDetailsStorageConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudStorageOutput'] = cloudStorageOutput;
    final fileTypesToTransformValue = fileTypesToTransform;
    if (fileTypesToTransformValue != null) {
      map['fileTypesToTransform'] = Input.encodeList<
          GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem,
          String>(fileTypesToTransformValue, (value) => value.value);
    }
    final transformationConfigValue = transformationConfig;
    if (transformationConfigValue != null) {
      map['transformationConfig'] = transformationConfigValue.toMap();
    }
    final transformationDetailsStorageConfigValue =
        transformationDetailsStorageConfig;
    if (transformationDetailsStorageConfigValue != null) {
      map['transformationDetailsStorageConfig'] =
          transformationDetailsStorageConfigValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2Deidentify.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Deidentify(
      cloudStorageOutput: map['cloudStorageOutput'] as String,
      fileTypesToTransform: map['fileTypesToTransform'] == null
          ? null
          : Input.decodeList<
                  GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem>(
              map['fileTypesToTransform'],
              (value) => GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem
                  .fromValue(value as String)),
      transformationConfig: map['transformationConfig'] == null
          ? null
          : GooglePrivacyDlpV2TransformationConfig.fromMap(
              (map['transformationConfig'] as Map).cast<String, dynamic>()),
      transformationDetailsStorageConfig:
          map['transformationDetailsStorageConfig'] == null
              ? null
              : GooglePrivacyDlpV2TransformationDetailsStorageConfig.fromMap(
                  (map['transformationDetailsStorageConfig'] as Map)
                      .cast<String, dynamic>()),
    );
  }
}

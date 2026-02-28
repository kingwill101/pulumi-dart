// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_job_trigger_inspect_job_action_deidentify_transformation_config.dart';
import 'prevention_job_trigger_inspect_job_action_deidentify_transformation_details_storage_config.dart';

class PreventionJobTriggerInspectJobActionDeidentify {
  /// User settable Cloud Storage bucket and folders to store de-identified files.
  /// This field must be set for cloud storage deidentification.
  /// The output Cloud Storage bucket must be different from the input bucket.
  /// De-identified files will overwrite files in the output path.
  /// Form of: gs://bucket/folder/ or gs://bucket
  final String cloudStorageOutput;

  /// List of user-specified file type groups to transform. If specified, only the files with these filetypes will be transformed.
  /// If empty, all supported files will be transformed. Supported types may be automatically added over time.
  /// If a file type is set in this field that isn't supported by the Deidentify action then the job will fail and will not be successfully created/started.
  /// Each value may be one of: `IMAGE`, `TEXT_FILE`, `CSV`, `TSV`.
  final List<String>? fileTypesToTransforms;

  /// User specified deidentify templates and configs for structured, unstructured, and image files.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobActionDeidentifyTransformationConfig?
      transformationConfig;

  /// Config for storing transformation details.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobActionDeidentifyTransformationDetailsStorageConfig?
      transformationDetailsStorageConfig;

  /// Creates a new [PreventionJobTriggerInspectJobActionDeidentify].
  /// [cloudStorageOutput] User settable Cloud Storage bucket and folders to store de-identified files.
  /// [fileTypesToTransforms] List of user-specified file type groups to transform. If specified, only the files with these filetypes will be transformed.
  /// [transformationConfig] User specified deidentify templates and configs for structured, unstructured, and image files.
  /// [transformationDetailsStorageConfig] Config for storing transformation details.
  PreventionJobTriggerInspectJobActionDeidentify({
    required this.cloudStorageOutput,
    this.fileTypesToTransforms,
    this.transformationConfig,
    this.transformationDetailsStorageConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudStorageOutput'] = cloudStorageOutput;
    final fileTypesToTransformsValue = fileTypesToTransforms;
    if (fileTypesToTransformsValue != null) {
      map['fileTypesToTransforms'] = fileTypesToTransformsValue;
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

  factory PreventionJobTriggerInspectJobActionDeidentify.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobActionDeidentify(
      cloudStorageOutput: map['cloudStorageOutput'] as String,
      fileTypesToTransforms: map['fileTypesToTransforms'] == null
          ? null
          : (map['fileTypesToTransforms'] as List).cast<String>(),
      transformationConfig: map['transformationConfig'] == null
          ? null
          : PreventionJobTriggerInspectJobActionDeidentifyTransformationConfig
              .fromMap(
                  (map['transformationConfig'] as Map).cast<String, dynamic>()),
      transformationDetailsStorageConfig: map[
                  'transformationDetailsStorageConfig'] ==
              null
          ? null
          : PreventionJobTriggerInspectJobActionDeidentifyTransformationDetailsStorageConfig
              .fromMap((map['transformationDetailsStorageConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_job_trigger_inspect_job_action_save_findings_output_config_storage_path/prevention_job_trigger_inspect_job_action_save_findings_output_config_storage_path.dart';
import '../prevention_job_trigger_inspect_job_action_save_findings_output_config_table/prevention_job_trigger_inspect_job_action_save_findings_output_config_table.dart';

class PreventionJobTriggerInspectJobActionSaveFindingsOutputConfig {
  /// Schema used for writing the findings for Inspect jobs. This field is only used for
  /// Inspect and must be unspecified for Risk jobs. Columns are derived from the Finding
  /// object. If appending to an existing table, any columns from the predefined schema
  /// that are missing will be added. No columns in the existing table will be deleted.
  /// If unspecified, then all available columns will be used for a new table or an (existing)
  /// table with no schema, and no changes will be made to an existing table that has a schema.
  /// Only for use with external storage.
  /// Possible values are: `BASIC_COLUMNS`, `GCS_COLUMNS`, `DATASTORE_COLUMNS`, `BIG_QUERY_COLUMNS`, `ALL_COLUMNS`.
  final String? outputSchema;

  /// Store findings in an existing Cloud Storage bucket. Files will be generated with the job ID and file part number
  /// as the filename, and will contain findings in textproto format as SaveToGcsFindingsOutput. The file name will use
  /// the naming convention <job_id>-<shard_number>, for example: my-job-id-2.
  /// Supported for InspectJobs. The bucket must not be the same as the bucket being inspected. If storing findings to
  /// Cloud Storage, the output schema field should not be set. If set, it will be ignored.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigStoragePath?
      storagePath;

  /// Information on the location of the target BigQuery Table.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTable?
      table;

  PreventionJobTriggerInspectJobActionSaveFindingsOutputConfig({
    this.outputSchema,
    this.storagePath,
    this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final outputSchemaValue = outputSchema;
    if (outputSchemaValue != null) {
      map['outputSchema'] = outputSchemaValue;
    }
    final storagePathValue = storagePath;
    if (storagePathValue != null) {
      map['storagePath'] = storagePathValue.toMap();
    }
    final tableValue = table;
    if (tableValue != null) {
      map['table'] = tableValue.toMap();
    }
    return map;
  }

  factory PreventionJobTriggerInspectJobActionSaveFindingsOutputConfig.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobActionSaveFindingsOutputConfig(
      outputSchema:
          map['outputSchema'] == null ? null : map['outputSchema'] as String,
      storagePath: map['storagePath'] == null
          ? null
          : PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigStoragePath
              .fromMap((map['storagePath'] as Map).cast<String, dynamic>()),
      table: map['table'] == null
          ? null
          : PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigTable
              .fromMap((map['table'] as Map).cast<String, dynamic>()),
    );
  }
}

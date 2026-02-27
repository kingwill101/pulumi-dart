// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../pipeline_job_backfill_pipeline_job/pipeline_job_backfill_pipeline_job.dart';
import '../pipeline_job_mapping_pipeline_job/pipeline_job_mapping_pipeline_job.dart';
import '../pipeline_job_reconciliation_pipeline_job/pipeline_job_reconciliation_pipeline_job.dart';

/// The set of arguments for PipelineJob.
class PipelineJobArgs {
  /// Specifies the backfill configuration.
  /// Structure is documented below.
  final Input<PipelineJobBackfillPipelineJob>? backfillPipelineJob;

  /// Healthcare Dataset under which the Pipeline Job is to run
  final Input<String> dataset;

  /// If true, disables writing lineage for the pipeline.
  final Input<bool>? disableLineage;

  /// User-supplied key-value pairs used to organize Pipeline Jobs.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of
  /// maximum 128 bytes, and must conform to the following PCRE regular expression:
  /// [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values are optional, must be between 1 and 63 characters long, have a
  /// UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE
  /// regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be associated with a given pipeline.
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Location where the Pipeline Job is to run
  final Input<String> location;

  /// Specifies mapping configuration.
  /// Structure is documented below.
  final Input<PipelineJobMappingPipelineJob>? mappingPipelineJob;

  /// Specifies the name of the pipeline job. This field is user-assigned.
  final Input<String>? name;

  /// Specifies reconciliation configuration.
  /// Structure is documented below.
  final Input<PipelineJobReconciliationPipelineJob>? reconciliationPipelineJob;

  PipelineJobArgs({
    this.backfillPipelineJob,
    required this.dataset,
    this.disableLineage,
    this.labels,
    required this.location,
    this.mappingPipelineJob,
    this.name,
    this.reconciliationPipelineJob,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backfillPipelineJobValue = backfillPipelineJob;
    if (backfillPipelineJobValue != null) {
      map['backfillPipelineJob'] = Input.mapOptionalInputValue<
              PipelineJobBackfillPipelineJob, Map<String, dynamic>>(
          backfillPipelineJobValue, (value) => value.toMap());
    }
    map['dataset'] = dataset;
    final disableLineageValue = disableLineage;
    if (disableLineageValue != null) {
      map['disableLineage'] = disableLineageValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final mappingPipelineJobValue = mappingPipelineJob;
    if (mappingPipelineJobValue != null) {
      map['mappingPipelineJob'] = Input.mapOptionalInputValue<
              PipelineJobMappingPipelineJob, Map<String, dynamic>>(
          mappingPipelineJobValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final reconciliationPipelineJobValue = reconciliationPipelineJob;
    if (reconciliationPipelineJobValue != null) {
      map['reconciliationPipelineJob'] = Input.mapOptionalInputValue<
              PipelineJobReconciliationPipelineJob, Map<String, dynamic>>(
          reconciliationPipelineJobValue, (value) => value.toMap());
    }
    return map;
  }

  factory PipelineJobArgs.fromMap(Map<String, dynamic> map) {
    return PipelineJobArgs(
      backfillPipelineJob:
          Input.asOptionalInput<PipelineJobBackfillPipelineJob>(
              map['backfillPipelineJob']),
      dataset: Input.asInput<String>(map['dataset']),
      disableLineage: Input.asOptionalInput<bool>(map['disableLineage']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      mappingPipelineJob: Input.asOptionalInput<PipelineJobMappingPipelineJob>(
          map['mappingPipelineJob']),
      name: Input.asOptionalInput<String>(map['name']),
      reconciliationPipelineJob:
          Input.asOptionalInput<PipelineJobReconciliationPipelineJob>(
              map['reconciliationPipelineJob']),
    );
  }
}

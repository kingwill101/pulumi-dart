// ignore_for_file: unused_element, unnecessary_cast

class PipelineJobBackfillPipelineJob {
  /// Specifies the mapping pipeline job to backfill, the name format
  /// should follow: projects/{projectId}/locations/{locationId}/datasets/{datasetId}/pipelineJobs/{pipelineJobId}.
  final String? mappingPipelineJob;

  /// Creates a new [PipelineJobBackfillPipelineJob].
  /// [mappingPipelineJob] Specifies the mapping pipeline job to backfill, the name format
  PipelineJobBackfillPipelineJob({
    this.mappingPipelineJob,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mappingPipelineJobValue = mappingPipelineJob;
    if (mappingPipelineJobValue != null) {
      map['mappingPipelineJob'] = mappingPipelineJobValue;
    }
    return map;
  }

  factory PipelineJobBackfillPipelineJob.fromMap(Map<String, dynamic> map) {
    return PipelineJobBackfillPipelineJob(
      mappingPipelineJob: map['mappingPipelineJob'] == null
          ? null
          : map['mappingPipelineJob'] as String,
    );
  }
}

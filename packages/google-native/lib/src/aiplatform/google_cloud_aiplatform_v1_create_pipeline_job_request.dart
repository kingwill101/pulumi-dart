// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_pipeline_job.dart';

/// Request message for PipelineService.CreatePipelineJob.
class GoogleCloudAiplatformV1CreatePipelineJobRequest {
  /// The resource name of the Location to create the PipelineJob in. Format: `projects/{project}/locations/{location}`
  final String parent;

  /// The PipelineJob to create.
  final GoogleCloudAiplatformV1PipelineJob pipelineJob;

  /// The ID to use for the PipelineJob, which will become the final component of the PipelineJob name. If not provided, an ID will be automatically generated. This value should be less than 128 characters, and valid characters are `/a-z-/`.
  final String? pipelineJobId;

  /// Creates a new [GoogleCloudAiplatformV1CreatePipelineJobRequest].
  /// [parent] The resource name of the Location to create the PipelineJob in. Format: `projects/{project}/locations/{location}`
  /// [pipelineJob] The PipelineJob to create.
  /// [pipelineJobId] The ID to use for the PipelineJob, which will become the final component of the PipelineJob name. If not provided, an ID will be automatically generated. This value should be less than 128 characters, and valid characters are `/a-z-/`.
  GoogleCloudAiplatformV1CreatePipelineJobRequest({
    required this.parent,
    required this.pipelineJob,
    this.pipelineJobId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parent'] = parent;
    map['pipelineJob'] = pipelineJob.toMap();
    final pipelineJobIdValue = pipelineJobId;
    if (pipelineJobIdValue != null) {
      map['pipelineJobId'] = pipelineJobIdValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1CreatePipelineJobRequest.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1CreatePipelineJobRequest(
      parent: map['parent'] as String,
      pipelineJob: GoogleCloudAiplatformV1PipelineJob.fromMap(
          (map['pipelineJob'] as Map).cast<String, dynamic>()),
      pipelineJobId:
          map['pipelineJobId'] == null ? null : map['pipelineJobId'] as String,
    );
  }
}

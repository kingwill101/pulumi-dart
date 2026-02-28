// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_workload_dataflow_launch_template_request_launch_parameters.dart';

class PipelineWorkloadDataflowLaunchTemplateRequest {
  /// A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage URL, beginning with 'gs://'.
  final String? gcsPath;

  /// The parameters of the template to launch. This should be part of the body of the POST request.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchtemplateparameters
  /// Structure is documented below.
  final PipelineWorkloadDataflowLaunchTemplateRequestLaunchParameters?
      launchParameters;

  /// The regional endpoint to which to direct the request.
  final String? location;

  /// The ID of the Cloud Platform project that the job belongs to.
  final String projectId;

  /// (Optional)
  final bool? validateOnly;

  /// Creates a new [PipelineWorkloadDataflowLaunchTemplateRequest].
  /// [gcsPath] A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage URL, beginning with 'gs://'.
  /// [launchParameters] The parameters of the template to launch. This should be part of the body of the POST request.
  /// [location] The regional endpoint to which to direct the request.
  /// [projectId] The ID of the Cloud Platform project that the job belongs to.
  /// [validateOnly] (Optional)
  PipelineWorkloadDataflowLaunchTemplateRequest({
    this.gcsPath,
    this.launchParameters,
    this.location,
    required this.projectId,
    this.validateOnly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gcsPathValue = gcsPath;
    if (gcsPathValue != null) {
      map['gcsPath'] = gcsPathValue;
    }
    final launchParametersValue = launchParameters;
    if (launchParametersValue != null) {
      map['launchParameters'] = launchParametersValue.toMap();
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['projectId'] = projectId;
    final validateOnlyValue = validateOnly;
    if (validateOnlyValue != null) {
      map['validateOnly'] = validateOnlyValue;
    }
    return map;
  }

  factory PipelineWorkloadDataflowLaunchTemplateRequest.fromMap(
      Map<String, dynamic> map) {
    return PipelineWorkloadDataflowLaunchTemplateRequest(
      gcsPath: map['gcsPath'] == null ? null : map['gcsPath'] as String,
      launchParameters: map['launchParameters'] == null
          ? null
          : PipelineWorkloadDataflowLaunchTemplateRequestLaunchParameters
              .fromMap(
                  (map['launchParameters'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      projectId: map['projectId'] as String,
      validateOnly:
          map['validateOnly'] == null ? null : map['validateOnly'] as bool,
    );
  }
}

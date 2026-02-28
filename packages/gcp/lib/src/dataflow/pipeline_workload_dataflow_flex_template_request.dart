// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_workload_dataflow_flex_template_request_launch_parameter.dart';

class PipelineWorkloadDataflowFlexTemplateRequest {
  /// Parameter to launch a job from a Flex Template.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchflextemplateparameter
  /// Structure is documented below.
  final PipelineWorkloadDataflowFlexTemplateRequestLaunchParameter
      launchParameter;

  /// The regional endpoint to which to direct the request. For example, us-central1, us-west1.
  final String location;

  /// The ID of the Cloud Platform project that the job belongs to.
  final String projectId;

  /// If true, the request is validated but not actually executed. Defaults to false.
  final bool? validateOnly;

  /// Creates a new [PipelineWorkloadDataflowFlexTemplateRequest].
  /// [launchParameter] Parameter to launch a job from a Flex Template.
  /// [location] The regional endpoint to which to direct the request. For example, us-central1, us-west1.
  /// [projectId] The ID of the Cloud Platform project that the job belongs to.
  /// [validateOnly] If true, the request is validated but not actually executed. Defaults to false.
  PipelineWorkloadDataflowFlexTemplateRequest({
    required this.launchParameter,
    required this.location,
    required this.projectId,
    this.validateOnly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['launchParameter'] = launchParameter.toMap();
    map['location'] = location;
    map['projectId'] = projectId;
    final validateOnlyValue = validateOnly;
    if (validateOnlyValue != null) {
      map['validateOnly'] = validateOnlyValue;
    }
    return map;
  }

  factory PipelineWorkloadDataflowFlexTemplateRequest.fromMap(
      Map<String, dynamic> map) {
    return PipelineWorkloadDataflowFlexTemplateRequest(
      launchParameter:
          PipelineWorkloadDataflowFlexTemplateRequestLaunchParameter.fromMap(
              (map['launchParameter'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      projectId: map['projectId'] as String,
      validateOnly:
          map['validateOnly'] == null ? null : map['validateOnly'] as bool,
    );
  }
}

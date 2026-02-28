// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_workload_dataflow_flex_template_request.dart';
import 'pipeline_workload_dataflow_launch_template_request.dart';

class PipelineWorkload {
  /// Template information and additional parameters needed to launch a Dataflow job using the flex launch API.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchflextemplaterequest
  /// Structure is documented below.
  final PipelineWorkloadDataflowFlexTemplateRequest? dataflowFlexTemplateRequest;
  /// Template information and additional parameters needed to launch a Dataflow job using the standard launch API.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchtemplaterequest
  /// Structure is documented below.
  final PipelineWorkloadDataflowLaunchTemplateRequest? dataflowLaunchTemplateRequest;

  /// Creates a new [PipelineWorkload].
  /// [dataflowFlexTemplateRequest] Template information and additional parameters needed to launch a Dataflow job using the flex launch API.
  /// [dataflowLaunchTemplateRequest] Template information and additional parameters needed to launch a Dataflow job using the standard launch API.
  PipelineWorkload({
    this.dataflowFlexTemplateRequest,
    this.dataflowLaunchTemplateRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataflowFlexTemplateRequest': ?dataflowFlexTemplateRequest == null ? null : dataflowFlexTemplateRequest!.toMap(),
      'dataflowLaunchTemplateRequest': ?dataflowLaunchTemplateRequest == null ? null : dataflowLaunchTemplateRequest!.toMap(),
    };
  }

  factory PipelineWorkload.fromMap(Map<String, dynamic> map) {
    return PipelineWorkload(
      dataflowFlexTemplateRequest: map['dataflowFlexTemplateRequest'] == null ? null : PipelineWorkloadDataflowFlexTemplateRequest.fromMap((map['dataflowFlexTemplateRequest'] as Map).cast<String, dynamic>()),
      dataflowLaunchTemplateRequest: map['dataflowLaunchTemplateRequest'] == null ? null : PipelineWorkloadDataflowLaunchTemplateRequest.fromMap((map['dataflowLaunchTemplateRequest'] as Map).cast<String, dynamic>()),
    );
  }
}


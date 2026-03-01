// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datapipelines_v1_launch_flex_template_request_response.dart';
import 'google_cloud_datapipelines_v1_launch_template_request_response.dart';

/// Workload details for creating the pipeline jobs.
class GoogleCloudDatapipelinesV1WorkloadResponse {
  /// Template information and additional parameters needed to launch a Dataflow job using the flex launch API.
  final GoogleCloudDatapipelinesV1LaunchFlexTemplateRequestResponse
  dataflowFlexTemplateRequest;

  /// Template information and additional parameters needed to launch a Dataflow job using the standard launch API.
  final GoogleCloudDatapipelinesV1LaunchTemplateRequestResponse
  dataflowLaunchTemplateRequest;

  /// Creates a new [GoogleCloudDatapipelinesV1WorkloadResponse].
  /// [dataflowFlexTemplateRequest] Template information and additional parameters needed to launch a Dataflow job using the flex launch API.
  /// [dataflowLaunchTemplateRequest] Template information and additional parameters needed to launch a Dataflow job using the standard launch API.
  GoogleCloudDatapipelinesV1WorkloadResponse({
    required this.dataflowFlexTemplateRequest,
    required this.dataflowLaunchTemplateRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataflowFlexTemplateRequest': dataflowFlexTemplateRequest.toMap(),
      'dataflowLaunchTemplateRequest': dataflowLaunchTemplateRequest.toMap(),
    };
  }

  factory GoogleCloudDatapipelinesV1WorkloadResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatapipelinesV1WorkloadResponse(
      dataflowFlexTemplateRequest:
          GoogleCloudDatapipelinesV1LaunchFlexTemplateRequestResponse.fromMap(
            (map['dataflowFlexTemplateRequest'] as Map).cast<String, dynamic>(),
          ),
      dataflowLaunchTemplateRequest:
          GoogleCloudDatapipelinesV1LaunchTemplateRequestResponse.fromMap(
            (map['dataflowLaunchTemplateRequest'] as Map)
                .cast<String, dynamic>(),
          ),
    );
  }
}

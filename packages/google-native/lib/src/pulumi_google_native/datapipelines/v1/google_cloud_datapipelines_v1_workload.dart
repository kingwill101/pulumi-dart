// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datapipelines_v1_launch_flex_template_request.dart';
import 'google_cloud_datapipelines_v1_launch_template_request.dart';

/// Workload details for creating the pipeline jobs.
class GoogleCloudDatapipelinesV1Workload {
  /// Template information and additional parameters needed to launch a Dataflow job using the flex launch API.
  final GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest?
      dataflowFlexTemplateRequest;

  /// Template information and additional parameters needed to launch a Dataflow job using the standard launch API.
  final GoogleCloudDatapipelinesV1LaunchTemplateRequest?
      dataflowLaunchTemplateRequest;

  GoogleCloudDatapipelinesV1Workload({
    this.dataflowFlexTemplateRequest,
    this.dataflowLaunchTemplateRequest,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataflowFlexTemplateRequestValue = dataflowFlexTemplateRequest;
    if (dataflowFlexTemplateRequestValue != null) {
      map['dataflowFlexTemplateRequest'] =
          dataflowFlexTemplateRequestValue.toMap();
    }
    final dataflowLaunchTemplateRequestValue = dataflowLaunchTemplateRequest;
    if (dataflowLaunchTemplateRequestValue != null) {
      map['dataflowLaunchTemplateRequest'] =
          dataflowLaunchTemplateRequestValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDatapipelinesV1Workload.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatapipelinesV1Workload(
      dataflowFlexTemplateRequest: map['dataflowFlexTemplateRequest'] == null
          ? null
          : GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest.fromMap(
              (map['dataflowFlexTemplateRequest'] as Map)
                  .cast<String, dynamic>()),
      dataflowLaunchTemplateRequest:
          map['dataflowLaunchTemplateRequest'] == null
              ? null
              : GoogleCloudDatapipelinesV1LaunchTemplateRequest.fromMap(
                  (map['dataflowLaunchTemplateRequest'] as Map)
                      .cast<String, dynamic>()),
    );
  }
}

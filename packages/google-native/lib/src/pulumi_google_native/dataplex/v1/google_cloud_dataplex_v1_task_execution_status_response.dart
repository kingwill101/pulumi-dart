// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_job_response.dart';

/// Status of the task execution (e.g. Jobs).
class GoogleCloudDataplexV1TaskExecutionStatusResponse {
  /// latest job execution
  final GoogleCloudDataplexV1JobResponse latestJob;

  /// Last update time of the status.
  final String updateTime;

  GoogleCloudDataplexV1TaskExecutionStatusResponse({
    required this.latestJob,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['latestJob'] = latestJob.toMap();
    map['updateTime'] = updateTime;
    return map;
  }

  factory GoogleCloudDataplexV1TaskExecutionStatusResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskExecutionStatusResponse(
      latestJob: GoogleCloudDataplexV1JobResponse.fromMap(
          (map['latestJob'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}

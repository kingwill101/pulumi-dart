// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_trigger_schedule_response.dart';

/// DataScan scheduling and trigger settings.
class GoogleCloudDataplexV1TriggerResponse {
  /// The scan runs once via RunDataScan API.
  final Map<String, dynamic> onDemand;

  /// The scan is scheduled to run periodically.
  final GoogleCloudDataplexV1TriggerScheduleResponse schedule;

  /// Creates a new [GoogleCloudDataplexV1TriggerResponse].
  /// [onDemand] The scan runs once via RunDataScan API.
  /// [schedule] The scan is scheduled to run periodically.
  GoogleCloudDataplexV1TriggerResponse({
    required this.onDemand,
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onDemand': onDemand,
      'schedule': schedule.toMap(),
    };
  }

  factory GoogleCloudDataplexV1TriggerResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1TriggerResponse(
      onDemand: (map['onDemand'] as Map).cast<String, dynamic>(),
      schedule: GoogleCloudDataplexV1TriggerScheduleResponse.fromMap(
        (map['schedule'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}

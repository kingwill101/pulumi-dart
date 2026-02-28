// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_trigger_schedule.dart';

/// DataScan scheduling and trigger settings.
class GoogleCloudDataplexV1Trigger {
  /// The scan runs once via RunDataScan API.
  final Map<String, dynamic>? onDemand;

  /// The scan is scheduled to run periodically.
  final GoogleCloudDataplexV1TriggerSchedule? schedule;

  /// Creates a new [GoogleCloudDataplexV1Trigger].
  /// [onDemand] The scan runs once via RunDataScan API.
  /// [schedule] The scan is scheduled to run periodically.
  GoogleCloudDataplexV1Trigger({
    this.onDemand,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final onDemandValue = onDemand;
    if (onDemandValue != null) {
      map['onDemand'] = onDemandValue;
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = scheduleValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDataplexV1Trigger.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1Trigger(
      onDemand: map['onDemand'] == null
          ? null
          : (map['onDemand'] as Map).cast<String, dynamic>(),
      schedule: map['schedule'] == null
          ? null
          : GoogleCloudDataplexV1TriggerSchedule.fromMap(
              (map['schedule'] as Map).cast<String, dynamic>()),
    );
  }
}

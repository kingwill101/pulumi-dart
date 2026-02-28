// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_trigger.dart';

/// DataScan execution settings.
class GoogleCloudDataplexV1DataScanExecutionSpec {
  /// Immutable. The unnested field (of type Date or Timestamp) that contains values which monotonically increase over time.If not specified, a data scan will run for all data in the table.
  final String? field;

  /// Optional. Spec related to how often and when a scan should be triggered.If not specified, the default is OnDemand, which means the scan will not run until the user calls RunDataScan API.
  final GoogleCloudDataplexV1Trigger? trigger;

  /// Creates a new [GoogleCloudDataplexV1DataScanExecutionSpec].
  /// [field] Immutable. The unnested field (of type Date or Timestamp) that contains values which monotonically increase over time.If not specified, a data scan will run for all data in the table.
  /// [trigger] Optional. Spec related to how often and when a scan should be triggered.If not specified, the default is OnDemand, which means the scan will not run until the user calls RunDataScan API.
  GoogleCloudDataplexV1DataScanExecutionSpec({
    this.field,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldValue = field;
    if (fieldValue != null) {
      map['field'] = fieldValue;
    }
    final triggerValue = trigger;
    if (triggerValue != null) {
      map['trigger'] = triggerValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDataplexV1DataScanExecutionSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataScanExecutionSpec(
      field: map['field'] == null ? null : map['field'] as String,
      trigger: map['trigger'] == null
          ? null
          : GoogleCloudDataplexV1Trigger.fromMap(
              (map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}

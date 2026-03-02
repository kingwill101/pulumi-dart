// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a resource currently being monitored by the Elastic monitor resource.
class MonitoredResourceResponse {
  /// The ARM id of the resource.
  final pulumi.Input<String>? id;
  /// Reason for why the resource is sending logs (or why it is not sending).
  final pulumi.Input<String>? reasonForLogsStatus;
  /// Flag indicating the status of the resource for sending logs operation to Elastic.
  final pulumi.Input<String>? sendingLogs;

  /// Creates a new [MonitoredResourceResponse].
  /// [id] The ARM id of the resource.
  /// [reasonForLogsStatus] Reason for why the resource is sending logs (or why it is not sending).
  /// [sendingLogs] Flag indicating the status of the resource for sending logs operation to Elastic.
  MonitoredResourceResponse({
    this.id,
    this.reasonForLogsStatus,
    this.sendingLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'reasonForLogsStatus': ?reasonForLogsStatus,
      'sendingLogs': ?sendingLogs,
    };
  }

  factory MonitoredResourceResponse.fromMap(Map<String, dynamic> map) {
    return MonitoredResourceResponse(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      reasonForLogsStatus: map['reasonForLogsStatus'] == null ? null : (map['reasonForLogsStatus'] as String).input(),
      sendingLogs: map['sendingLogs'] == null ? null : (map['sendingLogs'] as String).input(),
    );
  }
}


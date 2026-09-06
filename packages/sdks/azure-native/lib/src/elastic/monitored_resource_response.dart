// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a resource currently being monitored by the Elastic monitor resource.
class MonitoredResourceResponse {
  /// The ARM id of the resource.
  final pulumi.Input<String?>? id;
  /// Reason for why the resource is sending logs (or why it is not sending).
  final pulumi.Input<String?>? reasonForLogsStatus;
  /// Flag indicating the status of the resource for sending logs operation to Elastic.
  final pulumi.Input<String?>? sendingLogs;

  /// Creates a new [MonitoredResourceResponse].
  /// [id] The ARM id of the resource.
  /// [reasonForLogsStatus] Reason for why the resource is sending logs (or why it is not sending).
  /// [sendingLogs] Flag indicating the status of the resource for sending logs operation to Elastic.
  const MonitoredResourceResponse({
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
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reasonForLogsStatus: (() { final guardedValue = map['reasonForLogsStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sendingLogs: (() { final guardedValue = map['sendingLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitored_subscription_response.dart';

/// The request to update subscriptions needed to be monitored by the Datadog monitor resource.
class SubscriptionListResponse {
  /// List of subscriptions and the state of the monitoring.
  final pulumi.Input<List<MonitoredSubscriptionResponse>>? monitoredSubscriptionList;

  /// Creates a new [SubscriptionListResponse].
  /// [monitoredSubscriptionList] List of subscriptions and the state of the monitoring.
  const SubscriptionListResponse({
    this.monitoredSubscriptionList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitoredSubscriptionList': ?pulumi.Input.mapOptionalInputValue<List<MonitoredSubscriptionResponse>, List<Map<String, dynamic>>>(monitoredSubscriptionList, (value) => pulumi.Input.encodeList<MonitoredSubscriptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SubscriptionListResponse.fromMap(Map<String, dynamic> map) {
    return SubscriptionListResponse(
      monitoredSubscriptionList: (() { final guardedValue = map['monitoredSubscriptionList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MonitoredSubscriptionResponse>(guardedValue, (value) => MonitoredSubscriptionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitored_subscription.dart';

/// The request to update subscriptions needed to be monitored by the Datadog monitor resource.
class SubscriptionList {
  /// List of subscriptions and the state of the monitoring.
  final pulumi.Input<List<MonitoredSubscription>>? monitoredSubscriptionList;
  /// The operation for the patch on the resource.
  final pulumi.Input<String>? operation;

  /// Creates a new [SubscriptionList].
  /// [monitoredSubscriptionList] List of subscriptions and the state of the monitoring.
  /// [operation] The operation for the patch on the resource.
  const SubscriptionList({
    this.monitoredSubscriptionList,
    this.operation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitoredSubscriptionList': ?pulumi.Input.mapOptionalInputValue<List<MonitoredSubscription>, List<Map<String, dynamic>>>(monitoredSubscriptionList, (value) => pulumi.Input.encodeList<MonitoredSubscription, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operation': ?operation,
    };
  }

  factory SubscriptionList.fromMap(Map<String, dynamic> map) {
    return SubscriptionList(
      monitoredSubscriptionList: (() { final guardedValue = map['monitoredSubscriptionList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MonitoredSubscription>(guardedValue, (value) => MonitoredSubscription.fromMap((value as Map).cast<String, dynamic>()))); })(),
      operation: (() { final guardedValue = map['operation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


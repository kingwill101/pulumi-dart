// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitored_subscription_response.dart';

/// The request to update subscriptions needed to be monitored by the Elastic monitor resource.
class SubscriptionListResponse {
  /// List of subscriptions and the state of the monitoring.
  final List<MonitoredSubscriptionResponse>? monitoredSubscriptionList;
  /// Provisioning State of the resource
  final String provisioningState;

  /// Creates a new [SubscriptionListResponse].
  /// [monitoredSubscriptionList] List of subscriptions and the state of the monitoring.
  /// [provisioningState] Provisioning State of the resource
  SubscriptionListResponse({
    this.monitoredSubscriptionList,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitoredSubscriptionList': ?monitoredSubscriptionList == null ? null : pulumi.Input.encodeList<MonitoredSubscriptionResponse, Map<String, dynamic>>(monitoredSubscriptionList!, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory SubscriptionListResponse.fromMap(Map<String, dynamic> map) {
    return SubscriptionListResponse(
      monitoredSubscriptionList: map['monitoredSubscriptionList'] == null ? null : pulumi.Input.decodeList<MonitoredSubscriptionResponse>(map['monitoredSubscriptionList'], (value) => MonitoredSubscriptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_tag_rules_properties.dart';

/// The list of subscriptions and it's monitoring status by current Datadog monitor.
class MonitoredSubscription {
  /// The reason of not monitoring the subscription.
  final String? error;
  /// The state of monitoring.
  final String? status;
  /// The subscriptionId to be monitored.
  final String? subscriptionId;
  /// Definition of the properties for a TagRules resource.
  final MonitoringTagRulesProperties? tagRules;

  /// Creates a new [MonitoredSubscription].
  /// [error] The reason of not monitoring the subscription.
  /// [status] The state of monitoring.
  /// [subscriptionId] The subscriptionId to be monitored.
  /// [tagRules] Definition of the properties for a TagRules resource.
  MonitoredSubscription({
    this.error,
    this.status,
    this.subscriptionId,
    this.tagRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error,
      'status': ?status,
      'subscriptionId': ?subscriptionId,
      'tagRules': ?tagRules == null ? null : tagRules!.toMap(),
    };
  }

  factory MonitoredSubscription.fromMap(Map<String, dynamic> map) {
    return MonitoredSubscription(
      error: map['error'] == null ? null : map['error'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      tagRules: map['tagRules'] == null ? null : MonitoringTagRulesProperties.fromMap((map['tagRules'] as Map).cast<String, dynamic>()),
    );
  }
}


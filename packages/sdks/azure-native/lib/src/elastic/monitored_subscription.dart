// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_tag_rules_properties.dart';

/// The list of subscriptions and it's monitoring status by current Elastic monitor.
class MonitoredSubscription {
  /// The reason of not monitoring the subscription.
  final pulumi.Input<String>? error;

  /// The state of monitoring.
  final pulumi.Input<String>? status;

  /// The subscriptionId to be monitored.
  final pulumi.Input<String>? subscriptionId;

  /// Definition of the properties for a TagRules resource.
  final pulumi.Input<MonitoringTagRulesProperties>? tagRules;

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
      'tagRules':
          ?pulumi.Input.mapOptionalInputValue<
            MonitoringTagRulesProperties,
            Map<String, dynamic>
          >(tagRules, (value) => value.toMap()),
    };
  }

  factory MonitoredSubscription.fromMap(Map<String, dynamic> map) {
    return MonitoredSubscription(
      error: (() {
        final guardedValue = map['error'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subscriptionId: (() {
        final guardedValue = map['subscriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tagRules: (() {
        final guardedValue = map['tagRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MonitoringTagRulesProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

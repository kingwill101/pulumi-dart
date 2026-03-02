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
      'tagRules': ?pulumi.Input.mapOptionalInputValue<MonitoringTagRulesProperties, Map<String, dynamic>>(tagRules, (value) => value.toMap()),
    };
  }

  factory MonitoredSubscription.fromMap(Map<String, dynamic> map) {
    return MonitoredSubscription(
      error: map['error'] == null ? null : (map['error'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId'] as String).input(),
      tagRules: map['tagRules'] == null ? null : (MonitoringTagRulesProperties.fromMap((map['tagRules'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


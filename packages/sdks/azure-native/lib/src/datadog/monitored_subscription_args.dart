// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_list.dart';

/// {@template pulumi_datadog_monitored_subscription_args_doc}
/// The set of arguments for MonitoredSubscription.
/// {@endtemplate}
/// {@macro pulumi_datadog_monitored_subscription_args_doc}
class MonitoredSubscriptionArgs {
  /// The configuration name. Only 'default' value is supported.
  final pulumi.Input<String>? configurationName;
  /// Monitor resource name
  final pulumi.Input<String> monitorName;
  /// The request to update subscriptions needed to be monitored by the Datadog monitor resource.
  final pulumi.Input<SubscriptionList>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [MonitoredSubscriptionArgs].
  /// [configurationName] The configuration name. Only 'default' value is supported.
  /// [monitorName] Monitor resource name
  /// [properties] The request to update subscriptions needed to be monitored by the Datadog monitor resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  MonitoredSubscriptionArgs({
    this.configurationName,
    required this.monitorName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': ?configurationName,
      'monitorName': monitorName,
      'properties': ?pulumi.Input.mapOptionalInputValue<SubscriptionList, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory MonitoredSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return MonitoredSubscriptionArgs(
      configurationName: map['configurationName'] == null ? null : (map['configurationName']! as String).input(),
      monitorName: (map['monitorName'] as String).input(),
      properties: map['properties'] == null ? null : (SubscriptionList.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}


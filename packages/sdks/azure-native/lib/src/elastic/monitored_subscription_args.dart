// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_list.dart';

/// {@template pulumi_elastic_monitored_subscription_args_doc}
/// The set of arguments for MonitoredSubscription.
/// {@endtemplate}
/// {@macro pulumi_elastic_monitored_subscription_args_doc}
class MonitoredSubscriptionArgs {
  /// The configuration name. Only 'default' value is supported.
  final pulumi.Input<String>? configurationName;
  /// Monitor resource name
  final pulumi.Input<String> monitorName;
  /// The request to update subscriptions needed to be monitored by the Elastic monitor resource.
  final pulumi.Input<SubscriptionList>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [MonitoredSubscriptionArgs].
  /// [configurationName] The configuration name. Only 'default' value is supported.
  /// [monitorName] Monitor resource name
  /// [properties] The request to update subscriptions needed to be monitored by the Elastic monitor resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  MonitoredSubscriptionArgs({
    pulumi.Output<String>? configurationName,
    required pulumi.Output<String> monitorName,
    pulumi.Output<SubscriptionList>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      configurationName = pulumi.Input.asOptionalInput<String>(configurationName),
      monitorName = pulumi.Input.asInput<String>(monitorName),
      properties = pulumi.Input.asOptionalInput<SubscriptionList>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      configurationName: map['configurationName'] == null ? null : pulumi.Output.create<String>(map['configurationName'] as String),
      monitorName: pulumi.Output.create<String>(map['monitorName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<SubscriptionList>(SubscriptionList.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


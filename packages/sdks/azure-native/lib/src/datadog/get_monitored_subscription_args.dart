// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datadog_get_monitored_subscription_args_doc}
/// Arguments for getMonitoredSubscription.
/// {@endtemplate}
/// {@macro pulumi_datadog_get_monitored_subscription_args_doc}
class GetMonitoredSubscriptionArgs {
  /// The configuration name. Only 'default' value is supported.
  final pulumi.Input<String> configurationName;
  /// Monitor resource name
  final pulumi.Input<String> monitorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMonitoredSubscriptionArgs].
  /// [configurationName] The configuration name. Only 'default' value is supported.
  /// [monitorName] Monitor resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMonitoredSubscriptionArgs({
    required this.configurationName,
    required this.monitorName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': configurationName,
      'monitorName': monitorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMonitoredSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetMonitoredSubscriptionArgs(
      configurationName: (map['configurationName'] as String).input(),
      monitorName: (map['monitorName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}


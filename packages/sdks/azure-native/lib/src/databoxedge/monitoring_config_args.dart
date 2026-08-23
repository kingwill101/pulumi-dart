// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_configuration.dart';

/// {@template pulumi_databoxedge_monitoring_config_args_doc}
/// The set of arguments for MonitoringConfig.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_monitoring_config_args_doc}
class MonitoringConfigArgs {
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The metrics configuration details
  final pulumi.Input<List<MetricConfiguration>> metricConfigurations;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The role name.
  final pulumi.Input<String> roleName;

  /// Creates a new [MonitoringConfigArgs].
  /// [deviceName] The device name.
  /// [metricConfigurations] The metrics configuration details
  /// [resourceGroupName] The resource group name.
  /// [roleName] The role name.
  const MonitoringConfigArgs({
    required this.deviceName,
    required this.metricConfigurations,
    required this.resourceGroupName,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'metricConfigurations': pulumi.Input.mapInputValue<List<MetricConfiguration>, List<Map<String, dynamic>>>(metricConfigurations, (value) => pulumi.Input.encodeList<MetricConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'roleName': roleName,
    };
  }

  factory MonitoringConfigArgs.fromMap(Map<String, dynamic> map) {
    return MonitoringConfigArgs(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      metricConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<MetricConfiguration>(map['metricConfigurations']!, (value) => MetricConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      roleName: pulumi.Input.fromValue(map['roleName'] as String),
    );
  }
}

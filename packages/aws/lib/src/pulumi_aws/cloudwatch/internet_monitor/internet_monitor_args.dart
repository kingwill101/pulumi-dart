// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../internet_monitor_health_events_config/internet_monitor_health_events_config.dart';
import '../internet_monitor_internet_measurements_log_delivery/internet_monitor_internet_measurements_log_delivery.dart';

/// The set of arguments for InternetMonitor.
class InternetMonitorArgs {
  /// Health event thresholds. A health event threshold percentage, for performance and availability, determines when Internet Monitor creates a health event when there's an internet issue that affects your application end users. See Health Events Config below.
  final pulumi.Input<InternetMonitorHealthEventsConfig>? healthEventsConfig;

  /// Publish internet measurements for Internet Monitor to an Amazon S3 bucket in addition to CloudWatch Logs.
  final pulumi.Input<InternetMonitorInternetMeasurementsLogDelivery>?
      internetMeasurementsLogDelivery;

  /// The maximum number of city-networks to monitor for your resources. A city-network is the location (city) where clients access your application resources from and the network or ASN, such as an internet service provider (ISP), that clients access the resources through. This limit helps control billing costs.
  final pulumi.Input<int>? maxCityNetworksToMonitor;

  /// The name of the monitor.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> monitorName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The resources to include in a monitor, which you provide as a set of Amazon Resource Names (ARNs).
  final pulumi.Input<List<String>>? resources;

  /// The status for a monitor. The accepted values for Status with the UpdateMonitor API call are the following: `ACTIVE` and `INACTIVE`.
  final pulumi.Input<String>? status;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The percentage of the internet-facing traffic for your application that you want to monitor with this monitor.
  final pulumi.Input<int>? trafficPercentageToMonitor;

  InternetMonitorArgs({
    this.healthEventsConfig,
    this.internetMeasurementsLogDelivery,
    this.maxCityNetworksToMonitor,
    required this.monitorName,
    this.region,
    this.resources,
    this.status,
    this.tags,
    this.trafficPercentageToMonitor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final healthEventsConfigValue = healthEventsConfig;
    if (healthEventsConfigValue != null) {
      map['healthEventsConfig'] = pulumi.Input.mapOptionalInputValue<
              InternetMonitorHealthEventsConfig, Map<String, dynamic>>(
          healthEventsConfigValue, (value) => value.toMap());
    }
    final internetMeasurementsLogDeliveryValue =
        internetMeasurementsLogDelivery;
    if (internetMeasurementsLogDeliveryValue != null) {
      map['internetMeasurementsLogDelivery'] =
          pulumi.Input.mapOptionalInputValue<
                  InternetMonitorInternetMeasurementsLogDelivery,
                  Map<String, dynamic>>(
              internetMeasurementsLogDeliveryValue, (value) => value.toMap());
    }
    final maxCityNetworksToMonitorValue = maxCityNetworksToMonitor;
    if (maxCityNetworksToMonitorValue != null) {
      map['maxCityNetworksToMonitor'] = maxCityNetworksToMonitorValue;
    }
    map['monitorName'] = monitorName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = resourcesValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final trafficPercentageToMonitorValue = trafficPercentageToMonitor;
    if (trafficPercentageToMonitorValue != null) {
      map['trafficPercentageToMonitor'] = trafficPercentageToMonitorValue;
    }
    return map;
  }

  factory InternetMonitorArgs.fromMap(Map<String, dynamic> map) {
    return InternetMonitorArgs(
      healthEventsConfig:
          pulumi.Input.asOptionalInput<InternetMonitorHealthEventsConfig>(
              map['healthEventsConfig']),
      internetMeasurementsLogDelivery: pulumi.Input.asOptionalInput<
              InternetMonitorInternetMeasurementsLogDelivery>(
          map['internetMeasurementsLogDelivery']),
      maxCityNetworksToMonitor:
          pulumi.Input.asOptionalInput<int>(map['maxCityNetworksToMonitor']),
      monitorName: pulumi.Input.asInput<String>(map['monitorName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resources: pulumi.Input.asOptionalInput<List<String>>(map['resources']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      trafficPercentageToMonitor:
          pulumi.Input.asOptionalInput<int>(map['trafficPercentageToMonitor']),
    );
  }
}

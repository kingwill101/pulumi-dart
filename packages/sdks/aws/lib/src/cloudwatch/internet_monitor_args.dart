// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'internet_monitor_health_events_config.dart';
import 'internet_monitor_internet_measurements_log_delivery.dart';

/// {@template pulumi_cloudwatch_internet_monitor_internet_monitor_args_doc}
/// The set of arguments for InternetMonitor.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_internet_monitor_internet_monitor_args_doc}
class InternetMonitorArgs {
  /// Health event thresholds. A health event threshold percentage, for performance and availability, determines when Internet Monitor creates a health event when there's an internet issue that affects your application end users. See Health Events Config below.
  final pulumi.Input<InternetMonitorHealthEventsConfig>? healthEventsConfig;
  /// Publish internet measurements for Internet Monitor to an Amazon S3 bucket in addition to CloudWatch Logs.
  final pulumi.Input<InternetMonitorInternetMeasurementsLogDelivery>? internetMeasurementsLogDelivery;
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

  /// Creates a new [InternetMonitorArgs].
  /// [healthEventsConfig] Health event thresholds. A health event threshold percentage, for performance and availability, determines when Internet Monitor creates a health event when there's an internet issue that affects your application end users. See Health Events Config below.
  /// [internetMeasurementsLogDelivery] Publish internet measurements for Internet Monitor to an Amazon S3 bucket in addition to CloudWatch Logs.
  /// [maxCityNetworksToMonitor] The maximum number of city-networks to monitor for your resources. A city-network is the location (city) where clients access your application resources from and the network or ASN, such as an internet service provider (ISP), that clients access the resources through. This limit helps control billing costs.
  /// [monitorName] The name of the monitor.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resources] The resources to include in a monitor, which you provide as a set of Amazon Resource Names (ARNs).
  /// [status] The status for a monitor. The accepted values for Status with the UpdateMonitor API call are the following: `ACTIVE` and `INACTIVE`.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [trafficPercentageToMonitor] The percentage of the internet-facing traffic for your application that you want to monitor with this monitor.
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
    return <String, dynamic>{
      'healthEventsConfig': ?pulumi.Input.mapOptionalInputValue<InternetMonitorHealthEventsConfig, Map<String, dynamic>>(healthEventsConfig, (value) => value.toMap()),
      'internetMeasurementsLogDelivery': ?pulumi.Input.mapOptionalInputValue<InternetMonitorInternetMeasurementsLogDelivery, Map<String, dynamic>>(internetMeasurementsLogDelivery, (value) => value.toMap()),
      'maxCityNetworksToMonitor': ?maxCityNetworksToMonitor,
      'monitorName': monitorName,
      'region': ?region,
      'resources': ?resources,
      'status': ?status,
      'tags': ?tags,
      'trafficPercentageToMonitor': ?trafficPercentageToMonitor,
    };
  }

  factory InternetMonitorArgs.fromMap(Map<String, dynamic> map) {
    return InternetMonitorArgs(
      healthEventsConfig: (() { final guardedValue = map['healthEventsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InternetMonitorHealthEventsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      internetMeasurementsLogDelivery: (() { final guardedValue = map['internetMeasurementsLogDelivery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InternetMonitorInternetMeasurementsLogDelivery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxCityNetworksToMonitor: (() { final guardedValue = map['maxCityNetworksToMonitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      monitorName: pulumi.Input.fromValue(map['monitorName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trafficPercentageToMonitor: (() { final guardedValue = map['trafficPercentageToMonitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}


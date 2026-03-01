// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'internet_monitor_health_events_config.dart';
import 'internet_monitor_internet_measurements_log_delivery.dart';

/// Input properties used for looking up and filtering InternetMonitor resources.
class InternetMonitorState {
  /// ARN of the Monitor.
  final pulumi.Input<String>? arn;
  /// Health event thresholds. A health event threshold percentage, for performance and availability, determines when Internet Monitor creates a health event when there's an internet issue that affects your application end users. See Health Events Config below.
  final pulumi.Input<InternetMonitorHealthEventsConfig>? healthEventsConfig;
  /// Publish internet measurements for Internet Monitor to an Amazon S3 bucket in addition to CloudWatch Logs.
  final pulumi.Input<InternetMonitorInternetMeasurementsLogDelivery>? internetMeasurementsLogDelivery;
  /// The maximum number of city-networks to monitor for your resources. A city-network is the location (city) where clients access your application resources from and the network or ASN, such as an internet service provider (ISP), that clients access the resources through. This limit helps control billing costs.
  final pulumi.Input<int>? maxCityNetworksToMonitor;
  /// The name of the monitor.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? monitorName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The resources to include in a monitor, which you provide as a set of Amazon Resource Names (ARNs).
  final pulumi.Input<List<String>>? resources;
  /// The status for a monitor. The accepted values for Status with the UpdateMonitor API call are the following: `ACTIVE` and `INACTIVE`.
  final pulumi.Input<String>? status;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The percentage of the internet-facing traffic for your application that you want to monitor with this monitor.
  final pulumi.Input<int>? trafficPercentageToMonitor;

  /// Creates a new [InternetMonitorState].
  /// [arn] ARN of the Monitor.
  /// [healthEventsConfig] Health event thresholds. A health event threshold percentage, for performance and availability, determines when Internet Monitor creates a health event when there's an internet issue that affects your application end users. See Health Events Config below.
  /// [internetMeasurementsLogDelivery] Publish internet measurements for Internet Monitor to an Amazon S3 bucket in addition to CloudWatch Logs.
  /// [maxCityNetworksToMonitor] The maximum number of city-networks to monitor for your resources. A city-network is the location (city) where clients access your application resources from and the network or ASN, such as an internet service provider (ISP), that clients access the resources through. This limit helps control billing costs.
  /// [monitorName] The name of the monitor.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resources] The resources to include in a monitor, which you provide as a set of Amazon Resource Names (ARNs).
  /// [status] The status for a monitor. The accepted values for Status with the UpdateMonitor API call are the following: `ACTIVE` and `INACTIVE`.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [trafficPercentageToMonitor] The percentage of the internet-facing traffic for your application that you want to monitor with this monitor.
  InternetMonitorState({
    pulumi.Output<String>? arn,
    pulumi.Output<InternetMonitorHealthEventsConfig>? healthEventsConfig,
    pulumi.Output<InternetMonitorInternetMeasurementsLogDelivery>? internetMeasurementsLogDelivery,
    pulumi.Output<int>? maxCityNetworksToMonitor,
    pulumi.Output<String>? monitorName,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? resources,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<int>? trafficPercentageToMonitor,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      healthEventsConfig = pulumi.Input.asOptionalInput<InternetMonitorHealthEventsConfig>(healthEventsConfig),
      internetMeasurementsLogDelivery = pulumi.Input.asOptionalInput<InternetMonitorInternetMeasurementsLogDelivery>(internetMeasurementsLogDelivery),
      maxCityNetworksToMonitor = pulumi.Input.asOptionalInput<int>(maxCityNetworksToMonitor),
      monitorName = pulumi.Input.asOptionalInput<String>(monitorName),
      region = pulumi.Input.asOptionalInput<String>(region),
      resources = pulumi.Input.asOptionalInput<List<String>>(resources),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      trafficPercentageToMonitor = pulumi.Input.asOptionalInput<int>(trafficPercentageToMonitor);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'healthEventsConfig': ?pulumi.Input.mapOptionalInputValue<InternetMonitorHealthEventsConfig, Map<String, dynamic>>(healthEventsConfig, (value) => value.toMap()),
      'internetMeasurementsLogDelivery': ?pulumi.Input.mapOptionalInputValue<InternetMonitorInternetMeasurementsLogDelivery, Map<String, dynamic>>(internetMeasurementsLogDelivery, (value) => value.toMap()),
      'maxCityNetworksToMonitor': ?maxCityNetworksToMonitor,
      'monitorName': ?monitorName,
      'region': ?region,
      'resources': ?resources,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'trafficPercentageToMonitor': ?trafficPercentageToMonitor,
    };
  }

  factory InternetMonitorState.fromMap(Map<String, dynamic> map) {
    return InternetMonitorState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      healthEventsConfig: map['healthEventsConfig'] == null ? null : pulumi.Output.create<InternetMonitorHealthEventsConfig>(InternetMonitorHealthEventsConfig.fromMap((map['healthEventsConfig'] as Map).cast<String, dynamic>())),
      internetMeasurementsLogDelivery: map['internetMeasurementsLogDelivery'] == null ? null : pulumi.Output.create<InternetMonitorInternetMeasurementsLogDelivery>(InternetMonitorInternetMeasurementsLogDelivery.fromMap((map['internetMeasurementsLogDelivery'] as Map).cast<String, dynamic>())),
      maxCityNetworksToMonitor: map['maxCityNetworksToMonitor'] == null ? null : pulumi.Output.create<int>(map['maxCityNetworksToMonitor'] as int),
      monitorName: map['monitorName'] == null ? null : pulumi.Output.create<String>(map['monitorName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resources: map['resources'] == null ? null : pulumi.Output.create<List<String>>((map['resources'] as List).cast<String>()),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      trafficPercentageToMonitor: map['trafficPercentageToMonitor'] == null ? null : pulumi.Output.create<int>(map['trafficPercentageToMonitor'] as int),
    );
  }
}


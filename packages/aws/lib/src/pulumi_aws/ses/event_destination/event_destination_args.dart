// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../event_destination_cloudwatch_destination/event_destination_cloudwatch_destination.dart';
import '../event_destination_kinesis_destination/event_destination_kinesis_destination.dart';
import '../event_destination_sns_destination/event_destination_sns_destination.dart';

/// The set of arguments for EventDestination.
class EventDestinationArgs {
  /// CloudWatch destination for the events
  final pulumi.Input<List<EventDestinationCloudwatchDestination>>?
      cloudwatchDestinations;

  /// The name of the configuration set
  final pulumi.Input<String> configurationSetName;

  /// If true, the event destination will be enabled
  final pulumi.Input<bool>? enabled;

  /// Send the events to a kinesis firehose destination
  final pulumi.Input<EventDestinationKinesisDestination>? kinesisDestination;

  /// A list of matching types. May be any of `"send"`, `"reject"`, `"bounce"`, `"complaint"`, `"delivery"`, `"open"`, `"click"`, or `"renderingFailure"`.
  final pulumi.Input<List<String>> matchingTypes;

  /// The name of the event destination
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Send the events to an SNS Topic destination
  ///
  /// > **NOTE:** You can specify `"cloudwatch_destination"` or `"kinesis_destination"` but not both
  final pulumi.Input<EventDestinationSnsDestination>? snsDestination;

  EventDestinationArgs({
    this.cloudwatchDestinations,
    required this.configurationSetName,
    this.enabled,
    this.kinesisDestination,
    required this.matchingTypes,
    this.name,
    this.region,
    this.snsDestination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudwatchDestinationsValue = cloudwatchDestinations;
    if (cloudwatchDestinationsValue != null) {
      map['cloudwatchDestinations'] = pulumi.Input.mapOptionalInputValue<
              List<EventDestinationCloudwatchDestination>,
              List<Map<String, dynamic>>>(
          cloudwatchDestinationsValue,
          (value) => pulumi.Input.encodeList<
              EventDestinationCloudwatchDestination,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['configurationSetName'] = configurationSetName;
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final kinesisDestinationValue = kinesisDestination;
    if (kinesisDestinationValue != null) {
      map['kinesisDestination'] = pulumi.Input.mapOptionalInputValue<
              EventDestinationKinesisDestination, Map<String, dynamic>>(
          kinesisDestinationValue, (value) => value.toMap());
    }
    map['matchingTypes'] = matchingTypes;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final snsDestinationValue = snsDestination;
    if (snsDestinationValue != null) {
      map['snsDestination'] = pulumi.Input.mapOptionalInputValue<
          EventDestinationSnsDestination,
          Map<String, dynamic>>(snsDestinationValue, (value) => value.toMap());
    }
    return map;
  }

  factory EventDestinationArgs.fromMap(Map<String, dynamic> map) {
    return EventDestinationArgs(
      cloudwatchDestinations: pulumi.Input.asOptionalInput<
              List<EventDestinationCloudwatchDestination>>(
          map['cloudwatchDestinations']),
      configurationSetName:
          pulumi.Input.asInput<String>(map['configurationSetName']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      kinesisDestination:
          pulumi.Input.asOptionalInput<EventDestinationKinesisDestination>(
              map['kinesisDestination']),
      matchingTypes: pulumi.Input.asInput<List<String>>(map['matchingTypes']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      snsDestination:
          pulumi.Input.asOptionalInput<EventDestinationSnsDestination>(
              map['snsDestination']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../event_destination_cloudwatch_destination/event_destination_cloudwatch_destination.dart';
import '../event_destination_kinesis_destination/event_destination_kinesis_destination.dart';
import '../event_destination_sns_destination/event_destination_sns_destination.dart';

/// The set of arguments for EventDestination.
class EventDestinationArgs {
  /// CloudWatch destination for the events
  final Input<List<EventDestinationCloudwatchDestination>>?
      cloudwatchDestinations;

  /// The name of the configuration set
  final Input<String> configurationSetName;

  /// If true, the event destination will be enabled
  final Input<bool>? enabled;

  /// Send the events to a kinesis firehose destination
  final Input<EventDestinationKinesisDestination>? kinesisDestination;

  /// A list of matching types. May be any of `"send"`, `"reject"`, `"bounce"`, `"complaint"`, `"delivery"`, `"open"`, `"click"`, or `"renderingFailure"`.
  final Input<List<String>> matchingTypes;

  /// The name of the event destination
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Send the events to an SNS Topic destination
  ///
  /// > **NOTE:** You can specify `<span pulumi-lang-nodejs=""cloudwatchDestination"" pulumi-lang-dotnet=""CloudwatchDestination"" pulumi-lang-go=""cloudwatchDestination"" pulumi-lang-python=""cloudwatch_destination"" pulumi-lang-yaml=""cloudwatchDestination"" pulumi-lang-java=""cloudwatchDestination"">"cloudwatch_destination"</span>` or `<span pulumi-lang-nodejs=""kinesisDestination"" pulumi-lang-dotnet=""KinesisDestination"" pulumi-lang-go=""kinesisDestination"" pulumi-lang-python=""kinesis_destination"" pulumi-lang-yaml=""kinesisDestination"" pulumi-lang-java=""kinesisDestination"">"kinesis_destination"</span>` but not both
  final Input<EventDestinationSnsDestination>? snsDestination;

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
      map['cloudwatchDestinations'] = Input.mapOptionalInputValue<
              List<EventDestinationCloudwatchDestination>,
              List<Map<String, dynamic>>>(
          cloudwatchDestinationsValue,
          (value) => Input.encodeList<EventDestinationCloudwatchDestination,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['configurationSetName'] = configurationSetName;
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final kinesisDestinationValue = kinesisDestination;
    if (kinesisDestinationValue != null) {
      map['kinesisDestination'] = Input.mapOptionalInputValue<
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
      map['snsDestination'] = Input.mapOptionalInputValue<
          EventDestinationSnsDestination,
          Map<String, dynamic>>(snsDestinationValue, (value) => value.toMap());
    }
    return map;
  }

  factory EventDestinationArgs.fromMap(Map<String, dynamic> map) {
    return EventDestinationArgs(
      cloudwatchDestinations:
          Input.asOptionalInput<List<EventDestinationCloudwatchDestination>>(
              map['cloudwatchDestinations']),
      configurationSetName: Input.asInput<String>(map['configurationSetName']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      kinesisDestination:
          Input.asOptionalInput<EventDestinationKinesisDestination>(
              map['kinesisDestination']),
      matchingTypes: Input.asInput<List<String>>(map['matchingTypes']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      snsDestination: Input.asOptionalInput<EventDestinationSnsDestination>(
          map['snsDestination']),
    );
  }
}

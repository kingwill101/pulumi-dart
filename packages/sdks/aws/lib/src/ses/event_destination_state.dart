// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_destination_cloudwatch_destination.dart';
import 'event_destination_kinesis_destination.dart';
import 'event_destination_sns_destination.dart';

/// Input properties used for looking up and filtering EventDestination resources.
class EventDestinationState {
  /// The SES event destination ARN.
  final pulumi.Input<String>? arn;
  /// CloudWatch destination for the events
  final pulumi.Input<List<EventDestinationCloudwatchDestination>>? cloudwatchDestinations;
  /// The name of the configuration set
  final pulumi.Input<String>? configurationSetName;
  /// If true, the event destination will be enabled
  final pulumi.Input<bool>? enabled;
  /// Send the events to a kinesis firehose destination
  final pulumi.Input<EventDestinationKinesisDestination>? kinesisDestination;
  /// A list of matching types. May be any of `"send"`, `"reject"`, `"bounce"`, `"complaint"`, `"delivery"`, `"open"`, `"click"`, or `"renderingFailure"`.
  final pulumi.Input<List<String>>? matchingTypes;
  /// The name of the event destination
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Send the events to an SNS Topic destination
  ///
  /// &gt; **NOTE:** You can specify `"cloudwatchDestination"` or `"kinesisDestination"` but not both
  final pulumi.Input<EventDestinationSnsDestination>? snsDestination;

  /// Creates a new [EventDestinationState].
  /// [arn] The SES event destination ARN.
  /// [cloudwatchDestinations] CloudWatch destination for the events
  /// [configurationSetName] The name of the configuration set
  /// [enabled] If true, the event destination will be enabled
  /// [kinesisDestination] Send the events to a kinesis firehose destination
  /// [matchingTypes] A list of matching types. May be any of `"send"`, `"reject"`, `"bounce"`, `"complaint"`, `"delivery"`, `"open"`, `"click"`, or `"renderingFailure"`.
  /// [name] The name of the event destination
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snsDestination] Send the events to an SNS Topic destination
  const EventDestinationState({
    this.arn,
    this.cloudwatchDestinations,
    this.configurationSetName,
    this.enabled,
    this.kinesisDestination,
    this.matchingTypes,
    this.name,
    this.region,
    this.snsDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cloudwatchDestinations': ?pulumi.Input.mapOptionalInputValue<List<EventDestinationCloudwatchDestination>, List<Map<String, dynamic>>>(cloudwatchDestinations, (value) => pulumi.Input.encodeList<EventDestinationCloudwatchDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configurationSetName': ?configurationSetName,
      'enabled': ?enabled,
      'kinesisDestination': ?pulumi.Input.mapOptionalInputValue<EventDestinationKinesisDestination, Map<String, dynamic>>(kinesisDestination, (value) => value.toMap()),
      'matchingTypes': ?matchingTypes,
      'name': ?name,
      'region': ?region,
      'snsDestination': ?pulumi.Input.mapOptionalInputValue<EventDestinationSnsDestination, Map<String, dynamic>>(snsDestination, (value) => value.toMap()),
    };
  }

  factory EventDestinationState.fromMap(Map<String, dynamic> map) {
    return EventDestinationState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudwatchDestinations: (() { final guardedValue = map['cloudwatchDestinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventDestinationCloudwatchDestination>(guardedValue, (value) => EventDestinationCloudwatchDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      configurationSetName: (() { final guardedValue = map['configurationSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kinesisDestination: (() { final guardedValue = map['kinesisDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventDestinationKinesisDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matchingTypes: (() { final guardedValue = map['matchingTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snsDestination: (() { final guardedValue = map['snsDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventDestinationSnsDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

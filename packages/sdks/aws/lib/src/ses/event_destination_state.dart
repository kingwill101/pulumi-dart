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
  /// > **NOTE:** You can specify `"cloudwatch_destination"` or `"kinesis_destination"` but not both
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
  EventDestinationState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<EventDestinationCloudwatchDestination>>? cloudwatchDestinations,
    pulumi.Output<String>? configurationSetName,
    pulumi.Output<bool>? enabled,
    pulumi.Output<EventDestinationKinesisDestination>? kinesisDestination,
    pulumi.Output<List<String>>? matchingTypes,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<EventDestinationSnsDestination>? snsDestination,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cloudwatchDestinations = pulumi.Input.asOptionalInput<List<EventDestinationCloudwatchDestination>>(cloudwatchDestinations),
      configurationSetName = pulumi.Input.asOptionalInput<String>(configurationSetName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      kinesisDestination = pulumi.Input.asOptionalInput<EventDestinationKinesisDestination>(kinesisDestination),
      matchingTypes = pulumi.Input.asOptionalInput<List<String>>(matchingTypes),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      snsDestination = pulumi.Input.asOptionalInput<EventDestinationSnsDestination>(snsDestination);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cloudwatchDestinations: map['cloudwatchDestinations'] == null ? null : pulumi.Output.create<List<EventDestinationCloudwatchDestination>>(pulumi.Input.decodeList<EventDestinationCloudwatchDestination>(map['cloudwatchDestinations'], (value) => EventDestinationCloudwatchDestination.fromMap((value as Map).cast<String, dynamic>()))),
      configurationSetName: map['configurationSetName'] == null ? null : pulumi.Output.create<String>(map['configurationSetName'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      kinesisDestination: map['kinesisDestination'] == null ? null : pulumi.Output.create<EventDestinationKinesisDestination>(EventDestinationKinesisDestination.fromMap((map['kinesisDestination'] as Map).cast<String, dynamic>())),
      matchingTypes: map['matchingTypes'] == null ? null : pulumi.Output.create<List<String>>((map['matchingTypes'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      snsDestination: map['snsDestination'] == null ? null : pulumi.Output.create<EventDestinationSnsDestination>(EventDestinationSnsDestination.fromMap((map['snsDestination'] as Map).cast<String, dynamic>())),
    );
  }
}


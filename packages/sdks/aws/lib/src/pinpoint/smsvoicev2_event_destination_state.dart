// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'smsvoicev2_event_destination_cloudwatch_logs_destination.dart';
import 'smsvoicev2_event_destination_kinesis_firehose_destination.dart';
import 'smsvoicev2_event_destination_sns_destination.dart';

/// Input properties used for looking up and filtering Smsvoicev2EventDestination resources.
class Smsvoicev2EventDestinationState {
  /// Send events to Amazon CloudWatch Logs. Exactly one of `cloudwatchLogsDestination`, `kinesisFirehoseDestination`, or `snsDestination` must be configured. See `cloudwatchLogsDestination` Block for details.
  final pulumi.Input<Smsvoicev2EventDestinationCloudwatchLogsDestination?>? cloudwatchLogsDestination;
  /// ARN of the parent configuration set.
  final pulumi.Input<String?>? configurationSetArn;
  /// Name of the configuration set this event destination belongs to. Changing this forces a new resource.
  final pulumi.Input<String?>? configurationSetName;
  /// Whether the event destination is enabled. Defaults to `true`.
  final pulumi.Input<bool?>? enabled;
  /// Name of the event destination. Changing this forces a new resource.
  final pulumi.Input<String?>? eventDestinationName;
  /// Send events to Amazon Data Firehose. Exactly one of `cloudwatchLogsDestination`, `kinesisFirehoseDestination`, or `snsDestination` must be configured. See `kinesisFirehoseDestination` Block for details.
  final pulumi.Input<Smsvoicev2EventDestinationKinesisFirehoseDestination?>? kinesisFirehoseDestination;
  /// Event types for which the destination receives records. See the [AWS API reference](https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_CreateEventDestination.html#pinpoint-CreateEventDestination-request-MatchingEventTypes) for valid values.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>?>? matchingEventTypes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Send events to Amazon SNS. Exactly one of `cloudwatchLogsDestination`, `kinesisFirehoseDestination`, or `snsDestination` must be configured. See `snsDestination` Block for details.
  final pulumi.Input<Smsvoicev2EventDestinationSnsDestination?>? snsDestination;

  /// Creates a new [Smsvoicev2EventDestinationState].
  /// [cloudwatchLogsDestination] Send events to Amazon CloudWatch Logs. Exactly one of `cloudwatchLogsDestination`, `kinesisFirehoseDestination`, or `snsDestination` must be configured. See `cloudwatchLogsDestination` Block for details.
  /// [configurationSetArn] ARN of the parent configuration set.
  /// [configurationSetName] Name of the configuration set this event destination belongs to. Changing this forces a new resource.
  /// [enabled] Whether the event destination is enabled. Defaults to `true`.
  /// [eventDestinationName] Name of the event destination. Changing this forces a new resource.
  /// [kinesisFirehoseDestination] Send events to Amazon Data Firehose. Exactly one of `cloudwatchLogsDestination`, `kinesisFirehoseDestination`, or `snsDestination` must be configured. See `kinesisFirehoseDestination` Block for details.
  /// [matchingEventTypes] Event types for which the destination receives records. See the [AWS API reference](https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_CreateEventDestination.html#pinpoint-CreateEventDestination-request-MatchingEventTypes) for valid values.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snsDestination] Send events to Amazon SNS. Exactly one of `cloudwatchLogsDestination`, `kinesisFirehoseDestination`, or `snsDestination` must be configured. See `snsDestination` Block for details.
  const Smsvoicev2EventDestinationState({
    this.cloudwatchLogsDestination,
    this.configurationSetArn,
    this.configurationSetName,
    this.enabled,
    this.eventDestinationName,
    this.kinesisFirehoseDestination,
    this.matchingEventTypes,
    this.region,
    this.snsDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogsDestination': ?pulumi.Input.mapOptionalInputValue<Smsvoicev2EventDestinationCloudwatchLogsDestination, Map<String, dynamic>>(cloudwatchLogsDestination, (value) => value.toMap()),
      'configurationSetArn': ?configurationSetArn,
      'configurationSetName': ?configurationSetName,
      'enabled': ?enabled,
      'eventDestinationName': ?eventDestinationName,
      'kinesisFirehoseDestination': ?pulumi.Input.mapOptionalInputValue<Smsvoicev2EventDestinationKinesisFirehoseDestination, Map<String, dynamic>>(kinesisFirehoseDestination, (value) => value.toMap()),
      'matchingEventTypes': ?matchingEventTypes,
      'region': ?region,
      'snsDestination': ?pulumi.Input.mapOptionalInputValue<Smsvoicev2EventDestinationSnsDestination, Map<String, dynamic>>(snsDestination, (value) => value.toMap()),
    };
  }

  factory Smsvoicev2EventDestinationState.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2EventDestinationState(
      cloudwatchLogsDestination: (() { final guardedValue = map['cloudwatchLogsDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Smsvoicev2EventDestinationCloudwatchLogsDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configurationSetArn: (() { final guardedValue = map['configurationSetArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationSetName: (() { final guardedValue = map['configurationSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eventDestinationName: (() { final guardedValue = map['eventDestinationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kinesisFirehoseDestination: (() { final guardedValue = map['kinesisFirehoseDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Smsvoicev2EventDestinationKinesisFirehoseDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matchingEventTypes: (() { final guardedValue = map['matchingEventTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snsDestination: (() { final guardedValue = map['snsDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Smsvoicev2EventDestinationSnsDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

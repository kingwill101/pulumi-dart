// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_set_event_destination_event_destination_cloud_watch_destination.dart';
import 'configuration_set_event_destination_event_destination_event_bridge_destination.dart';
import 'configuration_set_event_destination_event_destination_kinesis_firehose_destination.dart';
import 'configuration_set_event_destination_event_destination_pinpoint_destination.dart';
import 'configuration_set_event_destination_event_destination_sns_destination.dart';

class ConfigurationSetEventDestinationEventDestination {
  /// An object that defines an Amazon CloudWatch destination for email events. See `cloud_watch_destination` Block for details.
  final pulumi.Input<ConfigurationSetEventDestinationEventDestinationCloudWatchDestination>? cloudWatchDestination;
  /// When the event destination is enabled, the specified event types are sent to the destinations. Default: `false`.
  final pulumi.Input<bool>? enabled;
  /// An object that defines an Amazon EventBridge destination for email events. You can use Amazon EventBridge to send notifications when certain email events occur. See `event_bridge_destination` Block for details.
  final pulumi.Input<ConfigurationSetEventDestinationEventDestinationEventBridgeDestination>? eventBridgeDestination;
  /// An object that defines an Amazon Kinesis Data Firehose destination for email events. See `kinesis_firehose_destination` Block for details.
  final pulumi.Input<ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination>? kinesisFirehoseDestination;
  /// An array that specifies which events the Amazon SES API v2 should send to the destinations. Valid values: `SEND`, `REJECT`, `BOUNCE`, `COMPLAINT`, `DELIVERY`, `OPEN`, `CLICK`, `RENDERING_FAILURE`, `DELIVERY_DELAY`, `SUBSCRIPTION`.
  final pulumi.Input<List<String>> matchingEventTypes;
  /// An object that defines an Amazon Pinpoint project destination for email events. See `pinpoint_destination` Block for details.
  final pulumi.Input<ConfigurationSetEventDestinationEventDestinationPinpointDestination>? pinpointDestination;
  /// An object that defines an Amazon SNS destination for email events. See `sns_destination` Block for details.
  final pulumi.Input<ConfigurationSetEventDestinationEventDestinationSnsDestination>? snsDestination;

  /// Creates a new [ConfigurationSetEventDestinationEventDestination].
  /// [cloudWatchDestination] An object that defines an Amazon CloudWatch destination for email events. See `cloud_watch_destination` Block for details.
  /// [enabled] When the event destination is enabled, the specified event types are sent to the destinations. Default: `false`.
  /// [eventBridgeDestination] An object that defines an Amazon EventBridge destination for email events. You can use Amazon EventBridge to send notifications when certain email events occur. See `event_bridge_destination` Block for details.
  /// [kinesisFirehoseDestination] An object that defines an Amazon Kinesis Data Firehose destination for email events. See `kinesis_firehose_destination` Block for details.
  /// [matchingEventTypes] An array that specifies which events the Amazon SES API v2 should send to the destinations. Valid values: `SEND`, `REJECT`, `BOUNCE`, `COMPLAINT`, `DELIVERY`, `OPEN`, `CLICK`, `RENDERING_FAILURE`, `DELIVERY_DELAY`, `SUBSCRIPTION`.
  /// [pinpointDestination] An object that defines an Amazon Pinpoint project destination for email events. See `pinpoint_destination` Block for details.
  /// [snsDestination] An object that defines an Amazon SNS destination for email events. See `sns_destination` Block for details.
  ConfigurationSetEventDestinationEventDestination({
    this.cloudWatchDestination,
    this.enabled,
    this.eventBridgeDestination,
    this.kinesisFirehoseDestination,
    required this.matchingEventTypes,
    this.pinpointDestination,
    this.snsDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchDestination': ?pulumi.Input.mapOptionalInputValue<ConfigurationSetEventDestinationEventDestinationCloudWatchDestination, Map<String, dynamic>>(cloudWatchDestination, (value) => value.toMap()),
      'enabled': ?enabled,
      'eventBridgeDestination': ?pulumi.Input.mapOptionalInputValue<ConfigurationSetEventDestinationEventDestinationEventBridgeDestination, Map<String, dynamic>>(eventBridgeDestination, (value) => value.toMap()),
      'kinesisFirehoseDestination': ?pulumi.Input.mapOptionalInputValue<ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination, Map<String, dynamic>>(kinesisFirehoseDestination, (value) => value.toMap()),
      'matchingEventTypes': matchingEventTypes,
      'pinpointDestination': ?pulumi.Input.mapOptionalInputValue<ConfigurationSetEventDestinationEventDestinationPinpointDestination, Map<String, dynamic>>(pinpointDestination, (value) => value.toMap()),
      'snsDestination': ?pulumi.Input.mapOptionalInputValue<ConfigurationSetEventDestinationEventDestinationSnsDestination, Map<String, dynamic>>(snsDestination, (value) => value.toMap()),
    };
  }

  factory ConfigurationSetEventDestinationEventDestination.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetEventDestinationEventDestination(
      cloudWatchDestination: (() { final guardedValue = map['cloudWatchDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationSetEventDestinationEventDestinationCloudWatchDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eventBridgeDestination: (() { final guardedValue = map['eventBridgeDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationSetEventDestinationEventDestinationEventBridgeDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kinesisFirehoseDestination: (() { final guardedValue = map['kinesisFirehoseDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matchingEventTypes: pulumi.Input.fromValue((map['matchingEventTypes'] as List).cast<String>()),
      pinpointDestination: (() { final guardedValue = map['pinpointDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationSetEventDestinationEventDestinationPinpointDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snsDestination: (() { final guardedValue = map['snsDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationSetEventDestinationEventDestinationSnsDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


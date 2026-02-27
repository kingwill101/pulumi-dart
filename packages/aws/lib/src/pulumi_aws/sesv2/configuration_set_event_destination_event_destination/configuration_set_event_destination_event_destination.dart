// ignore_for_file: unused_element, unnecessary_cast

import '../configuration_set_event_destination_event_destination_cloud_watch_destination/configuration_set_event_destination_event_destination_cloud_watch_destination.dart';
import '../configuration_set_event_destination_event_destination_event_bridge_destination/configuration_set_event_destination_event_destination_event_bridge_destination.dart';
import '../configuration_set_event_destination_event_destination_kinesis_firehose_destination/configuration_set_event_destination_event_destination_kinesis_firehose_destination.dart';
import '../configuration_set_event_destination_event_destination_pinpoint_destination/configuration_set_event_destination_event_destination_pinpoint_destination.dart';
import '../configuration_set_event_destination_event_destination_sns_destination/configuration_set_event_destination_event_destination_sns_destination.dart';

class ConfigurationSetEventDestinationEventDestination {
  /// An object that defines an Amazon CloudWatch destination for email events. See `cloud_watch_destination` Block for details.
  final ConfigurationSetEventDestinationEventDestinationCloudWatchDestination?
      cloudWatchDestination;

  /// When the event destination is enabled, the specified event types are sent to the destinations. Default: `false`.
  final bool? enabled;

  /// An object that defines an Amazon EventBridge destination for email events. You can use Amazon EventBridge to send notifications when certain email events occur. See `event_bridge_destination` Block for details.
  final ConfigurationSetEventDestinationEventDestinationEventBridgeDestination?
      eventBridgeDestination;

  /// An object that defines an Amazon Kinesis Data Firehose destination for email events. See `kinesis_firehose_destination` Block for details.
  final ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination?
      kinesisFirehoseDestination;

  /// An array that specifies which events the Amazon SES API v2 should send to the destinations. Valid values: `SEND`, `REJECT`, `BOUNCE`, `COMPLAINT`, `DELIVERY`, `OPEN`, `CLICK`, `RENDERING_FAILURE`, `DELIVERY_DELAY`, `SUBSCRIPTION`.
  final List<String> matchingEventTypes;

  /// An object that defines an Amazon Pinpoint project destination for email events. See `pinpoint_destination` Block for details.
  final ConfigurationSetEventDestinationEventDestinationPinpointDestination?
      pinpointDestination;

  /// An object that defines an Amazon SNS destination for email events. See `sns_destination` Block for details.
  final ConfigurationSetEventDestinationEventDestinationSnsDestination?
      snsDestination;

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
    final map = <String, dynamic>{};
    final cloudWatchDestinationValue = cloudWatchDestination;
    if (cloudWatchDestinationValue != null) {
      map['cloudWatchDestination'] = cloudWatchDestinationValue.toMap();
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final eventBridgeDestinationValue = eventBridgeDestination;
    if (eventBridgeDestinationValue != null) {
      map['eventBridgeDestination'] = eventBridgeDestinationValue.toMap();
    }
    final kinesisFirehoseDestinationValue = kinesisFirehoseDestination;
    if (kinesisFirehoseDestinationValue != null) {
      map['kinesisFirehoseDestination'] =
          kinesisFirehoseDestinationValue.toMap();
    }
    map['matchingEventTypes'] = matchingEventTypes;
    final pinpointDestinationValue = pinpointDestination;
    if (pinpointDestinationValue != null) {
      map['pinpointDestination'] = pinpointDestinationValue.toMap();
    }
    final snsDestinationValue = snsDestination;
    if (snsDestinationValue != null) {
      map['snsDestination'] = snsDestinationValue.toMap();
    }
    return map;
  }

  factory ConfigurationSetEventDestinationEventDestination.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationSetEventDestinationEventDestination(
      cloudWatchDestination: map['cloudWatchDestination'] == null
          ? null
          : ConfigurationSetEventDestinationEventDestinationCloudWatchDestination
              .fromMap((map['cloudWatchDestination'] as Map)
                  .cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      eventBridgeDestination: map['eventBridgeDestination'] == null
          ? null
          : ConfigurationSetEventDestinationEventDestinationEventBridgeDestination
              .fromMap((map['eventBridgeDestination'] as Map)
                  .cast<String, dynamic>()),
      kinesisFirehoseDestination: map['kinesisFirehoseDestination'] == null
          ? null
          : ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination
              .fromMap((map['kinesisFirehoseDestination'] as Map)
                  .cast<String, dynamic>()),
      matchingEventTypes: (map['matchingEventTypes'] as List).cast<String>(),
      pinpointDestination: map['pinpointDestination'] == null
          ? null
          : ConfigurationSetEventDestinationEventDestinationPinpointDestination
              .fromMap(
                  (map['pinpointDestination'] as Map).cast<String, dynamic>()),
      snsDestination: map['snsDestination'] == null
          ? null
          : ConfigurationSetEventDestinationEventDestinationSnsDestination
              .fromMap((map['snsDestination'] as Map).cast<String, dynamic>()),
    );
  }
}

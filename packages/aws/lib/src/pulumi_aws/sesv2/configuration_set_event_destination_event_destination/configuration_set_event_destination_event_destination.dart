// ignore_for_file: unused_element, unnecessary_cast

import '../configuration_set_event_destination_event_destination_cloud_watch_destination/configuration_set_event_destination_event_destination_cloud_watch_destination.dart';
import '../configuration_set_event_destination_event_destination_event_bridge_destination/configuration_set_event_destination_event_destination_event_bridge_destination.dart';
import '../configuration_set_event_destination_event_destination_kinesis_firehose_destination/configuration_set_event_destination_event_destination_kinesis_firehose_destination.dart';
import '../configuration_set_event_destination_event_destination_pinpoint_destination/configuration_set_event_destination_event_destination_pinpoint_destination.dart';
import '../configuration_set_event_destination_event_destination_sns_destination/configuration_set_event_destination_event_destination_sns_destination.dart';

class ConfigurationSetEventDestinationEventDestination {
  /// An object that defines an Amazon CloudWatch destination for email events. See <span pulumi-lang-nodejs="`cloudWatchDestination`" pulumi-lang-dotnet="`CloudWatchDestination`" pulumi-lang-go="`cloudWatchDestination`" pulumi-lang-python="`cloud_watch_destination`" pulumi-lang-yaml="`cloudWatchDestination`" pulumi-lang-java="`cloudWatchDestination`">`cloud_watch_destination`</span> Block for details.
  final ConfigurationSetEventDestinationEventDestinationCloudWatchDestination?
      cloudWatchDestination;

  /// When the event destination is enabled, the specified event types are sent to the destinations. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? enabled;

  /// An object that defines an Amazon EventBridge destination for email events. You can use Amazon EventBridge to send notifications when certain email events occur. See <span pulumi-lang-nodejs="`eventBridgeDestination`" pulumi-lang-dotnet="`EventBridgeDestination`" pulumi-lang-go="`eventBridgeDestination`" pulumi-lang-python="`event_bridge_destination`" pulumi-lang-yaml="`eventBridgeDestination`" pulumi-lang-java="`eventBridgeDestination`">`event_bridge_destination`</span> Block for details.
  final ConfigurationSetEventDestinationEventDestinationEventBridgeDestination?
      eventBridgeDestination;

  /// An object that defines an Amazon Kinesis Data Firehose destination for email events. See <span pulumi-lang-nodejs="`kinesisFirehoseDestination`" pulumi-lang-dotnet="`KinesisFirehoseDestination`" pulumi-lang-go="`kinesisFirehoseDestination`" pulumi-lang-python="`kinesis_firehose_destination`" pulumi-lang-yaml="`kinesisFirehoseDestination`" pulumi-lang-java="`kinesisFirehoseDestination`">`kinesis_firehose_destination`</span> Block for details.
  final ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination?
      kinesisFirehoseDestination;

  /// An array that specifies which events the Amazon SES API v2 should send to the destinations. Valid values: `SEND`, `REJECT`, `BOUNCE`, `COMPLAINT`, `DELIVERY`, `OPEN`, `CLICK`, `RENDERING_FAILURE`, `DELIVERY_DELAY`, `SUBSCRIPTION`.
  final List<String> matchingEventTypes;

  /// An object that defines an Amazon Pinpoint project destination for email events. See <span pulumi-lang-nodejs="`pinpointDestination`" pulumi-lang-dotnet="`PinpointDestination`" pulumi-lang-go="`pinpointDestination`" pulumi-lang-python="`pinpoint_destination`" pulumi-lang-yaml="`pinpointDestination`" pulumi-lang-java="`pinpointDestination`">`pinpoint_destination`</span> Block for details.
  final ConfigurationSetEventDestinationEventDestinationPinpointDestination?
      pinpointDestination;

  /// An object that defines an Amazon SNS destination for email events. See <span pulumi-lang-nodejs="`snsDestination`" pulumi-lang-dotnet="`SnsDestination`" pulumi-lang-go="`snsDestination`" pulumi-lang-python="`sns_destination`" pulumi-lang-yaml="`snsDestination`" pulumi-lang-java="`snsDestination`">`sns_destination`</span> Block for details.
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

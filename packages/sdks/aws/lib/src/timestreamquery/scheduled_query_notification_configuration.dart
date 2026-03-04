// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_notification_configuration_sns_configuration.dart';

class ScheduledQueryNotificationConfiguration {
  /// Configuration block for details about the Amazon Simple Notification Service (SNS) configuration. See below.
  final pulumi.Input<ScheduledQueryNotificationConfigurationSnsConfiguration>
  snsConfiguration;

  /// Creates a new [ScheduledQueryNotificationConfiguration].
  /// [snsConfiguration] Configuration block for details about the Amazon Simple Notification Service (SNS) configuration. See below.
  ScheduledQueryNotificationConfiguration({required this.snsConfiguration});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snsConfiguration':
          pulumi.Input.mapInputValue<
            ScheduledQueryNotificationConfigurationSnsConfiguration,
            Map<String, dynamic>
          >(snsConfiguration, (value) => value.toMap()),
    };
  }

  factory ScheduledQueryNotificationConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ScheduledQueryNotificationConfiguration(
      snsConfiguration: pulumi.Input.fromValue(
        ScheduledQueryNotificationConfigurationSnsConfiguration.fromMap(
          (map['snsConfiguration']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}

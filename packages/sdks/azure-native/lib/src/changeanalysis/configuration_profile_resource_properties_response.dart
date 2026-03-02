// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_settings_response.dart';

/// The properties of a configuration profile.
class ConfigurationProfileResourcePropertiesResponse {
  /// Settings of change notification configuration for a subscription.
  final pulumi.Input<NotificationSettingsResponse>? notifications;

  /// Creates a new [ConfigurationProfileResourcePropertiesResponse].
  /// [notifications] Settings of change notification configuration for a subscription.
  ConfigurationProfileResourcePropertiesResponse({
    this.notifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notifications': ?pulumi.Input.mapOptionalInputValue<NotificationSettingsResponse, Map<String, dynamic>>(notifications, (value) => value.toMap()),
    };
  }

  factory ConfigurationProfileResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfileResourcePropertiesResponse(
      notifications: map['notifications'] == null ? null : (NotificationSettingsResponse.fromMap((map['notifications'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_settings_response.dart';

/// The properties of a configuration profile.
class ConfigurationProfileResourcePropertiesResponse {
  /// Settings of change notification configuration for a subscription.
  final pulumi.Input<NotificationSettingsResponse>? notifications;

  /// Creates a new [ConfigurationProfileResourcePropertiesResponse].
  /// [notifications] Settings of change notification configuration for a subscription.
  const ConfigurationProfileResourcePropertiesResponse({
    this.notifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notifications': ?pulumi.Input.mapOptionalInputValue<NotificationSettingsResponse, Map<String, dynamic>>(notifications, (value) => value.toMap()),
    };
  }

  factory ConfigurationProfileResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfileResourcePropertiesResponse(
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotificationSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


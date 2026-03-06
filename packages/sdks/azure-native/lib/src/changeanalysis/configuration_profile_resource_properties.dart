// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_settings.dart';

/// The properties of a configuration profile.
class ConfigurationProfileResourceProperties {
  /// Settings of change notification configuration for a subscription.
  final pulumi.Input<NotificationSettings>? notifications;

  /// Creates a new [ConfigurationProfileResourceProperties].
  /// [notifications] Settings of change notification configuration for a subscription.
  const ConfigurationProfileResourceProperties({
    this.notifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notifications': ?pulumi.Input.mapOptionalInputValue<NotificationSettings, Map<String, dynamic>>(notifications, (value) => value.toMap()),
    };
  }

  factory ConfigurationProfileResourceProperties.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfileResourceProperties(
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotificationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


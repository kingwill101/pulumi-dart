// ignore_for_file: unused_element, unnecessary_cast

import 'notification_settings.dart';

/// The properties of a configuration profile.
class ConfigurationProfileResourceProperties {
  /// Settings of change notification configuration for a subscription.
  final NotificationSettings? notifications;

  /// Creates a new [ConfigurationProfileResourceProperties].
  /// [notifications] Settings of change notification configuration for a subscription.
  ConfigurationProfileResourceProperties({
    this.notifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notifications': ?notifications == null ? null : notifications!.toMap(),
    };
  }

  factory ConfigurationProfileResourceProperties.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfileResourceProperties(
      notifications: map['notifications'] == null ? null : NotificationSettings.fromMap((map['notifications'] as Map).cast<String, dynamic>()),
    );
  }
}


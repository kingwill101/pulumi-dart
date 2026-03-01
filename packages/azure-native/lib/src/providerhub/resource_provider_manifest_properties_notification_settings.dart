// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscriber_setting.dart';

/// Notification settings.
class ResourceProviderManifestPropertiesNotificationSettings {
  final List<SubscriberSetting>? subscriberSettings;

  /// Creates a new [ResourceProviderManifestPropertiesNotificationSettings].
  /// [subscriberSettings] Optional.
  ResourceProviderManifestPropertiesNotificationSettings({
    this.subscriberSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscriberSettings': ?subscriberSettings == null ? null : pulumi.Input.encodeList<SubscriberSetting, Map<String, dynamic>>(subscriberSettings!, (value) => value.toMap()),
    };
  }

  factory ResourceProviderManifestPropertiesNotificationSettings.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesNotificationSettings(
      subscriberSettings: map['subscriberSettings'] == null ? null : pulumi.Input.decodeList<SubscriberSetting>(map['subscriberSettings'], (value) => SubscriberSetting.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'osimage_notification_profile.dart';
import 'terminate_notification_profile.dart';

class ScheduledEventsProfile {
  /// Specifies OS Image Scheduled Event related configurations.
  final OSImageNotificationProfile? osImageNotificationProfile;
  /// Specifies Terminate Scheduled Event related configurations.
  final TerminateNotificationProfile? terminateNotificationProfile;

  /// Creates a new [ScheduledEventsProfile].
  /// [osImageNotificationProfile] Specifies OS Image Scheduled Event related configurations.
  /// [terminateNotificationProfile] Specifies Terminate Scheduled Event related configurations.
  ScheduledEventsProfile({
    this.osImageNotificationProfile,
    this.terminateNotificationProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osImageNotificationProfile': ?osImageNotificationProfile == null ? null : osImageNotificationProfile!.toMap(),
      'terminateNotificationProfile': ?terminateNotificationProfile == null ? null : terminateNotificationProfile!.toMap(),
    };
  }

  factory ScheduledEventsProfile.fromMap(Map<String, dynamic> map) {
    return ScheduledEventsProfile(
      osImageNotificationProfile: map['osImageNotificationProfile'] == null ? null : OSImageNotificationProfile.fromMap((map['osImageNotificationProfile'] as Map).cast<String, dynamic>()),
      terminateNotificationProfile: map['terminateNotificationProfile'] == null ? null : TerminateNotificationProfile.fromMap((map['terminateNotificationProfile'] as Map).cast<String, dynamic>()),
    );
  }
}


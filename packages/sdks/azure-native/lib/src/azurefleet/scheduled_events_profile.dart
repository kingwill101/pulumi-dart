// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'osimage_notification_profile.dart';
import 'terminate_notification_profile.dart';

/// Specifies Scheduled Event related configurations.
class ScheduledEventsProfile {
  /// Specifies OS Image Scheduled Event related configurations.
  final pulumi.Input<OSImageNotificationProfile>? osImageNotificationProfile;
  /// Specifies Terminate Scheduled Event related configurations.
  final pulumi.Input<TerminateNotificationProfile>? terminateNotificationProfile;

  /// Creates a new [ScheduledEventsProfile].
  /// [osImageNotificationProfile] Specifies OS Image Scheduled Event related configurations.
  /// [terminateNotificationProfile] Specifies Terminate Scheduled Event related configurations.
  ScheduledEventsProfile({
    this.osImageNotificationProfile,
    this.terminateNotificationProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osImageNotificationProfile': ?pulumi.Input.mapOptionalInputValue<OSImageNotificationProfile, Map<String, dynamic>>(osImageNotificationProfile, (value) => value.toMap()),
      'terminateNotificationProfile': ?pulumi.Input.mapOptionalInputValue<TerminateNotificationProfile, Map<String, dynamic>>(terminateNotificationProfile, (value) => value.toMap()),
    };
  }

  factory ScheduledEventsProfile.fromMap(Map<String, dynamic> map) {
    return ScheduledEventsProfile(
      osImageNotificationProfile: map['osImageNotificationProfile'] == null ? null : (OSImageNotificationProfile.fromMap((map['osImageNotificationProfile'] as Map).cast<String, dynamic>())).input(),
      terminateNotificationProfile: map['terminateNotificationProfile'] == null ? null : (TerminateNotificationProfile.fromMap((map['terminateNotificationProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


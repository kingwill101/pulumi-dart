// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'osimage_notification_profile.dart';
import 'terminate_notification_profile.dart';

/// Specifies Scheduled Event related configurations.
class ScheduledEventsProfile {
  /// Specifies OS Image Scheduled Event related configurations.
  final pulumi.Input<OSImageNotificationProfile?>? osImageNotificationProfile;
  /// Specifies Terminate Scheduled Event related configurations.
  final pulumi.Input<TerminateNotificationProfile?>? terminateNotificationProfile;

  /// Creates a new [ScheduledEventsProfile].
  /// [osImageNotificationProfile] Specifies OS Image Scheduled Event related configurations.
  /// [terminateNotificationProfile] Specifies Terminate Scheduled Event related configurations.
  const ScheduledEventsProfile({
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
      osImageNotificationProfile: (() { final guardedValue = map['osImageNotificationProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSImageNotificationProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      terminateNotificationProfile: (() { final guardedValue = map['terminateNotificationProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TerminateNotificationProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

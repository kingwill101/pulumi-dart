// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'osimage_notification_profile_response.dart';
import 'terminate_notification_profile_response.dart';

/// Specifies Scheduled Event related configurations.
class ScheduledEventsProfileResponse {
  /// Specifies OS Image Scheduled Event related configurations.
  final pulumi.Input<OSImageNotificationProfileResponse>? osImageNotificationProfile;
  /// Specifies Terminate Scheduled Event related configurations.
  final pulumi.Input<TerminateNotificationProfileResponse>? terminateNotificationProfile;

  /// Creates a new [ScheduledEventsProfileResponse].
  /// [osImageNotificationProfile] Specifies OS Image Scheduled Event related configurations.
  /// [terminateNotificationProfile] Specifies Terminate Scheduled Event related configurations.
  const ScheduledEventsProfileResponse({
    this.osImageNotificationProfile,
    this.terminateNotificationProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osImageNotificationProfile': ?pulumi.Input.mapOptionalInputValue<OSImageNotificationProfileResponse, Map<String, dynamic>>(osImageNotificationProfile, (value) => value.toMap()),
      'terminateNotificationProfile': ?pulumi.Input.mapOptionalInputValue<TerminateNotificationProfileResponse, Map<String, dynamic>>(terminateNotificationProfile, (value) => value.toMap()),
    };
  }

  factory ScheduledEventsProfileResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledEventsProfileResponse(
      osImageNotificationProfile: (() { final guardedValue = map['osImageNotificationProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSImageNotificationProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      terminateNotificationProfile: (() { final guardedValue = map['terminateNotificationProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TerminateNotificationProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

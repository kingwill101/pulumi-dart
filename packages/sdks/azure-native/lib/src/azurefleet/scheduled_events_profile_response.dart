// ignore_for_file: unused_element, unnecessary_cast

import 'osimage_notification_profile_response.dart';
import 'terminate_notification_profile_response.dart';

/// Specifies Scheduled Event related configurations.
class ScheduledEventsProfileResponse {
  /// Specifies OS Image Scheduled Event related configurations.
  final OSImageNotificationProfileResponse? osImageNotificationProfile;
  /// Specifies Terminate Scheduled Event related configurations.
  final TerminateNotificationProfileResponse? terminateNotificationProfile;

  /// Creates a new [ScheduledEventsProfileResponse].
  /// [osImageNotificationProfile] Specifies OS Image Scheduled Event related configurations.
  /// [terminateNotificationProfile] Specifies Terminate Scheduled Event related configurations.
  ScheduledEventsProfileResponse({
    this.osImageNotificationProfile,
    this.terminateNotificationProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osImageNotificationProfile': ?osImageNotificationProfile == null ? null : osImageNotificationProfile!.toMap(),
      'terminateNotificationProfile': ?terminateNotificationProfile == null ? null : terminateNotificationProfile!.toMap(),
    };
  }

  factory ScheduledEventsProfileResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledEventsProfileResponse(
      osImageNotificationProfile: map['osImageNotificationProfile'] == null ? null : OSImageNotificationProfileResponse.fromMap((map['osImageNotificationProfile'] as Map).cast<String, dynamic>()),
      terminateNotificationProfile: map['terminateNotificationProfile'] == null ? null : TerminateNotificationProfileResponse.fromMap((map['terminateNotificationProfile'] as Map).cast<String, dynamic>()),
    );
  }
}


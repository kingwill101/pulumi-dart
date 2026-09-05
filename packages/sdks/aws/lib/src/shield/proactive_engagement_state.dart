// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'proactive_engagement_emergency_contact.dart';

/// Input properties used for looking up and filtering ProactiveEngagement resources.
class ProactiveEngagementState {
  /// One or more emergency contacts. You must provide at least one phone number in the emergency contact list. See `emergencyContacts`.
  final pulumi.Input<List<ProactiveEngagementEmergencyContact>?>? emergencyContacts;
  /// Boolean value indicating if Proactive Engagement should be enabled or not.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [ProactiveEngagementState].
  /// [emergencyContacts] One or more emergency contacts. You must provide at least one phone number in the emergency contact list. See `emergencyContacts`.
  /// [enabled] Boolean value indicating if Proactive Engagement should be enabled or not.
  const ProactiveEngagementState({
    this.emergencyContacts,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emergencyContacts': ?pulumi.Input.mapOptionalInputValue<List<ProactiveEngagementEmergencyContact>, List<Map<String, dynamic>>>(emergencyContacts, (value) => pulumi.Input.encodeList<ProactiveEngagementEmergencyContact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
    };
  }

  factory ProactiveEngagementState.fromMap(Map<String, dynamic> map) {
    return ProactiveEngagementState(
      emergencyContacts: (() { final guardedValue = map['emergencyContacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProactiveEngagementEmergencyContact>(guardedValue, (value) => ProactiveEngagementEmergencyContact.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../proactive_engagement_emergency_contact/proactive_engagement_emergency_contact.dart';

/// The set of arguments for ProactiveEngagement.
class ProactiveEngagementArgs {
  /// One or more emergency contacts. You must provide at least one phone number in the emergency contact list. See <span pulumi-lang-nodejs="`emergencyContacts`" pulumi-lang-dotnet="`EmergencyContacts`" pulumi-lang-go="`emergencyContacts`" pulumi-lang-python="`emergency_contacts`" pulumi-lang-yaml="`emergencyContacts`" pulumi-lang-java="`emergencyContacts`">`emergency_contacts`</span>.
  final Input<List<ProactiveEngagementEmergencyContact>> emergencyContacts;

  /// Boolean value indicating if Proactive Engagement should be enabled or not.
  final Input<bool> enabled;

  ProactiveEngagementArgs({
    required this.emergencyContacts,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['emergencyContacts'] = Input.mapInputValue<
            List<ProactiveEngagementEmergencyContact>,
            List<Map<String, dynamic>>>(
        emergencyContacts,
        (value) => Input.encodeList<ProactiveEngagementEmergencyContact,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['enabled'] = enabled;
    return map;
  }

  factory ProactiveEngagementArgs.fromMap(Map<String, dynamic> map) {
    return ProactiveEngagementArgs(
      emergencyContacts:
          Input.asInput<List<ProactiveEngagementEmergencyContact>>(
              map['emergencyContacts']),
      enabled: Input.asInput<bool>(map['enabled']),
    );
  }
}

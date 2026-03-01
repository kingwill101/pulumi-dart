// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'proactive_engagement_emergency_contact.dart';

/// {@template pulumi_shield_proactive_engagement_proactive_engagement_args_doc}
/// The set of arguments for ProactiveEngagement.
/// {@endtemplate}
/// {@macro pulumi_shield_proactive_engagement_proactive_engagement_args_doc}
class ProactiveEngagementArgs {
  /// One or more emergency contacts. You must provide at least one phone number in the emergency contact list. See `emergency_contacts`.
  final pulumi.Input<List<ProactiveEngagementEmergencyContact>> emergencyContacts;
  /// Boolean value indicating if Proactive Engagement should be enabled or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ProactiveEngagementArgs].
  /// [emergencyContacts] One or more emergency contacts. You must provide at least one phone number in the emergency contact list. See `emergency_contacts`.
  /// [enabled] Boolean value indicating if Proactive Engagement should be enabled or not.
  ProactiveEngagementArgs({
    required List<ProactiveEngagementEmergencyContact> emergencyContacts,
    required bool enabled,
  }) :
      emergencyContacts = pulumi.Input.asInput<List<ProactiveEngagementEmergencyContact>>(emergencyContacts),
      enabled = pulumi.Input.asInput<bool>(enabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emergencyContacts': pulumi.Input.mapInputValue<List<ProactiveEngagementEmergencyContact>, List<Map<String, dynamic>>>(emergencyContacts, (value) => pulumi.Input.encodeList<ProactiveEngagementEmergencyContact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
    };
  }

  factory ProactiveEngagementArgs.fromMap(Map<String, dynamic> map) {
    return ProactiveEngagementArgs(
      emergencyContacts: pulumi.Input.decodeList<ProactiveEngagementEmergencyContact>(map['emergencyContacts'], (value) => ProactiveEngagementEmergencyContact.fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
    );
  }
}


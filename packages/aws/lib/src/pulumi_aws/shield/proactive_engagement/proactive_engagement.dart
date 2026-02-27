import 'package:pulumi/pulumi.dart';
import '../proactive_engagement_emergency_contact/proactive_engagement_emergency_contact.dart';
import 'proactive_engagement_args.dart';

/// Resource for managing a AWS Shield Proactive Engagement.
/// Proactive engagement authorizes the Shield Response Team (SRT) to use email and phone to notify contacts about escalations to the SRT and to initiate proactive customer support.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Shield proactive engagement using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:shield/proactiveEngagement:ProactiveEngagement example 123456789012
/// ```
class ProactiveEngagement extends CustomResource {
  /// One or more emergency contacts. You must provide at least one phone number in the emergency contact list. See `emergency_contacts`.
  late final Output<List<ProactiveEngagementEmergencyContact>>
      emergencyContacts;

  /// Boolean value indicating if Proactive Engagement should be enabled or not.
  late final Output<bool> enabled;

  ProactiveEngagement(
    String name, {
    ProactiveEngagementArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:shield/proactiveEngagement:ProactiveEngagement',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.emergencyContacts =
        registerOutput<List<ProactiveEngagementEmergencyContact>>(
            'emergencyContacts');
    this.enabled = registerOutput<bool>('enabled');
  }
}

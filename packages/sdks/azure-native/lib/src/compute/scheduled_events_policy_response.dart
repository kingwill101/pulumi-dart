// ignore_for_file: unused_element, unnecessary_cast

import 'scheduled_events_additional_publishing_targets_response.dart';
import 'user_initiated_reboot_response.dart';
import 'user_initiated_redeploy_response.dart';

/// Specifies Redeploy, Reboot and ScheduledEventsAdditionalPublishingTargets Scheduled Event related configurations.
class ScheduledEventsPolicyResponse {
  /// The configuration parameters used while publishing scheduledEventsAdditionalPublishingTargets.
  final ScheduledEventsAdditionalPublishingTargetsResponse? scheduledEventsAdditionalPublishingTargets;
  /// The configuration parameters used while creating userInitiatedReboot scheduled event setting creation.
  final UserInitiatedRebootResponse? userInitiatedReboot;
  /// The configuration parameters used while creating userInitiatedRedeploy scheduled event setting creation.
  final UserInitiatedRedeployResponse? userInitiatedRedeploy;

  /// Creates a new [ScheduledEventsPolicyResponse].
  /// [scheduledEventsAdditionalPublishingTargets] The configuration parameters used while publishing scheduledEventsAdditionalPublishingTargets.
  /// [userInitiatedReboot] The configuration parameters used while creating userInitiatedReboot scheduled event setting creation.
  /// [userInitiatedRedeploy] The configuration parameters used while creating userInitiatedRedeploy scheduled event setting creation.
  ScheduledEventsPolicyResponse({
    this.scheduledEventsAdditionalPublishingTargets,
    this.userInitiatedReboot,
    this.userInitiatedRedeploy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduledEventsAdditionalPublishingTargets': ?scheduledEventsAdditionalPublishingTargets == null ? null : scheduledEventsAdditionalPublishingTargets!.toMap(),
      'userInitiatedReboot': ?userInitiatedReboot == null ? null : userInitiatedReboot!.toMap(),
      'userInitiatedRedeploy': ?userInitiatedRedeploy == null ? null : userInitiatedRedeploy!.toMap(),
    };
  }

  factory ScheduledEventsPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledEventsPolicyResponse(
      scheduledEventsAdditionalPublishingTargets: map['scheduledEventsAdditionalPublishingTargets'] == null ? null : ScheduledEventsAdditionalPublishingTargetsResponse.fromMap((map['scheduledEventsAdditionalPublishingTargets'] as Map).cast<String, dynamic>()),
      userInitiatedReboot: map['userInitiatedReboot'] == null ? null : UserInitiatedRebootResponse.fromMap((map['userInitiatedReboot'] as Map).cast<String, dynamic>()),
      userInitiatedRedeploy: map['userInitiatedRedeploy'] == null ? null : UserInitiatedRedeployResponse.fromMap((map['userInitiatedRedeploy'] as Map).cast<String, dynamic>()),
    );
  }
}


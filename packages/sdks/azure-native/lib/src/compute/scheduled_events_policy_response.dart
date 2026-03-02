// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_events_additional_publishing_targets_response.dart';
import 'user_initiated_reboot_response.dart';
import 'user_initiated_redeploy_response.dart';

/// Specifies Redeploy, Reboot and ScheduledEventsAdditionalPublishingTargets Scheduled Event related configurations.
class ScheduledEventsPolicyResponse {
  /// The configuration parameters used while publishing scheduledEventsAdditionalPublishingTargets.
  final pulumi.Input<ScheduledEventsAdditionalPublishingTargetsResponse>? scheduledEventsAdditionalPublishingTargets;
  /// The configuration parameters used while creating userInitiatedReboot scheduled event setting creation.
  final pulumi.Input<UserInitiatedRebootResponse>? userInitiatedReboot;
  /// The configuration parameters used while creating userInitiatedRedeploy scheduled event setting creation.
  final pulumi.Input<UserInitiatedRedeployResponse>? userInitiatedRedeploy;

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
      'scheduledEventsAdditionalPublishingTargets': ?pulumi.Input.mapOptionalInputValue<ScheduledEventsAdditionalPublishingTargetsResponse, Map<String, dynamic>>(scheduledEventsAdditionalPublishingTargets, (value) => value.toMap()),
      'userInitiatedReboot': ?pulumi.Input.mapOptionalInputValue<UserInitiatedRebootResponse, Map<String, dynamic>>(userInitiatedReboot, (value) => value.toMap()),
      'userInitiatedRedeploy': ?pulumi.Input.mapOptionalInputValue<UserInitiatedRedeployResponse, Map<String, dynamic>>(userInitiatedRedeploy, (value) => value.toMap()),
    };
  }

  factory ScheduledEventsPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledEventsPolicyResponse(
      scheduledEventsAdditionalPublishingTargets: map['scheduledEventsAdditionalPublishingTargets'] == null ? null : (ScheduledEventsAdditionalPublishingTargetsResponse.fromMap((map['scheduledEventsAdditionalPublishingTargets']! as Map).cast<String, dynamic>())).input(),
      userInitiatedReboot: map['userInitiatedReboot'] == null ? null : (UserInitiatedRebootResponse.fromMap((map['userInitiatedReboot']! as Map).cast<String, dynamic>())).input(),
      userInitiatedRedeploy: map['userInitiatedRedeploy'] == null ? null : (UserInitiatedRedeployResponse.fromMap((map['userInitiatedRedeploy']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


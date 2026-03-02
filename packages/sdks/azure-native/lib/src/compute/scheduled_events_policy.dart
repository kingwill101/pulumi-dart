// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_events_additional_publishing_targets.dart';
import 'user_initiated_reboot.dart';
import 'user_initiated_redeploy.dart';

/// Specifies Redeploy, Reboot and ScheduledEventsAdditionalPublishingTargets Scheduled Event related configurations.
class ScheduledEventsPolicy {
  /// The configuration parameters used while publishing scheduledEventsAdditionalPublishingTargets.
  final pulumi.Input<ScheduledEventsAdditionalPublishingTargets>? scheduledEventsAdditionalPublishingTargets;
  /// The configuration parameters used while creating userInitiatedReboot scheduled event setting creation.
  final pulumi.Input<UserInitiatedReboot>? userInitiatedReboot;
  /// The configuration parameters used while creating userInitiatedRedeploy scheduled event setting creation.
  final pulumi.Input<UserInitiatedRedeploy>? userInitiatedRedeploy;

  /// Creates a new [ScheduledEventsPolicy].
  /// [scheduledEventsAdditionalPublishingTargets] The configuration parameters used while publishing scheduledEventsAdditionalPublishingTargets.
  /// [userInitiatedReboot] The configuration parameters used while creating userInitiatedReboot scheduled event setting creation.
  /// [userInitiatedRedeploy] The configuration parameters used while creating userInitiatedRedeploy scheduled event setting creation.
  ScheduledEventsPolicy({
    this.scheduledEventsAdditionalPublishingTargets,
    this.userInitiatedReboot,
    this.userInitiatedRedeploy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduledEventsAdditionalPublishingTargets': ?pulumi.Input.mapOptionalInputValue<ScheduledEventsAdditionalPublishingTargets, Map<String, dynamic>>(scheduledEventsAdditionalPublishingTargets, (value) => value.toMap()),
      'userInitiatedReboot': ?pulumi.Input.mapOptionalInputValue<UserInitiatedReboot, Map<String, dynamic>>(userInitiatedReboot, (value) => value.toMap()),
      'userInitiatedRedeploy': ?pulumi.Input.mapOptionalInputValue<UserInitiatedRedeploy, Map<String, dynamic>>(userInitiatedRedeploy, (value) => value.toMap()),
    };
  }

  factory ScheduledEventsPolicy.fromMap(Map<String, dynamic> map) {
    return ScheduledEventsPolicy(
      scheduledEventsAdditionalPublishingTargets: map['scheduledEventsAdditionalPublishingTargets'] == null ? null : (ScheduledEventsAdditionalPublishingTargets.fromMap((map['scheduledEventsAdditionalPublishingTargets']! as Map).cast<String, dynamic>())).input(),
      userInitiatedReboot: map['userInitiatedReboot'] == null ? null : (UserInitiatedReboot.fromMap((map['userInitiatedReboot']! as Map).cast<String, dynamic>())).input(),
      userInitiatedRedeploy: map['userInitiatedRedeploy'] == null ? null : (UserInitiatedRedeploy.fromMap((map['userInitiatedRedeploy']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


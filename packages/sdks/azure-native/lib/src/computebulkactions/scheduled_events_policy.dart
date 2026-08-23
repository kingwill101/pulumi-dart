// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'all_instances_down.dart';
import 'scheduled_events_additional_publishing_targets.dart';
import 'user_initiated_reboot.dart';
import 'user_initiated_redeploy.dart';

/// Specifies Redeploy, Reboot and ScheduledEventsAdditionalPublishingTargets Scheduled Event related configurations.
class ScheduledEventsPolicy {
  /// The configuration parameters used while creating AllInstancesDown scheduled event setting creation.
  final pulumi.Input<AllInstancesDown>? allInstancesDown;
  /// The configuration parameters used while publishing scheduledEventsAdditionalPublishingTargets.
  final pulumi.Input<ScheduledEventsAdditionalPublishingTargets>? scheduledEventsAdditionalPublishingTargets;
  /// The configuration parameters used while creating userInitiatedReboot scheduled event setting creation.
  final pulumi.Input<UserInitiatedReboot>? userInitiatedReboot;
  /// The configuration parameters used while creating userInitiatedRedeploy scheduled event setting creation.
  final pulumi.Input<UserInitiatedRedeploy>? userInitiatedRedeploy;

  /// Creates a new [ScheduledEventsPolicy].
  /// [allInstancesDown] The configuration parameters used while creating AllInstancesDown scheduled event setting creation.
  /// [scheduledEventsAdditionalPublishingTargets] The configuration parameters used while publishing scheduledEventsAdditionalPublishingTargets.
  /// [userInitiatedReboot] The configuration parameters used while creating userInitiatedReboot scheduled event setting creation.
  /// [userInitiatedRedeploy] The configuration parameters used while creating userInitiatedRedeploy scheduled event setting creation.
  const ScheduledEventsPolicy({
    this.allInstancesDown,
    this.scheduledEventsAdditionalPublishingTargets,
    this.userInitiatedReboot,
    this.userInitiatedRedeploy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesDown': ?pulumi.Input.mapOptionalInputValue<AllInstancesDown, Map<String, dynamic>>(allInstancesDown, (value) => value.toMap()),
      'scheduledEventsAdditionalPublishingTargets': ?pulumi.Input.mapOptionalInputValue<ScheduledEventsAdditionalPublishingTargets, Map<String, dynamic>>(scheduledEventsAdditionalPublishingTargets, (value) => value.toMap()),
      'userInitiatedReboot': ?pulumi.Input.mapOptionalInputValue<UserInitiatedReboot, Map<String, dynamic>>(userInitiatedReboot, (value) => value.toMap()),
      'userInitiatedRedeploy': ?pulumi.Input.mapOptionalInputValue<UserInitiatedRedeploy, Map<String, dynamic>>(userInitiatedRedeploy, (value) => value.toMap()),
    };
  }

  factory ScheduledEventsPolicy.fromMap(Map<String, dynamic> map) {
    return ScheduledEventsPolicy(
      allInstancesDown: (() { final guardedValue = map['allInstancesDown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AllInstancesDown.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scheduledEventsAdditionalPublishingTargets: (() { final guardedValue = map['scheduledEventsAdditionalPublishingTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduledEventsAdditionalPublishingTargets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userInitiatedReboot: (() { final guardedValue = map['userInitiatedReboot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserInitiatedReboot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userInitiatedRedeploy: (() { final guardedValue = map['userInitiatedRedeploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserInitiatedRedeploy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

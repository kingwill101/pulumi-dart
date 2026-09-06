// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'all_instances_down_response.dart';
import 'scheduled_events_additional_publishing_targets_response.dart';
import 'user_initiated_reboot_response.dart';
import 'user_initiated_redeploy_response.dart';

/// Specifies Redeploy, Reboot and ScheduledEventsAdditionalPublishingTargets Scheduled Event related configurations.
class ScheduledEventsPolicyResponse {
  /// The configuration parameters used while creating AllInstancesDown scheduled event setting creation.
  final pulumi.Input<AllInstancesDownResponse?>? allInstancesDown;
  /// The configuration parameters used while publishing scheduledEventsAdditionalPublishingTargets.
  final pulumi.Input<ScheduledEventsAdditionalPublishingTargetsResponse?>? scheduledEventsAdditionalPublishingTargets;
  /// The configuration parameters used while creating userInitiatedReboot scheduled event setting creation.
  final pulumi.Input<UserInitiatedRebootResponse?>? userInitiatedReboot;
  /// The configuration parameters used while creating userInitiatedRedeploy scheduled event setting creation.
  final pulumi.Input<UserInitiatedRedeployResponse?>? userInitiatedRedeploy;

  /// Creates a new [ScheduledEventsPolicyResponse].
  /// [allInstancesDown] The configuration parameters used while creating AllInstancesDown scheduled event setting creation.
  /// [scheduledEventsAdditionalPublishingTargets] The configuration parameters used while publishing scheduledEventsAdditionalPublishingTargets.
  /// [userInitiatedReboot] The configuration parameters used while creating userInitiatedReboot scheduled event setting creation.
  /// [userInitiatedRedeploy] The configuration parameters used while creating userInitiatedRedeploy scheduled event setting creation.
  const ScheduledEventsPolicyResponse({
    this.allInstancesDown,
    this.scheduledEventsAdditionalPublishingTargets,
    this.userInitiatedReboot,
    this.userInitiatedRedeploy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesDown': ?pulumi.Input.mapOptionalInputValue<AllInstancesDownResponse, Map<String, dynamic>>(allInstancesDown, (value) => value.toMap()),
      'scheduledEventsAdditionalPublishingTargets': ?pulumi.Input.mapOptionalInputValue<ScheduledEventsAdditionalPublishingTargetsResponse, Map<String, dynamic>>(scheduledEventsAdditionalPublishingTargets, (value) => value.toMap()),
      'userInitiatedReboot': ?pulumi.Input.mapOptionalInputValue<UserInitiatedRebootResponse, Map<String, dynamic>>(userInitiatedReboot, (value) => value.toMap()),
      'userInitiatedRedeploy': ?pulumi.Input.mapOptionalInputValue<UserInitiatedRedeployResponse, Map<String, dynamic>>(userInitiatedRedeploy, (value) => value.toMap()),
    };
  }

  factory ScheduledEventsPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledEventsPolicyResponse(
      allInstancesDown: (() { final guardedValue = map['allInstancesDown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AllInstancesDownResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scheduledEventsAdditionalPublishingTargets: (() { final guardedValue = map['scheduledEventsAdditionalPublishingTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduledEventsAdditionalPublishingTargetsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userInitiatedReboot: (() { final guardedValue = map['userInitiatedReboot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserInitiatedRebootResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userInitiatedRedeploy: (() { final guardedValue = map['userInitiatedRedeploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserInitiatedRedeployResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

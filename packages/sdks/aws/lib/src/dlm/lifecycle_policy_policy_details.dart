// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_policy_details_action.dart';
import 'lifecycle_policy_policy_details_event_source.dart';
import 'lifecycle_policy_policy_details_exclusions.dart';
import 'lifecycle_policy_policy_details_parameters.dart';
import 'lifecycle_policy_policy_details_schedule.dart';

class LifecyclePolicyPolicyDetails {
  /// The actions to be performed when the event-based policy is triggered. You can specify only one action per policy. This parameter is required for event-based policies only. If you are creating a snapshot or AMI policy, omit this parameter. See the `action` configuration block.
  final pulumi.Input<LifecyclePolicyPolicyDetailsAction?>? action;
  final pulumi.Input<bool?>? copyTags;
  /// How often the policy should run and create snapshots or AMIs. valid values range from `1` to `7`. Default value is `1`.
  final pulumi.Input<int?>? createInterval;
  /// The event that triggers the event-based policy. This parameter is required for event-based policies only. If you are creating a snapshot or AMI policy, omit this parameter. See the `eventSource` configuration block.
  final pulumi.Input<LifecyclePolicyPolicyDetailsEventSource?>? eventSource;
  /// Specifies exclusion parameters for volumes or instances for which you do not want to create snapshots or AMIs.  See the `exclusions` configuration block.
  final pulumi.Input<LifecyclePolicyPolicyDetailsExclusions?>? exclusions;
  /// snapshot or AMI retention behavior for the policy if the source volume or instance is deleted, or if the policy enters the error, disabled, or deleted state. Default value is `false`.
  final pulumi.Input<bool?>? extendDeletion;
  final pulumi.Input<LifecyclePolicyPolicyDetailsParameters?>? parameters;
  /// Type of policy to create. `SIMPLIFIED` To create a default policy. `STANDARD` To create a custom policy.
  final pulumi.Input<String?>? policyLanguage;
  /// The valid target resource types and actions a policy can manage. Specify `EBS_SNAPSHOT_MANAGEMENT` to create a lifecycle policy that manages the lifecycle of Amazon EBS snapshots. Specify `IMAGE_MANAGEMENT` to create a lifecycle policy that manages the lifecycle of EBS-backed AMIs. Specify `EVENT_BASED_POLICY` to create an event-based policy that performs specific actions when a defined event occurs in your AWS account. Default value is `EBS_SNAPSHOT_MANAGEMENT`.
  final pulumi.Input<String?>? policyType;
  /// The location of the resources to backup. If the source resources are located in an AWS Region, specify `CLOUD`. If the source resources are located on an Outpost in your account, specify `OUTPOST`. If the source resources are located in a Local Zone, specify `LOCAL_ZONE`. Valid values are `CLOUD`, `LOCAL_ZONE`, and `OUTPOST`.
  final pulumi.Input<String?>? resourceLocations;
  /// Type of default policy to create. Valid values are `VOLUME` and `INSTANCE`.
  final pulumi.Input<String?>? resourceType;
  /// A list of resource types that should be targeted by the lifecycle policy. Valid values are `VOLUME` and `INSTANCE`.
  final pulumi.Input<List<String>?>? resourceTypes;
  /// Specifies how long the policy should retain snapshots or AMIs before deleting them. valid values range from `2` to `14`. Default value is `7`.
  final pulumi.Input<int?>? retainInterval;
  /// See the `schedule` configuration block.
  final pulumi.Input<List<LifecyclePolicyPolicyDetailsSchedule>?>? schedules;
  /// A map of tag keys and their values. Any resources that match the `resourceTypes` and are tagged with _any_ of these tags will be targeted. Required when `policyType` is `EBS_SNAPSHOT_MANAGEMENT` or `IMAGE_MANAGEMENT`. Must not be specified when `policyType` is `EVENT_BASED_POLICY`.
  ///
  /// &gt; Note: You cannot have overlapping lifecycle policies that share the same `targetTags`. Pulumi is unable to detect this at plan time but it will fail during apply.
  final pulumi.Input<Map<String, String>?>? targetTags;

  /// Creates a new [LifecyclePolicyPolicyDetails].
  /// [action] The actions to be performed when the event-based policy is triggered. You can specify only one action per policy. This parameter is required for event-based policies only. If you are creating a snapshot or AMI policy, omit this parameter. See the `action` configuration block.
  /// [copyTags] Optional.
  /// [createInterval] How often the policy should run and create snapshots or AMIs. valid values range from `1` to `7`. Default value is `1`.
  /// [eventSource] The event that triggers the event-based policy. This parameter is required for event-based policies only. If you are creating a snapshot or AMI policy, omit this parameter. See the `eventSource` configuration block.
  /// [exclusions] Specifies exclusion parameters for volumes or instances for which you do not want to create snapshots or AMIs.  See the `exclusions` configuration block.
  /// [extendDeletion] snapshot or AMI retention behavior for the policy if the source volume or instance is deleted, or if the policy enters the error, disabled, or deleted state. Default value is `false`.
  /// [parameters] Optional.
  /// [policyLanguage] Type of policy to create. `SIMPLIFIED` To create a default policy. `STANDARD` To create a custom policy.
  /// [policyType] The valid target resource types and actions a policy can manage. Specify `EBS_SNAPSHOT_MANAGEMENT` to create a lifecycle policy that manages the lifecycle of Amazon EBS snapshots. Specify `IMAGE_MANAGEMENT` to create a lifecycle policy that manages the lifecycle of EBS-backed AMIs. Specify `EVENT_BASED_POLICY` to create an event-based policy that performs specific actions when a defined event occurs in your AWS account. Default value is `EBS_SNAPSHOT_MANAGEMENT`.
  /// [resourceLocations] The location of the resources to backup. If the source resources are located in an AWS Region, specify `CLOUD`. If the source resources are located on an Outpost in your account, specify `OUTPOST`. If the source resources are located in a Local Zone, specify `LOCAL_ZONE`. Valid values are `CLOUD`, `LOCAL_ZONE`, and `OUTPOST`.
  /// [resourceType] Type of default policy to create. Valid values are `VOLUME` and `INSTANCE`.
  /// [resourceTypes] A list of resource types that should be targeted by the lifecycle policy. Valid values are `VOLUME` and `INSTANCE`.
  /// [retainInterval] Specifies how long the policy should retain snapshots or AMIs before deleting them. valid values range from `2` to `14`. Default value is `7`.
  /// [schedules] See the `schedule` configuration block.
  /// [targetTags] A map of tag keys and their values. Any resources that match the `resourceTypes` and are tagged with _any_ of these tags will be targeted. Required when `policyType` is `EBS_SNAPSHOT_MANAGEMENT` or `IMAGE_MANAGEMENT`. Must not be specified when `policyType` is `EVENT_BASED_POLICY`.
  const LifecyclePolicyPolicyDetails({
    this.action,
    this.copyTags,
    this.createInterval,
    this.eventSource,
    this.exclusions,
    this.extendDeletion,
    this.parameters,
    this.policyLanguage,
    this.policyType,
    this.resourceLocations,
    this.resourceType,
    this.resourceTypes,
    this.retainInterval,
    this.schedules,
    this.targetTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyPolicyDetailsAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'copyTags': ?copyTags,
      'createInterval': ?createInterval,
      'eventSource': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyPolicyDetailsEventSource, Map<String, dynamic>>(eventSource, (value) => value.toMap()),
      'exclusions': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyPolicyDetailsExclusions, Map<String, dynamic>>(exclusions, (value) => value.toMap()),
      'extendDeletion': ?extendDeletion,
      'parameters': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyPolicyDetailsParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'policyLanguage': ?policyLanguage,
      'policyType': ?policyType,
      'resourceLocations': ?resourceLocations,
      'resourceType': ?resourceType,
      'resourceTypes': ?resourceTypes,
      'retainInterval': ?retainInterval,
      'schedules': ?pulumi.Input.mapOptionalInputValue<List<LifecyclePolicyPolicyDetailsSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<LifecyclePolicyPolicyDetailsSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetTags': ?targetTags,
    };
  }

  factory LifecyclePolicyPolicyDetails.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetails(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LifecyclePolicyPolicyDetailsAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      copyTags: (() { final guardedValue = map['copyTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createInterval: (() { final guardedValue = map['createInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      eventSource: (() { final guardedValue = map['eventSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LifecyclePolicyPolicyDetailsEventSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exclusions: (() { final guardedValue = map['exclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LifecyclePolicyPolicyDetailsExclusions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extendDeletion: (() { final guardedValue = map['extendDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LifecyclePolicyPolicyDetailsParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyLanguage: (() { final guardedValue = map['policyLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceLocations: (() { final guardedValue = map['resourceLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      retainInterval: (() { final guardedValue = map['retainInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      schedules: (() { final guardedValue = map['schedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LifecyclePolicyPolicyDetailsSchedule>(guardedValue, (value) => LifecyclePolicyPolicyDetailsSchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetTags: (() { final guardedValue = map['targetTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

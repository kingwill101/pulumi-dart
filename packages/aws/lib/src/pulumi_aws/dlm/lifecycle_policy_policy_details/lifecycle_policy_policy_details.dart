// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../lifecycle_policy_policy_details_action/lifecycle_policy_policy_details_action.dart';
import '../lifecycle_policy_policy_details_event_source/lifecycle_policy_policy_details_event_source.dart';
import '../lifecycle_policy_policy_details_exclusions/lifecycle_policy_policy_details_exclusions.dart';
import '../lifecycle_policy_policy_details_parameters/lifecycle_policy_policy_details_parameters.dart';
import '../lifecycle_policy_policy_details_schedule/lifecycle_policy_policy_details_schedule.dart';

class LifecyclePolicyPolicyDetails {
  /// The actions to be performed when the event-based policy is triggered. You can specify only one action per policy. This parameter is required for event-based policies only. If you are creating a snapshot or AMI policy, omit this parameter. See the <span pulumi-lang-nodejs="`action`" pulumi-lang-dotnet="`Action`" pulumi-lang-go="`action`" pulumi-lang-python="`action`" pulumi-lang-yaml="`action`" pulumi-lang-java="`action`">`action`</span> configuration block.
  final LifecyclePolicyPolicyDetailsAction? action;
  final bool? copyTags;

  /// How often the policy should run and create snapshots or AMIs. valid values range from <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> to <span pulumi-lang-nodejs="`7`" pulumi-lang-dotnet="`7`" pulumi-lang-go="`7`" pulumi-lang-python="`7`" pulumi-lang-yaml="`7`" pulumi-lang-java="`7`">`7`</span>. Default value is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final int? createInterval;

  /// The event that triggers the event-based policy. This parameter is required for event-based policies only. If you are creating a snapshot or AMI policy, omit this parameter. See the <span pulumi-lang-nodejs="`eventSource`" pulumi-lang-dotnet="`EventSource`" pulumi-lang-go="`eventSource`" pulumi-lang-python="`event_source`" pulumi-lang-yaml="`eventSource`" pulumi-lang-java="`eventSource`">`event_source`</span> configuration block.
  final LifecyclePolicyPolicyDetailsEventSource? eventSource;

  /// Specifies exclusion parameters for volumes or instances for which you do not want to create snapshots or AMIs.  See the <span pulumi-lang-nodejs="`exclusions`" pulumi-lang-dotnet="`Exclusions`" pulumi-lang-go="`exclusions`" pulumi-lang-python="`exclusions`" pulumi-lang-yaml="`exclusions`" pulumi-lang-java="`exclusions`">`exclusions`</span> configuration block.
  final LifecyclePolicyPolicyDetailsExclusions? exclusions;

  /// snapshot or AMI retention behavior for the policy if the source volume or instance is deleted, or if the policy enters the error, disabled, or deleted state. Default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? extendDeletion;
  final LifecyclePolicyPolicyDetailsParameters? parameters;

  /// Type of policy to create. `SIMPLIFIED` To create a default policy. `STANDARD` To create a custom policy.
  final String? policyLanguage;

  /// The valid target resource types and actions a policy can manage. Specify `EBS_SNAPSHOT_MANAGEMENT` to create a lifecycle policy that manages the lifecycle of Amazon EBS snapshots. Specify `IMAGE_MANAGEMENT` to create a lifecycle policy that manages the lifecycle of EBS-backed AMIs. Specify `EVENT_BASED_POLICY` to create an event-based policy that performs specific actions when a defined event occurs in your AWS account. Default value is `EBS_SNAPSHOT_MANAGEMENT`.
  final String? policyType;

  /// The location of the resources to backup. If the source resources are located in an AWS Region, specify `CLOUD`. If the source resources are located on an Outpost in your account, specify `OUTPOST`. If the source resources are located in a Local Zone, specify `LOCAL_ZONE`. Valid values are `CLOUD`, `LOCAL_ZONE`, and `OUTPOST`.
  final String? resourceLocations;

  /// Type of default policy to create. Valid values are `VOLUME` and `INSTANCE`.
  final String? resourceType;

  /// A list of resource types that should be targeted by the lifecycle policy. Valid values are `VOLUME` and `INSTANCE`.
  final List<String>? resourceTypes;

  /// Specifies how long the policy should retain snapshots or AMIs before deleting them. valid values range from <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span> to <span pulumi-lang-nodejs="`14`" pulumi-lang-dotnet="`14`" pulumi-lang-go="`14`" pulumi-lang-python="`14`" pulumi-lang-yaml="`14`" pulumi-lang-java="`14`">`14`</span>. Default value is <span pulumi-lang-nodejs="`7`" pulumi-lang-dotnet="`7`" pulumi-lang-go="`7`" pulumi-lang-python="`7`" pulumi-lang-yaml="`7`" pulumi-lang-java="`7`">`7`</span>.
  final int? retainInterval;

  /// See the <span pulumi-lang-nodejs="`schedule`" pulumi-lang-dotnet="`Schedule`" pulumi-lang-go="`schedule`" pulumi-lang-python="`schedule`" pulumi-lang-yaml="`schedule`" pulumi-lang-java="`schedule`">`schedule`</span> configuration block.
  final List<LifecyclePolicyPolicyDetailsSchedule>? schedules;

  /// A map of tag keys and their values. Any resources that match the <span pulumi-lang-nodejs="`resourceTypes`" pulumi-lang-dotnet="`ResourceTypes`" pulumi-lang-go="`resourceTypes`" pulumi-lang-python="`resource_types`" pulumi-lang-yaml="`resourceTypes`" pulumi-lang-java="`resourceTypes`">`resource_types`</span> and are tagged with _any_ of these tags will be targeted. Required when <span pulumi-lang-nodejs="`policyType`" pulumi-lang-dotnet="`PolicyType`" pulumi-lang-go="`policyType`" pulumi-lang-python="`policy_type`" pulumi-lang-yaml="`policyType`" pulumi-lang-java="`policyType`">`policy_type`</span> is `EBS_SNAPSHOT_MANAGEMENT` or `IMAGE_MANAGEMENT`. Must not be specified when <span pulumi-lang-nodejs="`policyType`" pulumi-lang-dotnet="`PolicyType`" pulumi-lang-go="`policyType`" pulumi-lang-python="`policy_type`" pulumi-lang-yaml="`policyType`" pulumi-lang-java="`policyType`">`policy_type`</span> is `EVENT_BASED_POLICY`.
  ///
  /// > Note: You cannot have overlapping lifecycle policies that share the same <span pulumi-lang-nodejs="`targetTags`" pulumi-lang-dotnet="`TargetTags`" pulumi-lang-go="`targetTags`" pulumi-lang-python="`target_tags`" pulumi-lang-yaml="`targetTags`" pulumi-lang-java="`targetTags`">`target_tags`</span>. Pulumi is unable to detect this at plan time but it will fail during apply.
  final Map<String, String>? targetTags;

  LifecyclePolicyPolicyDetails({
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
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue.toMap();
    }
    final copyTagsValue = copyTags;
    if (copyTagsValue != null) {
      map['copyTags'] = copyTagsValue;
    }
    final createIntervalValue = createInterval;
    if (createIntervalValue != null) {
      map['createInterval'] = createIntervalValue;
    }
    final eventSourceValue = eventSource;
    if (eventSourceValue != null) {
      map['eventSource'] = eventSourceValue.toMap();
    }
    final exclusionsValue = exclusions;
    if (exclusionsValue != null) {
      map['exclusions'] = exclusionsValue.toMap();
    }
    final extendDeletionValue = extendDeletion;
    if (extendDeletionValue != null) {
      map['extendDeletion'] = extendDeletionValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue.toMap();
    }
    final policyLanguageValue = policyLanguage;
    if (policyLanguageValue != null) {
      map['policyLanguage'] = policyLanguageValue;
    }
    final policyTypeValue = policyType;
    if (policyTypeValue != null) {
      map['policyType'] = policyTypeValue;
    }
    final resourceLocationsValue = resourceLocations;
    if (resourceLocationsValue != null) {
      map['resourceLocations'] = resourceLocationsValue;
    }
    final resourceTypeValue = resourceType;
    if (resourceTypeValue != null) {
      map['resourceType'] = resourceTypeValue;
    }
    final resourceTypesValue = resourceTypes;
    if (resourceTypesValue != null) {
      map['resourceTypes'] = resourceTypesValue;
    }
    final retainIntervalValue = retainInterval;
    if (retainIntervalValue != null) {
      map['retainInterval'] = retainIntervalValue;
    }
    final schedulesValue = schedules;
    if (schedulesValue != null) {
      map['schedules'] = Input.encodeList<LifecyclePolicyPolicyDetailsSchedule,
          Map<String, dynamic>>(schedulesValue, (value) => value.toMap());
    }
    final targetTagsValue = targetTags;
    if (targetTagsValue != null) {
      map['targetTags'] = targetTagsValue;
    }
    return map;
  }

  factory LifecyclePolicyPolicyDetails.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetails(
      action: map['action'] == null
          ? null
          : LifecyclePolicyPolicyDetailsAction.fromMap(
              (map['action'] as Map).cast<String, dynamic>()),
      copyTags: map['copyTags'] == null ? null : map['copyTags'] as bool,
      createInterval:
          map['createInterval'] == null ? null : map['createInterval'] as int,
      eventSource: map['eventSource'] == null
          ? null
          : LifecyclePolicyPolicyDetailsEventSource.fromMap(
              (map['eventSource'] as Map).cast<String, dynamic>()),
      exclusions: map['exclusions'] == null
          ? null
          : LifecyclePolicyPolicyDetailsExclusions.fromMap(
              (map['exclusions'] as Map).cast<String, dynamic>()),
      extendDeletion:
          map['extendDeletion'] == null ? null : map['extendDeletion'] as bool,
      parameters: map['parameters'] == null
          ? null
          : LifecyclePolicyPolicyDetailsParameters.fromMap(
              (map['parameters'] as Map).cast<String, dynamic>()),
      policyLanguage: map['policyLanguage'] == null
          ? null
          : map['policyLanguage'] as String,
      policyType:
          map['policyType'] == null ? null : map['policyType'] as String,
      resourceLocations: map['resourceLocations'] == null
          ? null
          : map['resourceLocations'] as String,
      resourceType:
          map['resourceType'] == null ? null : map['resourceType'] as String,
      resourceTypes: map['resourceTypes'] == null
          ? null
          : (map['resourceTypes'] as List).cast<String>(),
      retainInterval:
          map['retainInterval'] == null ? null : map['retainInterval'] as int,
      schedules: map['schedules'] == null
          ? null
          : Input.decodeList<LifecyclePolicyPolicyDetailsSchedule>(
              map['schedules'],
              (value) => LifecyclePolicyPolicyDetailsSchedule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      targetTags: map['targetTags'] == null
          ? null
          : (map['targetTags'] as Map).cast<String, String>(),
    );
  }
}

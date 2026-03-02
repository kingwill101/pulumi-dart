// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Attachment resources.
class AttachmentState {
  /// Specifies whether the scaling group manages the lifecycles of the instances that are manually added to the scaling group.
  final pulumi.Input<bool>? entrusted;
  /// Whether to remove forcibly "AutoCreated" ECS instances in order to release scaling group capacity "MaxSize" for attaching ECS instances. Default to false.
  final pulumi.Input<bool>? force;
  /// ID of the ECS instance to be attached to the scaling group. You can input up to 20 IDs.
  final pulumi.Input<List<String>>? instanceIds;
  /// Specifies whether to trigger a lifecycle hook for the scaling group to which instances are being added.
  final pulumi.Input<bool>? lifecycleHook;
  /// The weight of ECS instance N or elastic container instance N as a backend server of the associated Server Load Balancer (SLB) instance. Valid values of N: 1 to 20. Valid values of this parameter: 1 to 100.
  ///
  /// > **NOTE:** "AutoCreated" ECS instance will be deleted after it is removed from scaling group, but "Attached" will be not.
  ///
  /// > **NOTE:** Restrictions on attaching ECS instances:
  ///
  /// - The attached ECS instances and the scaling group must have the same region and network type(`Classic` or `VPC`).
  /// - The attached ECS instances and the instance with active scaling configurations must have the same instance type.
  /// - The attached ECS instances must in the running state.
  /// - The attached ECS instances has not been attached to other scaling groups.
  /// - The attached ECS instances supports Subscription and Pay-As-You-Go payment methods.
  final pulumi.Input<List<int>>? loadBalancerWeights;
  /// ID of the scaling group of a scaling configuration.
  final pulumi.Input<String>? scalingGroupId;

  /// Creates a new [AttachmentState].
  /// [entrusted] Specifies whether the scaling group manages the lifecycles of the instances that are manually added to the scaling group.
  /// [force] Whether to remove forcibly "AutoCreated" ECS instances in order to release scaling group capacity "MaxSize" for attaching ECS instances. Default to false.
  /// [instanceIds] ID of the ECS instance to be attached to the scaling group. You can input up to 20 IDs.
  /// [lifecycleHook] Specifies whether to trigger a lifecycle hook for the scaling group to which instances are being added.
  /// [loadBalancerWeights] The weight of ECS instance N or elastic container instance N as a backend server of the associated Server Load Balancer (SLB) instance. Valid values of N: 1 to 20. Valid values of this parameter: 1 to 100.
  /// [scalingGroupId] ID of the scaling group of a scaling configuration.
  AttachmentState({
    this.entrusted,
    this.force,
    this.instanceIds,
    this.lifecycleHook,
    this.loadBalancerWeights,
    this.scalingGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entrusted': ?entrusted,
      'force': ?force,
      'instanceIds': ?instanceIds,
      'lifecycleHook': ?lifecycleHook,
      'loadBalancerWeights': ?loadBalancerWeights,
      'scalingGroupId': ?scalingGroupId,
    };
  }

  factory AttachmentState.fromMap(Map<String, dynamic> map) {
    return AttachmentState(
      entrusted: map['entrusted'] == null ? null : (map['entrusted'] as bool).input(),
      force: map['force'] == null ? null : (map['force'] as bool).input(),
      instanceIds: map['instanceIds'] == null ? null : ((map['instanceIds'] as List).cast<String>()).input(),
      lifecycleHook: map['lifecycleHook'] == null ? null : (map['lifecycleHook'] as bool).input(),
      loadBalancerWeights: map['loadBalancerWeights'] == null ? null : ((map['loadBalancerWeights'] as List).cast<int>()).input(),
      scalingGroupId: map['scalingGroupId'] == null ? null : (map['scalingGroupId'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ess_attachment_attachment_args_doc}
/// The set of arguments for Attachment.
/// {@endtemplate}
/// {@macro pulumi_ess_attachment_attachment_args_doc}
class AttachmentArgs {
  /// Specifies whether the scaling group manages the lifecycles of the instances that are manually added to the scaling group.
  final pulumi.Input<bool>? entrusted;
  /// Whether to remove forcibly "AutoCreated" ECS instances in order to release scaling group capacity "MaxSize" for attaching ECS instances. Default to false.
  final pulumi.Input<bool>? force;
  /// ID of the ECS instance to be attached to the scaling group. You can input up to 20 IDs.
  final pulumi.Input<List<String>> instanceIds;
  /// Specifies whether to trigger a lifecycle hook for the scaling group to which instances are being added.
  final pulumi.Input<bool>? lifecycleHook;
  /// The weight of ECS instance N or elastic container instance N as a backend server of the associated Server Load Balancer (SLB) instance. Valid values of N: 1 to 20. Valid values of this parameter: 1 to 100.
  ///
  /// &gt; **NOTE:** "AutoCreated" ECS instance will be deleted after it is removed from scaling group, but "Attached" will be not.
  ///
  /// &gt; **NOTE:** Restrictions on attaching ECS instances:
  ///
  /// - The attached ECS instances and the scaling group must have the same region and network type(`Classic` or `VPC`).
  /// - The attached ECS instances and the instance with active scaling configurations must have the same instance type.
  /// - The attached ECS instances must in the running state.
  /// - The attached ECS instances has not been attached to other scaling groups.
  /// - The attached ECS instances supports Subscription and Pay-As-You-Go payment methods.
  final pulumi.Input<List<int>>? loadBalancerWeights;
  /// ID of the scaling group of a scaling configuration.
  final pulumi.Input<String> scalingGroupId;

  /// Creates a new [AttachmentArgs].
  /// [entrusted] Specifies whether the scaling group manages the lifecycles of the instances that are manually added to the scaling group.
  /// [force] Whether to remove forcibly "AutoCreated" ECS instances in order to release scaling group capacity "MaxSize" for attaching ECS instances. Default to false.
  /// [instanceIds] ID of the ECS instance to be attached to the scaling group. You can input up to 20 IDs.
  /// [lifecycleHook] Specifies whether to trigger a lifecycle hook for the scaling group to which instances are being added.
  /// [loadBalancerWeights] The weight of ECS instance N or elastic container instance N as a backend server of the associated Server Load Balancer (SLB) instance. Valid values of N: 1 to 20. Valid values of this parameter: 1 to 100.
  /// [scalingGroupId] ID of the scaling group of a scaling configuration.
  const AttachmentArgs({
    this.entrusted,
    this.force,
    required this.instanceIds,
    this.lifecycleHook,
    this.loadBalancerWeights,
    required this.scalingGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entrusted': ?entrusted,
      'force': ?force,
      'instanceIds': instanceIds,
      'lifecycleHook': ?lifecycleHook,
      'loadBalancerWeights': ?loadBalancerWeights,
      'scalingGroupId': scalingGroupId,
    };
  }

  factory AttachmentArgs.fromMap(Map<String, dynamic> map) {
    return AttachmentArgs(
      entrusted: (() { final guardedValue = map['entrusted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceIds: pulumi.Input.fromValue((map['instanceIds'] as List).cast<String>()),
      lifecycleHook: (() { final guardedValue = map['lifecycleHook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loadBalancerWeights: (() { final guardedValue = map['loadBalancerWeights']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      scalingGroupId: pulumi.Input.fromValue(map['scalingGroupId'] as String),
    );
  }
}


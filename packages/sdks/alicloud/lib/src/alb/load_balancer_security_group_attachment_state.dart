// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LoadBalancerSecurityGroupAttachment resources.
class LoadBalancerSecurityGroupAttachmentState {
  /// Whether to PreCheck only this request. Value:
  final pulumi.Input<bool>? dryRun;
  /// The ID of the Application Load Balancer.
  final pulumi.Input<String>? loadBalancerId;
  /// The ID of the security group.
  final pulumi.Input<String>? securityGroupId;

  /// Creates a new [LoadBalancerSecurityGroupAttachmentState].
  /// [dryRun] Whether to PreCheck only this request. Value:
  /// [loadBalancerId] The ID of the Application Load Balancer.
  /// [securityGroupId] The ID of the security group.
  LoadBalancerSecurityGroupAttachmentState({
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? loadBalancerId,
    pulumi.Output<String>? securityGroupId,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      loadBalancerId = pulumi.Input.asOptionalInput<String>(loadBalancerId),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'loadBalancerId': ?loadBalancerId,
      'securityGroupId': ?securityGroupId,
    };
  }

  factory LoadBalancerSecurityGroupAttachmentState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerSecurityGroupAttachmentState(
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      loadBalancerId: map['loadBalancerId'] == null ? null : pulumi.Output.create<String>(map['loadBalancerId'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
    );
  }
}


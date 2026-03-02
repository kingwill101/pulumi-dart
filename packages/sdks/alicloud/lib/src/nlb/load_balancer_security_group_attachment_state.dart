// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LoadBalancerSecurityGroupAttachment resources.
class LoadBalancerSecurityGroupAttachmentState {
  /// Specifies whether to perform a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// The ID of the NLB instance to be associated with the security group.
  final pulumi.Input<String>? loadBalancerId;
  /// The ID of the security group to be disassociated.
  final pulumi.Input<String>? securityGroupId;

  /// Creates a new [LoadBalancerSecurityGroupAttachmentState].
  /// [dryRun] Specifies whether to perform a dry run, without performing the actual request. Valid values:
  /// [loadBalancerId] The ID of the NLB instance to be associated with the security group.
  /// [securityGroupId] The ID of the security group to be disassociated.
  LoadBalancerSecurityGroupAttachmentState({
    this.dryRun,
    this.loadBalancerId,
    this.securityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'loadBalancerId': ?loadBalancerId,
      'securityGroupId': ?securityGroupId,
    };
  }

  factory LoadBalancerSecurityGroupAttachmentState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerSecurityGroupAttachmentState(
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      loadBalancerId: map['loadBalancerId'] == null ? null : (map['loadBalancerId']! as String).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId']! as String).input(),
    );
  }
}


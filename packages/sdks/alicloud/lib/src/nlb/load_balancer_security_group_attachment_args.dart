// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nlb_load_balancer_security_group_attachment_load_balancer_security_group_attachment_args_doc}
/// The set of arguments for LoadBalancerSecurityGroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_nlb_load_balancer_security_group_attachment_load_balancer_security_group_attachment_args_doc}
class LoadBalancerSecurityGroupAttachmentArgs {
  /// Specifies whether to perform a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;

  /// The ID of the NLB instance to be associated with the security group.
  final pulumi.Input<String> loadBalancerId;

  /// The ID of the security group to be disassociated.
  final pulumi.Input<String> securityGroupId;

  /// Creates a new [LoadBalancerSecurityGroupAttachmentArgs].
  /// [dryRun] Specifies whether to perform a dry run, without performing the actual request. Valid values:
  /// [loadBalancerId] The ID of the NLB instance to be associated with the security group.
  /// [securityGroupId] The ID of the security group to be disassociated.
  LoadBalancerSecurityGroupAttachmentArgs({
    this.dryRun,
    required this.loadBalancerId,
    required this.securityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'loadBalancerId': loadBalancerId,
      'securityGroupId': securityGroupId,
    };
  }

  factory LoadBalancerSecurityGroupAttachmentArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoadBalancerSecurityGroupAttachmentArgs(
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_load_balancer_security_group_attachment_load_balancer_security_group_attachment_args_doc}
/// The set of arguments for LoadBalancerSecurityGroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_alb_load_balancer_security_group_attachment_load_balancer_security_group_attachment_args_doc}
class LoadBalancerSecurityGroupAttachmentArgs {
  /// Whether to PreCheck only this request. Value:
  final pulumi.Input<bool>? dryRun;
  /// The ID of the Application Load Balancer.
  final pulumi.Input<String> loadBalancerId;
  /// The ID of the security group.
  final pulumi.Input<String>? securityGroupId;

  /// Creates a new [LoadBalancerSecurityGroupAttachmentArgs].
  /// [dryRun] Whether to PreCheck only this request. Value:
  /// [loadBalancerId] The ID of the Application Load Balancer.
  /// [securityGroupId] The ID of the security group.
  LoadBalancerSecurityGroupAttachmentArgs({
    bool? dryRun,
    required String loadBalancerId,
    String? securityGroupId,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      loadBalancerId = pulumi.Input.asInput<String>(loadBalancerId),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'loadBalancerId': loadBalancerId,
      'securityGroupId': ?securityGroupId,
    };
  }

  factory LoadBalancerSecurityGroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerSecurityGroupAttachmentArgs(
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      loadBalancerId: map['loadBalancerId'] as String,
      securityGroupId: map['securityGroupId'] == null ? null : map['securityGroupId'] as String,
    );
  }
}


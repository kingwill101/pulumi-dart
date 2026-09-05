// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2transitgateway_policy_table_association_policy_table_association_args_doc}
/// The set of arguments for PolicyTableAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_policy_table_association_policy_table_association_args_doc}
class PolicyTableAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Identifier of EC2 Transit Gateway Attachment.
  final pulumi.Input<String> transitGatewayAttachmentId;
  /// Identifier of EC2 Transit Gateway Policy Table.
  final pulumi.Input<String> transitGatewayPolicyTableId;

  /// Creates a new [PolicyTableAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transitGatewayAttachmentId] Identifier of EC2 Transit Gateway Attachment.
  /// [transitGatewayPolicyTableId] Identifier of EC2 Transit Gateway Policy Table.
  const PolicyTableAssociationArgs({
    this.region,
    required this.transitGatewayAttachmentId,
    required this.transitGatewayPolicyTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'transitGatewayAttachmentId': transitGatewayAttachmentId,
      'transitGatewayPolicyTableId': transitGatewayPolicyTableId,
    };
  }

  factory PolicyTableAssociationArgs.fromMap(Map<String, dynamic> map) {
    return PolicyTableAssociationArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitGatewayAttachmentId: pulumi.Input.fromValue(map['transitGatewayAttachmentId'] as String),
      transitGatewayPolicyTableId: pulumi.Input.fromValue(map['transitGatewayPolicyTableId'] as String),
    );
  }
}

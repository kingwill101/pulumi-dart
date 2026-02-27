// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PolicyTableAssociation.
class PolicyTableAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Identifier of EC2 Transit Gateway Attachment.
  final pulumi.Input<String> transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Policy Table.
  final pulumi.Input<String> transitGatewayPolicyTableId;

  PolicyTableAssociationArgs({
    this.region,
    required this.transitGatewayAttachmentId,
    required this.transitGatewayPolicyTableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['transitGatewayAttachmentId'] = transitGatewayAttachmentId;
    map['transitGatewayPolicyTableId'] = transitGatewayPolicyTableId;
    return map;
  }

  factory PolicyTableAssociationArgs.fromMap(Map<String, dynamic> map) {
    return PolicyTableAssociationArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      transitGatewayAttachmentId:
          pulumi.Input.asInput<String>(map['transitGatewayAttachmentId']),
      transitGatewayPolicyTableId:
          pulumi.Input.asInput<String>(map['transitGatewayPolicyTableId']),
    );
  }
}

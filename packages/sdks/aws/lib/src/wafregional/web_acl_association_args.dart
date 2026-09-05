// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_wafregional_web_acl_association_web_acl_association_args_doc}
/// The set of arguments for WebAclAssociation.
/// {@endtemplate}
/// {@macro pulumi_wafregional_web_acl_association_web_acl_association_args_doc}
class WebAclAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the resource to associate with. For example, an Application Load Balancer or API Gateway Stage.
  final pulumi.Input<String> resourceArn;
  /// The ID of the WAF Regional WebACL to create an association.
  final pulumi.Input<String> webAclId;

  /// Creates a new [WebAclAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the resource to associate with. For example, an Application Load Balancer or API Gateway Stage.
  /// [webAclId] The ID of the WAF Regional WebACL to create an association.
  const WebAclAssociationArgs({
    this.region,
    required this.resourceArn,
    required this.webAclId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceArn': resourceArn,
      'webAclId': webAclId,
    };
  }

  factory WebAclAssociationArgs.fromMap(Map<String, dynamic> map) {
    return WebAclAssociationArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
      webAclId: pulumi.Input.fromValue(map['webAclId'] as String),
    );
  }
}

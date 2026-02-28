// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_wafregional_web_acl_association_web_acl_association_args_doc}
/// The set of arguments for WebAclAssociation.
/// {@endtemplate}
/// {@macro pulumi_wafregional_web_acl_association_web_acl_association_args_doc}
class WebAclAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the resource to associate with. For example, an Application Load Balancer or API Gateway Stage.
  final pulumi.Input<String> resourceArn;

  /// The ID of the WAF Regional WebACL to create an association.
  final pulumi.Input<String> webAclId;

  /// Creates a new [WebAclAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the resource to associate with. For example, an Application Load Balancer or API Gateway Stage.
  /// [webAclId] The ID of the WAF Regional WebACL to create an association.
  WebAclAssociationArgs({
    String? region,
    required String resourceArn,
    required String webAclId,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        resourceArn = pulumi.Input.asInput<String>(resourceArn),
        webAclId = pulumi.Input.asInput<String>(webAclId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceArn'] = resourceArn;
    map['webAclId'] = webAclId;
    return map;
  }

  factory WebAclAssociationArgs.fromMap(Map<String, dynamic> map) {
    return WebAclAssociationArgs(
      region: map['region'] == null ? null : map['region'] as String,
      resourceArn: map['resourceArn'] as String,
      webAclId: map['webAclId'] as String,
    );
  }
}

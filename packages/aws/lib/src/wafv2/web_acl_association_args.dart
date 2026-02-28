// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_wafv2_web_acl_association_web_acl_association_args_doc}
/// The set of arguments for WebAclAssociation.
/// {@endtemplate}
/// {@macro pulumi_wafv2_web_acl_association_web_acl_association_args_doc}
class WebAclAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the resource to associate with the web ACL. This must be an ARN of an Application Load Balancer, an Amazon API Gateway stage (REST only, HTTP is unsupported), an Amazon Cognito User Pool, an Amazon AppSync GraphQL API, an Amazon App Runner service, or an Amazon Verified Access instance.
  final pulumi.Input<String> resourceArn;
  /// The Amazon Resource Name (ARN) of the Web ACL that you want to associate with the resource.
  final pulumi.Input<String> webAclArn;

  /// Creates a new [WebAclAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] The Amazon Resource Name (ARN) of the resource to associate with the web ACL. This must be an ARN of an Application Load Balancer, an Amazon API Gateway stage (REST only, HTTP is unsupported), an Amazon Cognito User Pool, an Amazon AppSync GraphQL API, an Amazon App Runner service, or an Amazon Verified Access instance.
  /// [webAclArn] The Amazon Resource Name (ARN) of the Web ACL that you want to associate with the resource.
  WebAclAssociationArgs({
    String? region,
    required String resourceArn,
    required String webAclArn,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asInput<String>(resourceArn),
      webAclArn = pulumi.Input.asInput<String>(webAclArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceArn': resourceArn,
      'webAclArn': webAclArn,
    };
  }

  factory WebAclAssociationArgs.fromMap(Map<String, dynamic> map) {
    return WebAclAssociationArgs(
      region: map['region'] == null ? null : map['region'] as String,
      resourceArn: map['resourceArn'] as String,
      webAclArn: map['webAclArn'] as String,
    );
  }
}


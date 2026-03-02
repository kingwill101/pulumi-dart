// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_wafv2_get_web_acl_get_web_acl_args_doc}
/// Arguments for getWebAcl.
/// {@endtemplate}
/// {@macro pulumi_wafv2_get_web_acl_get_web_acl_args_doc}
class GetWebAclArgs {
  /// Name of the WAFv2 Web ACL. Exactly one of `name` or `resource_arn` must be specified.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the AWS resource associated with the Web ACL. This can be an ARN of an Application Load Balancer, Amazon API Gateway REST API, AWS AppSync GraphQL API, Amazon Cognito user pool, AWS App Runner service, AWS Verified Access instance, or AWS Amplify application. Exactly one of `name` or `resource_arn` must be specified.
  final pulumi.Input<String>? resourceArn;
  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  final pulumi.Input<String> scope;

  /// Creates a new [GetWebAclArgs].
  /// [name] Name of the WAFv2 Web ACL. Exactly one of `name` or `resource_arn` must be specified.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the AWS resource associated with the Web ACL. This can be an ARN of an Application Load Balancer, Amazon API Gateway REST API, AWS AppSync GraphQL API, Amazon Cognito user pool, AWS App Runner service, AWS Verified Access instance, or AWS Amplify application. Exactly one of `name` or `resource_arn` must be specified.
  /// [scope] Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  GetWebAclArgs({
    this.name,
    this.region,
    this.resourceArn,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'resourceArn': ?resourceArn,
      'scope': scope,
    };
  }

  factory GetWebAclArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAclArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceArn: map['resourceArn'] == null ? null : (map['resourceArn'] as String).input(),
      scope: (map['scope'] as String).input(),
    );
  }
}


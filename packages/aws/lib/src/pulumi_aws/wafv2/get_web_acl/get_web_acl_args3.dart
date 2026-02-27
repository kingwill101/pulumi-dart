// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWebAcl.
class GetWebAclArgs3 {
  /// Name of the WAFv2 Web ACL. Exactly one of `name` or `resource_arn` must be specified.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the AWS resource associated with the Web ACL. This can be an ARN of an Application Load Balancer, Amazon API Gateway REST API, AWS AppSync GraphQL API, Amazon Cognito user pool, AWS App Runner service, AWS Verified Access instance, or AWS Amplify application. Exactly one of `name` or `resource_arn` must be specified.
  final Input<String>? resourceArn;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  final Input<String> scope;

  GetWebAclArgs3({
    this.name,
    this.region,
    this.resourceArn,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceArnValue = resourceArn;
    if (resourceArnValue != null) {
      map['resourceArn'] = resourceArnValue;
    }
    map['scope'] = scope;
    return map;
  }

  factory GetWebAclArgs3.fromMap(Map<String, dynamic> map) {
    return GetWebAclArgs3(
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceArn: Input.asOptionalInput<String>(map['resourceArn']),
      scope: Input.asInput<String>(map['scope']),
    );
  }
}

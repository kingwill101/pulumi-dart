// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WebAclAssociation resources.
class WebAclAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the resource to associate with the web ACL. This must be an ARN of an Application Load Balancer, an Amazon API Gateway stage (REST only, HTTP is unsupported), an Amazon Cognito User Pool, an Amazon AppSync GraphQL API, an Amazon App Runner service, or an Amazon Verified Access instance.
  final pulumi.Input<String>? resourceArn;
  /// The Amazon Resource Name (ARN) of the Web ACL that you want to associate with the resource.
  final pulumi.Input<String>? webAclArn;

  /// Creates a new [WebAclAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] The Amazon Resource Name (ARN) of the resource to associate with the web ACL. This must be an ARN of an Application Load Balancer, an Amazon API Gateway stage (REST only, HTTP is unsupported), an Amazon Cognito User Pool, an Amazon AppSync GraphQL API, an Amazon App Runner service, or an Amazon Verified Access instance.
  /// [webAclArn] The Amazon Resource Name (ARN) of the Web ACL that you want to associate with the resource.
  WebAclAssociationState({
    this.region,
    this.resourceArn,
    this.webAclArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceArn': ?resourceArn,
      'webAclArn': ?webAclArn,
    };
  }

  factory WebAclAssociationState.fromMap(Map<String, dynamic> map) {
    return WebAclAssociationState(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceArn: map['resourceArn'] == null ? null : ((map['resourceArn'] as String).input()).input(),
      webAclArn: map['webAclArn'] == null ? null : ((map['webAclArn'] as String).input()).input(),
    );
  }
}


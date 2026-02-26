// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for WebAclAssociation.
class WebAclAssociationArgs2 {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) of the resource to associate with the web ACL. This must be an ARN of an Application Load Balancer, an Amazon API Gateway stage (REST only, HTTP is unsupported), an Amazon Cognito User Pool, an Amazon AppSync GraphQL API, an Amazon App Runner service, or an Amazon Verified Access instance.
  final Input<String> resourceArn;

  /// The Amazon Resource Name (ARN) of the Web ACL that you want to associate with the resource.
  final Input<String> webAclArn;

  WebAclAssociationArgs2({
    this.region,
    required this.resourceArn,
    required this.webAclArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceArn'] = resourceArn;
    map['webAclArn'] = webAclArn;
    return map;
  }

  factory WebAclAssociationArgs2.fromMap(Map<String, dynamic> map) {
    return WebAclAssociationArgs2(
      region: Input.asOptionalInput<String>(map['region']),
      resourceArn: Input.asInput<String>(map['resourceArn']),
      webAclArn: Input.asInput<String>(map['webAclArn']),
    );
  }
}

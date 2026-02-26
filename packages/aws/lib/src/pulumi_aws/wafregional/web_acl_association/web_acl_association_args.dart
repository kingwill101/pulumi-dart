// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for WebAclAssociation.
class WebAclAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the resource to associate with. For example, an Application Load Balancer or API Gateway Stage.
  final Input<String> resourceArn;

  /// The ID of the WAF Regional WebACL to create an association.
  final Input<String> webAclId;

  WebAclAssociationArgs({
    this.region,
    required this.resourceArn,
    required this.webAclId,
  });

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
      region: Input.asOptionalInput<String>(map['region']),
      resourceArn: Input.asInput<String>(map['resourceArn']),
      webAclId: Input.asInput<String>(map['webAclId']),
    );
  }
}

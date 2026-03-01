// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WebAclAssociation resources.
class WebAclAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the resource to associate with. For example, an Application Load Balancer or API Gateway Stage.
  final pulumi.Input<String>? resourceArn;
  /// The ID of the WAF Regional WebACL to create an association.
  final pulumi.Input<String>? webAclId;

  /// Creates a new [WebAclAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the resource to associate with. For example, an Application Load Balancer or API Gateway Stage.
  /// [webAclId] The ID of the WAF Regional WebACL to create an association.
  WebAclAssociationState({
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<String>? webAclId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      webAclId = pulumi.Input.asOptionalInput<String>(webAclId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceArn': ?resourceArn,
      'webAclId': ?webAclId,
    };
  }

  factory WebAclAssociationState.fromMap(Map<String, dynamic> map) {
    return WebAclAssociationState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      webAclId: map['webAclId'] == null ? null : pulumi.Output.create<String>(map['webAclId'] as String),
    );
  }
}


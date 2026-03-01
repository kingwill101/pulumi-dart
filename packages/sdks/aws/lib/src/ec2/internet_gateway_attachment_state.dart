// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InternetGatewayAttachment resources.
class InternetGatewayAttachmentState {
  /// The ID of the internet gateway.
  final pulumi.Input<String>? internetGatewayId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [InternetGatewayAttachmentState].
  /// [internetGatewayId] The ID of the internet gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcId] The ID of the VPC.
  InternetGatewayAttachmentState({
    pulumi.Output<String>? internetGatewayId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? vpcId,
  }) :
      internetGatewayId = pulumi.Input.asOptionalInput<String>(internetGatewayId),
      region = pulumi.Input.asOptionalInput<String>(region),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetGatewayId': ?internetGatewayId,
      'region': ?region,
      'vpcId': ?vpcId,
    };
  }

  factory InternetGatewayAttachmentState.fromMap(Map<String, dynamic> map) {
    return InternetGatewayAttachmentState(
      internetGatewayId: map['internetGatewayId'] == null ? null : pulumi.Output.create<String>(map['internetGatewayId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}


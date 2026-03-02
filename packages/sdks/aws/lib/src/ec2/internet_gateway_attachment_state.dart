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
    this.internetGatewayId,
    this.region,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetGatewayId': ?internetGatewayId,
      'region': ?region,
      'vpcId': ?vpcId,
    };
  }

  factory InternetGatewayAttachmentState.fromMap(Map<String, dynamic> map) {
    return InternetGatewayAttachmentState(
      internetGatewayId: map['internetGatewayId'] == null ? null : (map['internetGatewayId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}


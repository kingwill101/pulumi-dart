// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_internet_gateway_attachment_internet_gateway_attachment_args_doc}
/// The set of arguments for InternetGatewayAttachment.
/// {@endtemplate}
/// {@macro pulumi_ec2_internet_gateway_attachment_internet_gateway_attachment_args_doc}
class InternetGatewayAttachmentArgs {
  /// The ID of the internet gateway.
  final pulumi.Input<String> internetGatewayId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;

  /// Creates a new [InternetGatewayAttachmentArgs].
  /// [internetGatewayId] The ID of the internet gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcId] The ID of the VPC.
  InternetGatewayAttachmentArgs({
    required String internetGatewayId,
    String? region,
    required String vpcId,
  }) :
      internetGatewayId = pulumi.Input.asInput<String>(internetGatewayId),
      region = pulumi.Input.asOptionalInput<String>(region),
      vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetGatewayId': internetGatewayId,
      'region': ?region,
      'vpcId': vpcId,
    };
  }

  factory InternetGatewayAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InternetGatewayAttachmentArgs(
      internetGatewayId: map['internetGatewayId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}


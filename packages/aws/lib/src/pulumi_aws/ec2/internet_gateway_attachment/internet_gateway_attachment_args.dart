// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InternetGatewayAttachment.
class InternetGatewayAttachmentArgs {
  /// The ID of the internet gateway.
  final pulumi.Input<String> internetGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;

  InternetGatewayAttachmentArgs({
    required this.internetGatewayId,
    this.region,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['internetGatewayId'] = internetGatewayId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory InternetGatewayAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InternetGatewayAttachmentArgs(
      internetGatewayId: pulumi.Input.asInput<String>(map['internetGatewayId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      vpcId: pulumi.Input.asInput<String>(map['vpcId']),
    );
  }
}

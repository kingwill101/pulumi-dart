// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for InternetGatewayAttachment.
class InternetGatewayAttachmentArgs {
  /// The ID of the internet gateway.
  final Input<String> internetGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the VPC.
  final Input<String> vpcId;

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
      internetGatewayId: Input.asInput<String>(map['internetGatewayId']),
      region: Input.asOptionalInput<String>(map['region']),
      vpcId: Input.asInput<String>(map['vpcId']),
    );
  }
}

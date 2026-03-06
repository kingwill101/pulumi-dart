// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInternetGatewayAttachment {
  /// Current state of the attachment between the gateway and the VPC. Present only if a VPC is attached
  final pulumi.Input<String> state;
  /// ID of an attached VPC.
  final pulumi.Input<String> vpcId;

  /// Creates a new [GetInternetGatewayAttachment].
  /// [state] Current state of the attachment between the gateway and the VPC. Present only if a VPC is attached
  /// [vpcId] ID of an attached VPC.
  const GetInternetGatewayAttachment({
    required this.state,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
      'vpcId': vpcId,
    };
  }

  factory GetInternetGatewayAttachment.fromMap(Map<String, dynamic> map) {
    return GetInternetGatewayAttachment(
      state: pulumi.Input.fromValue(map['state'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}


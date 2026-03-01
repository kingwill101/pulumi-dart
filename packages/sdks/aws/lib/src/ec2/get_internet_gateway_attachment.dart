// ignore_for_file: unused_element, unnecessary_cast


class GetInternetGatewayAttachment {
  /// Current state of the attachment between the gateway and the VPC. Present only if a VPC is attached
  final String state;
  /// ID of an attached VPC.
  final String vpcId;

  /// Creates a new [GetInternetGatewayAttachment].
  /// [state] Current state of the attachment between the gateway and the VPC. Present only if a VPC is attached
  /// [vpcId] ID of an attached VPC.
  GetInternetGatewayAttachment({
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
      state: map['state'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}


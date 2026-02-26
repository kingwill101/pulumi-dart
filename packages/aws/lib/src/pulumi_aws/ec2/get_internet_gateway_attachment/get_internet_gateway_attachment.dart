// ignore_for_file: unused_element, unnecessary_cast

class GetInternetGatewayAttachment {
  /// Current state of the attachment between the gateway and the VPC. Present only if a VPC is attached
  final String state;

  /// ID of an attached VPC.
  final String vpcId;

  GetInternetGatewayAttachment({
    required this.state,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['state'] = state;
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetInternetGatewayAttachment.fromMap(Map<String, dynamic> map) {
    return GetInternetGatewayAttachment(
      state: map['state'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}

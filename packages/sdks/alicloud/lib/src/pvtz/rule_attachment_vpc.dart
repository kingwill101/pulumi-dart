// ignore_for_file: unused_element, unnecessary_cast


class RuleAttachmentVpc {
  /// The region of the vpc. If not set, the current region will instead of.
  final String regionId;
  /// The ID of the VPC.  **NOTE:** The VPC that can be associated with the forwarding rule must belong to the same region as the Endpoint.
  final String vpcId;

  /// Creates a new [RuleAttachmentVpc].
  /// [regionId] The region of the vpc. If not set, the current region will instead of.
  /// [vpcId] The ID of the VPC.  **NOTE:** The VPC that can be associated with the forwarding rule must belong to the same region as the Endpoint.
  RuleAttachmentVpc({
    required this.regionId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionId': regionId,
      'vpcId': vpcId,
    };
  }

  factory RuleAttachmentVpc.fromMap(Map<String, dynamic> map) {
    return RuleAttachmentVpc(
      regionId: map['regionId'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}


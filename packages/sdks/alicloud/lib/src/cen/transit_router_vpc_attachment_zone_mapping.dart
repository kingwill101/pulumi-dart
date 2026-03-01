// ignore_for_file: unused_element, unnecessary_cast


class TransitRouterVpcAttachmentZoneMapping {
  /// The ID of the vSwitch that you want to add to the VPC connection.  You can specify at most 10 vSwitches in each call.
  /// - If the VPC connection belongs to the current Alibaba Cloud account, you can call the [DescribeVSwitches](https://www.alibabacloud.com/help/en/doc-detail/35748.html) operation to query the IDs of the vSwitches and zones of the VPC.
  /// - If the VPC connection belongs to another Alibaba Cloud account, you can call the [ListGrantVSwitchesToCen](https://www.alibabacloud.com/help/en/doc-detail/427599.html) operation to query the IDs of the vSwitches and zones of the VPC.
  final String vswitchId;
  /// The ID of the zone that supports Enterprise Edition transit routers.  You can call the [DescribeZones](https://www.alibabacloud.com/help/en/doc-detail/36064.html) operation to query the most recent zone list.  You can specify at most 10 zones in each call.
  final String zoneId;

  /// Creates a new [TransitRouterVpcAttachmentZoneMapping].
  /// [vswitchId] The ID of the vSwitch that you want to add to the VPC connection.  You can specify at most 10 vSwitches in each call.
  /// [zoneId] The ID of the zone that supports Enterprise Edition transit routers.  You can call the [DescribeZones](https://www.alibabacloud.com/help/en/doc-detail/36064.html) operation to query the most recent zone list.  You can specify at most 10 zones in each call.
  TransitRouterVpcAttachmentZoneMapping({
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory TransitRouterVpcAttachmentZoneMapping.fromMap(Map<String, dynamic> map) {
    return TransitRouterVpcAttachmentZoneMapping(
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EipSegmentAddress resources.
class EipSegmentAddressState {
  /// The maximum bandwidth of the contiguous EIP group. Unit: Mbit/s.
  /// - Valid values when `InstanceChargeType` is set to `PostPaid` and `InternetChargeType` is set to `PayByBandwidth`: `1` to `500`.****
  /// - Valid values when `InstanceChargeType` is set to `PostPaid` and `InternetChargeType` is set to `PayByTraffic`: `1` to `200`.****
  /// - Valid values when `InstanceChargeType` is set to `PrePaid`: `1` to `1000`.****
  ///
  /// Default value: `5`. Unit: Mbit/s.
  final pulumi.Input<String>? bandwidth;
  /// The time when the contiguous Elastic IP address group was created. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String>? createTime;
  /// The subnet mask of the contiguous EIP group. Valid values:
  final pulumi.Input<String>? eipMask;
  /// The metering method of the contiguous EIP group. Valid values:
  /// - `PayByBandwidth` (default)
  /// - `PayByTraffic`
  final pulumi.Input<String>? internetChargeType;
  /// The line type. Valid values:
  /// - `BGP` (default): BGP (Multi-ISP) line The BGP (Multi-ISP) line is supported in all regions.
  /// - `BGP_PRO`: BGP (Multi-ISP) Pro line BGP (Multi-ISP) Pro line is supported only in the China (Hong Kong), Singapore, Japan (Tokyo), Malaysia (Kuala Lumpur), Philippines (Manila), Indonesia (Jakarta), and Thailand (Bangkok) regions.
  ///
  /// For more information about the BGP (Multi-ISP) line and BGP (Multi-ISP) Pro line, see [EIP line types](https://www.alibabacloud.com/help/en/doc-detail/32321.html).
  ///
  /// If you are allowed to use single-ISP bandwidth, you can also use one of the following values:
  /// - `ChinaTelecom`
  /// - `ChinaUnicom`
  /// - `ChinaMobile`
  /// - `ChinaTelecom_L2`
  /// - `ChinaUnicom_L2`
  /// - `ChinaMobile_L2`
  ///
  /// If your services are deployed in China East 1 Finance, this parameter is required and you must set the parameter to `BGP_FinanceCloud`.
  final pulumi.Input<String>? isp;
  /// The network type. Set the value to `public`, which specifies the public network type.
  final pulumi.Input<String>? netmode;
  /// The resource group ID.
  final pulumi.Input<String>? resourceGroupId;
  /// The name of the contiguous Elastic IP address group.
  final pulumi.Input<String>? segmentAddressName;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The zone of the contiguous EIP group.
  final pulumi.Input<String>? zone;

  /// Creates a new [EipSegmentAddressState].
  /// [bandwidth] The maximum bandwidth of the contiguous EIP group. Unit: Mbit/s.
  /// [createTime] The time when the contiguous Elastic IP address group was created. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  /// [eipMask] The subnet mask of the contiguous EIP group. Valid values:
  /// [internetChargeType] The metering method of the contiguous EIP group. Valid values:
  /// [isp] The line type. Valid values:
  /// [netmode] The network type. Set the value to `public`, which specifies the public network type.
  /// [resourceGroupId] The resource group ID.
  /// [segmentAddressName] The name of the contiguous Elastic IP address group.
  /// [status] The status of the resource
  /// [zone] The zone of the contiguous EIP group.
  EipSegmentAddressState({
    pulumi.Output<String>? bandwidth,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? eipMask,
    pulumi.Output<String>? internetChargeType,
    pulumi.Output<String>? isp,
    pulumi.Output<String>? netmode,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? segmentAddressName,
    pulumi.Output<String>? status,
    pulumi.Output<String>? zone,
  }) :
      bandwidth = pulumi.Input.asOptionalInput<String>(bandwidth),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      eipMask = pulumi.Input.asOptionalInput<String>(eipMask),
      internetChargeType = pulumi.Input.asOptionalInput<String>(internetChargeType),
      isp = pulumi.Input.asOptionalInput<String>(isp),
      netmode = pulumi.Input.asOptionalInput<String>(netmode),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      segmentAddressName = pulumi.Input.asOptionalInput<String>(segmentAddressName),
      status = pulumi.Input.asOptionalInput<String>(status),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'createTime': ?createTime,
      'eipMask': ?eipMask,
      'internetChargeType': ?internetChargeType,
      'isp': ?isp,
      'netmode': ?netmode,
      'resourceGroupId': ?resourceGroupId,
      'segmentAddressName': ?segmentAddressName,
      'status': ?status,
      'zone': ?zone,
    };
  }

  factory EipSegmentAddressState.fromMap(Map<String, dynamic> map) {
    return EipSegmentAddressState(
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<String>(map['bandwidth'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      eipMask: map['eipMask'] == null ? null : pulumi.Output.create<String>(map['eipMask'] as String),
      internetChargeType: map['internetChargeType'] == null ? null : pulumi.Output.create<String>(map['internetChargeType'] as String),
      isp: map['isp'] == null ? null : pulumi.Output.create<String>(map['isp'] as String),
      netmode: map['netmode'] == null ? null : pulumi.Output.create<String>(map['netmode'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      segmentAddressName: map['segmentAddressName'] == null ? null : pulumi.Output.create<String>(map['segmentAddressName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}


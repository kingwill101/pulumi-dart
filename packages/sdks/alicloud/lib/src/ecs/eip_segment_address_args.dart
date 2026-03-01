// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_eip_segment_address_eip_segment_address_args_doc}
/// The set of arguments for EipSegmentAddress.
/// {@endtemplate}
/// {@macro pulumi_ecs_eip_segment_address_eip_segment_address_args_doc}
class EipSegmentAddressArgs {
  /// The maximum bandwidth of the contiguous EIP group. Unit: Mbit/s.
  /// - Valid values when `InstanceChargeType` is set to `PostPaid` and `InternetChargeType` is set to `PayByBandwidth`: `1` to `500`.****
  /// - Valid values when `InstanceChargeType` is set to `PostPaid` and `InternetChargeType` is set to `PayByTraffic`: `1` to `200`.****
  /// - Valid values when `InstanceChargeType` is set to `PrePaid`: `1` to `1000`.****
  ///
  /// Default value: `5`. Unit: Mbit/s.
  final pulumi.Input<String>? bandwidth;
  /// The subnet mask of the contiguous EIP group. Valid values:
  final pulumi.Input<String> eipMask;
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
  /// The zone of the contiguous EIP group.
  final pulumi.Input<String>? zone;

  /// Creates a new [EipSegmentAddressArgs].
  /// [bandwidth] The maximum bandwidth of the contiguous EIP group. Unit: Mbit/s.
  /// [eipMask] The subnet mask of the contiguous EIP group. Valid values:
  /// [internetChargeType] The metering method of the contiguous EIP group. Valid values:
  /// [isp] The line type. Valid values:
  /// [netmode] The network type. Set the value to `public`, which specifies the public network type.
  /// [resourceGroupId] The resource group ID.
  /// [zone] The zone of the contiguous EIP group.
  EipSegmentAddressArgs({
    pulumi.Output<String>? bandwidth,
    required pulumi.Output<String> eipMask,
    pulumi.Output<String>? internetChargeType,
    pulumi.Output<String>? isp,
    pulumi.Output<String>? netmode,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? zone,
  }) :
      bandwidth = pulumi.Input.asOptionalInput<String>(bandwidth),
      eipMask = pulumi.Input.asInput<String>(eipMask),
      internetChargeType = pulumi.Input.asOptionalInput<String>(internetChargeType),
      isp = pulumi.Input.asOptionalInput<String>(isp),
      netmode = pulumi.Input.asOptionalInput<String>(netmode),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'eipMask': eipMask,
      'internetChargeType': ?internetChargeType,
      'isp': ?isp,
      'netmode': ?netmode,
      'resourceGroupId': ?resourceGroupId,
      'zone': ?zone,
    };
  }

  factory EipSegmentAddressArgs.fromMap(Map<String, dynamic> map) {
    return EipSegmentAddressArgs(
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<String>(map['bandwidth'] as String),
      eipMask: pulumi.Output.create<String>(map['eipMask'] as String),
      internetChargeType: map['internetChargeType'] == null ? null : pulumi.Output.create<String>(map['internetChargeType'] as String),
      isp: map['isp'] == null ? null : pulumi.Output.create<String>(map['isp'] as String),
      netmode: map['netmode'] == null ? null : pulumi.Output.create<String>(map['netmode'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BandwidthPackage resources.
class BandwidthPackageState {
  /// Whether to pay automatically. Valid values:
  final pulumi.Input<bool>? autoPay;
  /// Auto renewal period of a bandwidth packet, in the unit of month. Valid values: `1` to `12`.
  final pulumi.Input<int>? autoRenewDuration;
  /// Whether use vouchers. Default value: `false`. Valid values:
  final pulumi.Input<bool>? autoUseCoupon;
  /// The bandwidth value of bandwidth packet.
  final pulumi.Input<int>? bandwidth;
  /// The name of the bandwidth packet.
  final pulumi.Input<String>? bandwidthPackageName;
  /// The bandwidth type of the bandwidth. Valid values: `Advanced`, `Basic`, `Enhanced`. If `type` is set to `Basic`, this parameter is required.
  /// > **NOTE:** At present, only basic can be configured to enhanced, but not enhanced and advanced to other types of accelerated bandwidth.
  final pulumi.Input<String>? bandwidthType;
  /// The billing type. Valid values: `PayBy95`, `PayByTraffic`. **NOTE:** `billing_type` is valid only when `payment_type` is set to `PayAsYouGo`.
  final pulumi.Input<String>? billingType;
  /// Interworking area A of cross domain acceleration package. Only international stations support returning this parameter. Default value: `China-mainland`.
  final pulumi.Input<String>? cbnGeographicRegionIda;
  /// Interworking area B of cross domain acceleration package. Only international stations support returning this parameter. Default value: `Global`.
  final pulumi.Input<String>? cbnGeographicRegionIdb;
  /// The description of bandwidth package.
  final pulumi.Input<String>? description;
  /// The subscription duration. **NOTE:** The ForceNew attribute has be removed from version 1.148.0. If `payment_type` is set to `Subscription`, this parameter is required.
  final pulumi.Input<String>? duration;
  /// The payment type of the bandwidth. Default value: `Subscription`. Valid values: `PayAsYouGo`, `Subscription`.
  final pulumi.Input<String>? paymentType;
  /// The code of the coupon. **NOTE:** The `promotion_option_no` takes effect only for accounts registered on the international site (alibabacloud.com).
  final pulumi.Input<String>? promotionOptionNo;
  /// The minimum percentage for the pay-by-95th-percentile metering method. Valid values: `30` to `100`. **NOTE:** `ratio` is valid only when `billing_type` is set to `PayBy95`.
  final pulumi.Input<int>? ratio;
  /// Whether to renew a bandwidth packet. automatically or not. Valid values:
  /// - `AutoRenewal`: Enable auto renewal.
  /// - `Normal`: Disable auto renewal.
  /// - `NotRenewal`: No renewal any longer. After you specify this value, Alibaba Cloud stop sending notification of instance expiry, and only gives a brief reminder on the third day before the instance expiry.
  final pulumi.Input<String>? renewalStatus;
  /// The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the Bandwidth Package.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the bandwidth packet. China station only supports return to basic. Valid values: `Basic`, `CrossDomain`.
  final pulumi.Input<String>? type;

  /// Creates a new [BandwidthPackageState].
  /// [autoPay] Whether to pay automatically. Valid values:
  /// [autoRenewDuration] Auto renewal period of a bandwidth packet, in the unit of month. Valid values: `1` to `12`.
  /// [autoUseCoupon] Whether use vouchers. Default value: `false`. Valid values:
  /// [bandwidth] The bandwidth value of bandwidth packet.
  /// [bandwidthPackageName] The name of the bandwidth packet.
  /// [bandwidthType] The bandwidth type of the bandwidth. Valid values: `Advanced`, `Basic`, `Enhanced`. If `type` is set to `Basic`, this parameter is required.
  /// [billingType] The billing type. Valid values: `PayBy95`, `PayByTraffic`. **NOTE:** `billing_type` is valid only when `payment_type` is set to `PayAsYouGo`.
  /// [cbnGeographicRegionIda] Interworking area A of cross domain acceleration package. Only international stations support returning this parameter. Default value: `China-mainland`.
  /// [cbnGeographicRegionIdb] Interworking area B of cross domain acceleration package. Only international stations support returning this parameter. Default value: `Global`.
  /// [description] The description of bandwidth package.
  /// [duration] The subscription duration. **NOTE:** The ForceNew attribute has be removed from version 1.148.0. If `payment_type` is set to `Subscription`, this parameter is required.
  /// [paymentType] The payment type of the bandwidth. Default value: `Subscription`. Valid values: `PayAsYouGo`, `Subscription`.
  /// [promotionOptionNo] The code of the coupon. **NOTE:** The `promotion_option_no` takes effect only for accounts registered on the international site (alibabacloud.com).
  /// [ratio] The minimum percentage for the pay-by-95th-percentile metering method. Valid values: `30` to `100`. **NOTE:** `ratio` is valid only when `billing_type` is set to `PayBy95`.
  /// [renewalStatus] Whether to renew a bandwidth packet. automatically or not. Valid values:
  /// [resourceGroupId] The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  /// [status] The status of the Bandwidth Package.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The type of the bandwidth packet. China station only supports return to basic. Valid values: `Basic`, `CrossDomain`.
  BandwidthPackageState({
    this.autoPay,
    this.autoRenewDuration,
    this.autoUseCoupon,
    this.bandwidth,
    this.bandwidthPackageName,
    this.bandwidthType,
    this.billingType,
    this.cbnGeographicRegionIda,
    this.cbnGeographicRegionIdb,
    this.description,
    this.duration,
    this.paymentType,
    this.promotionOptionNo,
    this.ratio,
    this.renewalStatus,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPay': ?autoPay,
      'autoRenewDuration': ?autoRenewDuration,
      'autoUseCoupon': ?autoUseCoupon,
      'bandwidth': ?bandwidth,
      'bandwidthPackageName': ?bandwidthPackageName,
      'bandwidthType': ?bandwidthType,
      'billingType': ?billingType,
      'cbnGeographicRegionIda': ?cbnGeographicRegionIda,
      'cbnGeographicRegionIdb': ?cbnGeographicRegionIdb,
      'description': ?description,
      'duration': ?duration,
      'paymentType': ?paymentType,
      'promotionOptionNo': ?promotionOptionNo,
      'ratio': ?ratio,
      'renewalStatus': ?renewalStatus,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory BandwidthPackageState.fromMap(Map<String, dynamic> map) {
    return BandwidthPackageState(
      autoPay: map['autoPay'] == null ? null : (map['autoPay']! as bool).input(),
      autoRenewDuration: map['autoRenewDuration'] == null ? null : (map['autoRenewDuration']! as int).input(),
      autoUseCoupon: map['autoUseCoupon'] == null ? null : (map['autoUseCoupon']! as bool).input(),
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth']! as int).input(),
      bandwidthPackageName: map['bandwidthPackageName'] == null ? null : (map['bandwidthPackageName']! as String).input(),
      bandwidthType: map['bandwidthType'] == null ? null : (map['bandwidthType']! as String).input(),
      billingType: map['billingType'] == null ? null : (map['billingType']! as String).input(),
      cbnGeographicRegionIda: map['cbnGeographicRegionIda'] == null ? null : (map['cbnGeographicRegionIda']! as String).input(),
      cbnGeographicRegionIdb: map['cbnGeographicRegionIdb'] == null ? null : (map['cbnGeographicRegionIdb']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      duration: map['duration'] == null ? null : (map['duration']! as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      promotionOptionNo: map['promotionOptionNo'] == null ? null : (map['promotionOptionNo']! as String).input(),
      ratio: map['ratio'] == null ? null : (map['ratio']! as int).input(),
      renewalStatus: map['renewalStatus'] == null ? null : (map['renewalStatus']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}


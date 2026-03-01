// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_bandwidth_package_bandwidth_package_args_doc}
/// The set of arguments for BandwidthPackage.
/// {@endtemplate}
/// {@macro pulumi_ga_bandwidth_package_bandwidth_package_args_doc}
class BandwidthPackageArgs {
  /// Whether to pay automatically. Valid values:
  final pulumi.Input<bool>? autoPay;
  /// Auto renewal period of a bandwidth packet, in the unit of month. Valid values: `1` to `12`.
  final pulumi.Input<int>? autoRenewDuration;
  /// Whether use vouchers. Default value: `false`. Valid values:
  final pulumi.Input<bool>? autoUseCoupon;
  /// The bandwidth value of bandwidth packet.
  final pulumi.Input<int> bandwidth;
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
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the bandwidth packet. China station only supports return to basic. Valid values: `Basic`, `CrossDomain`.
  final pulumi.Input<String> type;

  /// Creates a new [BandwidthPackageArgs].
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
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The type of the bandwidth packet. China station only supports return to basic. Valid values: `Basic`, `CrossDomain`.
  BandwidthPackageArgs({
    bool? autoPay,
    int? autoRenewDuration,
    bool? autoUseCoupon,
    required int bandwidth,
    String? bandwidthPackageName,
    String? bandwidthType,
    String? billingType,
    String? cbnGeographicRegionIda,
    String? cbnGeographicRegionIdb,
    String? description,
    String? duration,
    String? paymentType,
    String? promotionOptionNo,
    int? ratio,
    String? renewalStatus,
    String? resourceGroupId,
    Map<String, String>? tags,
    required String type,
  }) :
      autoPay = pulumi.Input.asOptionalInput<bool>(autoPay),
      autoRenewDuration = pulumi.Input.asOptionalInput<int>(autoRenewDuration),
      autoUseCoupon = pulumi.Input.asOptionalInput<bool>(autoUseCoupon),
      bandwidth = pulumi.Input.asInput<int>(bandwidth),
      bandwidthPackageName = pulumi.Input.asOptionalInput<String>(bandwidthPackageName),
      bandwidthType = pulumi.Input.asOptionalInput<String>(bandwidthType),
      billingType = pulumi.Input.asOptionalInput<String>(billingType),
      cbnGeographicRegionIda = pulumi.Input.asOptionalInput<String>(cbnGeographicRegionIda),
      cbnGeographicRegionIdb = pulumi.Input.asOptionalInput<String>(cbnGeographicRegionIdb),
      description = pulumi.Input.asOptionalInput<String>(description),
      duration = pulumi.Input.asOptionalInput<String>(duration),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      promotionOptionNo = pulumi.Input.asOptionalInput<String>(promotionOptionNo),
      ratio = pulumi.Input.asOptionalInput<int>(ratio),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPay': ?autoPay,
      'autoRenewDuration': ?autoRenewDuration,
      'autoUseCoupon': ?autoUseCoupon,
      'bandwidth': bandwidth,
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
      'tags': ?tags,
      'type': type,
    };
  }

  factory BandwidthPackageArgs.fromMap(Map<String, dynamic> map) {
    return BandwidthPackageArgs(
      autoPay: map['autoPay'] == null ? null : map['autoPay'] as bool,
      autoRenewDuration: map['autoRenewDuration'] == null ? null : map['autoRenewDuration'] as int,
      autoUseCoupon: map['autoUseCoupon'] == null ? null : map['autoUseCoupon'] as bool,
      bandwidth: map['bandwidth'] as int,
      bandwidthPackageName: map['bandwidthPackageName'] == null ? null : map['bandwidthPackageName'] as String,
      bandwidthType: map['bandwidthType'] == null ? null : map['bandwidthType'] as String,
      billingType: map['billingType'] == null ? null : map['billingType'] as String,
      cbnGeographicRegionIda: map['cbnGeographicRegionIda'] == null ? null : map['cbnGeographicRegionIda'] as String,
      cbnGeographicRegionIdb: map['cbnGeographicRegionIdb'] == null ? null : map['cbnGeographicRegionIdb'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      duration: map['duration'] == null ? null : map['duration'] as String,
      paymentType: map['paymentType'] == null ? null : map['paymentType'] as String,
      promotionOptionNo: map['promotionOptionNo'] == null ? null : map['promotionOptionNo'] as String,
      ratio: map['ratio'] == null ? null : map['ratio'] as int,
      renewalStatus: map['renewalStatus'] == null ? null : map['renewalStatus'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}


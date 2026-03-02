// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BasicAccelerator resources.
class BasicAcceleratorState {
  /// Specifies whether to enable automatic payment. Default value: `false`. Valid values:
  final pulumi.Input<bool>? autoPay;
  /// Specifies whether to enable auto-renewal for the GA Basic Accelerator instance. Default value: `false`. Valid values:
  final pulumi.Input<bool>? autoRenew;
  /// The auto-renewal period. Unit: months. Default value: `1`. Valid values: `1` to `12`. **NOTE:** This parameter is required only if `auto_renew` is set to `true`.
  final pulumi.Input<int>? autoRenewDuration;
  /// Specifies whether to automatically pay bills by using coupons. Default value: `false`. **NOTE:** This parameter is required only if `auto_pay` is set to `true`.
  final pulumi.Input<String>? autoUseCoupon;
  /// The bandwidth billing method. Valid values: `BandwidthPackage`, `CDT`, `CDT95`.
  final pulumi.Input<String>? bandwidthBillingType;
  /// The name of the Global Accelerator Basic Accelerator instance.
  final pulumi.Input<String>? basicAcceleratorName;
  /// Indicates whether cross-border acceleration is enabled. Default value: `false`. Valid values:
  final pulumi.Input<bool>? crossBorderStatus;
  /// The description of the Global Accelerator Basic Accelerator instance.
  final pulumi.Input<String>? description;
  /// The subscription duration. Default value: `1`.
  /// * If the `pricing_cycle` parameter is set to `Month`, the valid values for the `duration` parameter are `1` to `9`.
  /// * If the `pricing_cycle` parameter is set to `Year`, the valid values for the `duration` parameter are `1` to `3`.
  final pulumi.Input<int>? duration;
  /// The payment type. Default value: `Subscription`. Valid values: `PayAsYouGo`, `Subscription`.
  final pulumi.Input<String>? paymentType;
  /// The billing cycle. Default value: `Month`. Valid values: `Month`, `Year`.
  final pulumi.Input<String>? pricingCycle;
  /// The code of the coupon. **NOTE:** The `promotion_option_no` takes effect only for accounts registered on the international site (alibabacloud.com).
  final pulumi.Input<String>? promotionOptionNo;
  /// The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the Basic Accelerator instance.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BasicAcceleratorState].
  /// [autoPay] Specifies whether to enable automatic payment. Default value: `false`. Valid values:
  /// [autoRenew] Specifies whether to enable auto-renewal for the GA Basic Accelerator instance. Default value: `false`. Valid values:
  /// [autoRenewDuration] The auto-renewal period. Unit: months. Default value: `1`. Valid values: `1` to `12`. **NOTE:** This parameter is required only if `auto_renew` is set to `true`.
  /// [autoUseCoupon] Specifies whether to automatically pay bills by using coupons. Default value: `false`. **NOTE:** This parameter is required only if `auto_pay` is set to `true`.
  /// [bandwidthBillingType] The bandwidth billing method. Valid values: `BandwidthPackage`, `CDT`, `CDT95`.
  /// [basicAcceleratorName] The name of the Global Accelerator Basic Accelerator instance.
  /// [crossBorderStatus] Indicates whether cross-border acceleration is enabled. Default value: `false`. Valid values:
  /// [description] The description of the Global Accelerator Basic Accelerator instance.
  /// [duration] The subscription duration. Default value: `1`.
  /// [paymentType] The payment type. Default value: `Subscription`. Valid values: `PayAsYouGo`, `Subscription`.
  /// [pricingCycle] The billing cycle. Default value: `Month`. Valid values: `Month`, `Year`.
  /// [promotionOptionNo] The code of the coupon. **NOTE:** The `promotion_option_no` takes effect only for accounts registered on the international site (alibabacloud.com).
  /// [resourceGroupId] The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  /// [status] The status of the Basic Accelerator instance.
  /// [tags] A mapping of tags to assign to the resource.
  BasicAcceleratorState({
    this.autoPay,
    this.autoRenew,
    this.autoRenewDuration,
    this.autoUseCoupon,
    this.bandwidthBillingType,
    this.basicAcceleratorName,
    this.crossBorderStatus,
    this.description,
    this.duration,
    this.paymentType,
    this.pricingCycle,
    this.promotionOptionNo,
    this.resourceGroupId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPay': ?autoPay,
      'autoRenew': ?autoRenew,
      'autoRenewDuration': ?autoRenewDuration,
      'autoUseCoupon': ?autoUseCoupon,
      'bandwidthBillingType': ?bandwidthBillingType,
      'basicAcceleratorName': ?basicAcceleratorName,
      'crossBorderStatus': ?crossBorderStatus,
      'description': ?description,
      'duration': ?duration,
      'paymentType': ?paymentType,
      'pricingCycle': ?pricingCycle,
      'promotionOptionNo': ?promotionOptionNo,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory BasicAcceleratorState.fromMap(Map<String, dynamic> map) {
    return BasicAcceleratorState(
      autoPay: map['autoPay'] == null ? null : (map['autoPay'] as bool).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      autoRenewDuration: map['autoRenewDuration'] == null ? null : (map['autoRenewDuration'] as int).input(),
      autoUseCoupon: map['autoUseCoupon'] == null ? null : (map['autoUseCoupon'] as String).input(),
      bandwidthBillingType: map['bandwidthBillingType'] == null ? null : (map['bandwidthBillingType'] as String).input(),
      basicAcceleratorName: map['basicAcceleratorName'] == null ? null : (map['basicAcceleratorName'] as String).input(),
      crossBorderStatus: map['crossBorderStatus'] == null ? null : (map['crossBorderStatus'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      duration: map['duration'] == null ? null : (map['duration'] as int).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      pricingCycle: map['pricingCycle'] == null ? null : (map['pricingCycle'] as String).input(),
      promotionOptionNo: map['promotionOptionNo'] == null ? null : (map['promotionOptionNo'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Accelerator resources.
class AcceleratorState {
  /// The Name of the GA instance.
  final pulumi.Input<String>? acceleratorName;
  /// Auto renewal period of an instance, in the unit of month. The value range is 1-12.
  final pulumi.Input<int>? autoRenewDuration;
  /// Use coupons to pay bills automatically. Default value: `false`. Valid values:
  final pulumi.Input<bool>? autoUseCoupon;
  /// The bandwidth billing method. Default value: `BandwidthPackage`. Valid values:
  /// - `BandwidthPackage`: billed based on bandwidth plans.
  /// - `CDT`: billed based on data transfer.
  final pulumi.Input<String>? bandwidthBillingType;
  /// The type of cross-border acceleration. Default value: `bgpPro`. Valid values: `bgpPro`, `private`. **NOTE:** `cross_border_mode` is valid only when `cross_border_status` is set to `true`.
  final pulumi.Input<String>? crossBorderMode;
  /// Indicates whether cross-border acceleration is enabled. Default value: `false`. Valid values:
  final pulumi.Input<bool>? crossBorderStatus;
  /// Descriptive information of the global acceleration instance.
  final pulumi.Input<String>? description;
  /// The subscription duration.
  /// * If the `pricing_cycle` parameter is set to `Month`, the valid values for the `duration` parameter are 1 to 9.
  /// * If the `pricing_cycle` parameter is set to `Year`, the valid values for the `duration` parameter are 1 to 3.
  final pulumi.Input<int>? duration;
  /// The payment type. Default value: `Subscription`. Valid values: `PayAsYouGo`, `Subscription`.
  final pulumi.Input<String>? paymentType;
  /// The billing cycle of the GA instance. Default value: `Month`. Valid values:
  /// - `Month`: billed on a monthly basis.
  /// - `Year`: billed on an annual basis.
  final pulumi.Input<String>? pricingCycle;
  /// The code of the coupon. **NOTE:** The `promotion_option_no` takes effect only for accounts registered on the international site (alibabacloud.com).
  final pulumi.Input<String>? promotionOptionNo;
  /// Whether to renew an accelerator automatically or not. Default value: `Normal`. Valid values:
  /// - `AutoRenewal`: Enable auto renewal.
  /// - `Normal`: Disable auto renewal.
  /// - `NotRenewal`: No renewal any longer. After you specify this value, Alibaba Cloud stop sending notification of instance expiry, and only gives a brief reminder on the third day before the instance expiry.
  final pulumi.Input<String>? renewalStatus;
  /// The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  final pulumi.Input<String>? resourceGroupId;
  /// The instance type of the GA instance. Specification of global acceleration instance. Valid values:
  final pulumi.Input<String>? spec;
  /// The status of the GA instance.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AcceleratorState].
  /// [acceleratorName] The Name of the GA instance.
  /// [autoRenewDuration] Auto renewal period of an instance, in the unit of month. The value range is 1-12.
  /// [autoUseCoupon] Use coupons to pay bills automatically. Default value: `false`. Valid values:
  /// [bandwidthBillingType] The bandwidth billing method. Default value: `BandwidthPackage`. Valid values:
  /// [crossBorderMode] The type of cross-border acceleration. Default value: `bgpPro`. Valid values: `bgpPro`, `private`. **NOTE:** `cross_border_mode` is valid only when `cross_border_status` is set to `true`.
  /// [crossBorderStatus] Indicates whether cross-border acceleration is enabled. Default value: `false`. Valid values:
  /// [description] Descriptive information of the global acceleration instance.
  /// [duration] The subscription duration.
  /// [paymentType] The payment type. Default value: `Subscription`. Valid values: `PayAsYouGo`, `Subscription`.
  /// [pricingCycle] The billing cycle of the GA instance. Default value: `Month`. Valid values:
  /// [promotionOptionNo] The code of the coupon. **NOTE:** The `promotion_option_no` takes effect only for accounts registered on the international site (alibabacloud.com).
  /// [renewalStatus] Whether to renew an accelerator automatically or not. Default value: `Normal`. Valid values:
  /// [resourceGroupId] The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  /// [spec] The instance type of the GA instance. Specification of global acceleration instance. Valid values:
  /// [status] The status of the GA instance.
  /// [tags] A mapping of tags to assign to the resource.
  AcceleratorState({
    this.acceleratorName,
    this.autoRenewDuration,
    this.autoUseCoupon,
    this.bandwidthBillingType,
    this.crossBorderMode,
    this.crossBorderStatus,
    this.description,
    this.duration,
    this.paymentType,
    this.pricingCycle,
    this.promotionOptionNo,
    this.renewalStatus,
    this.resourceGroupId,
    this.spec,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorName': ?acceleratorName,
      'autoRenewDuration': ?autoRenewDuration,
      'autoUseCoupon': ?autoUseCoupon,
      'bandwidthBillingType': ?bandwidthBillingType,
      'crossBorderMode': ?crossBorderMode,
      'crossBorderStatus': ?crossBorderStatus,
      'description': ?description,
      'duration': ?duration,
      'paymentType': ?paymentType,
      'pricingCycle': ?pricingCycle,
      'promotionOptionNo': ?promotionOptionNo,
      'renewalStatus': ?renewalStatus,
      'resourceGroupId': ?resourceGroupId,
      'spec': ?spec,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory AcceleratorState.fromMap(Map<String, dynamic> map) {
    return AcceleratorState(
      acceleratorName: map['acceleratorName'] == null ? null : (map['acceleratorName']! as String).input(),
      autoRenewDuration: map['autoRenewDuration'] == null ? null : (map['autoRenewDuration']! as int).input(),
      autoUseCoupon: map['autoUseCoupon'] == null ? null : (map['autoUseCoupon']! as bool).input(),
      bandwidthBillingType: map['bandwidthBillingType'] == null ? null : (map['bandwidthBillingType']! as String).input(),
      crossBorderMode: map['crossBorderMode'] == null ? null : (map['crossBorderMode']! as String).input(),
      crossBorderStatus: map['crossBorderStatus'] == null ? null : (map['crossBorderStatus']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      duration: map['duration'] == null ? null : (map['duration']! as int).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      pricingCycle: map['pricingCycle'] == null ? null : (map['pricingCycle']! as String).input(),
      promotionOptionNo: map['promotionOptionNo'] == null ? null : (map['promotionOptionNo']! as String).input(),
      renewalStatus: map['renewalStatus'] == null ? null : (map['renewalStatus']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      spec: map['spec'] == null ? null : (map['spec']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}


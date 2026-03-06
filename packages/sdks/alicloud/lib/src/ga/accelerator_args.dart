// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_accelerator_accelerator_args_doc}
/// The set of arguments for Accelerator.
/// {@endtemplate}
/// {@macro pulumi_ga_accelerator_accelerator_args_doc}
class AcceleratorArgs {
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
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AcceleratorArgs].
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
  /// [tags] A mapping of tags to assign to the resource.
  const AcceleratorArgs({
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
      'tags': ?tags,
    };
  }

  factory AcceleratorArgs.fromMap(Map<String, dynamic> map) {
    return AcceleratorArgs(
      acceleratorName: (() { final guardedValue = map['acceleratorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoRenewDuration: (() { final guardedValue = map['autoRenewDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoUseCoupon: (() { final guardedValue = map['autoUseCoupon']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bandwidthBillingType: (() { final guardedValue = map['bandwidthBillingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crossBorderMode: (() { final guardedValue = map['crossBorderMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crossBorderStatus: (() { final guardedValue = map['crossBorderStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pricingCycle: (() { final guardedValue = map['pricingCycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promotionOptionNo: (() { final guardedValue = map['promotionOptionNo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalStatus: (() { final guardedValue = map['renewalStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}


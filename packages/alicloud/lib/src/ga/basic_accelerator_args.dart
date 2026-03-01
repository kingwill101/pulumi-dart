// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_basic_accelerator_basic_accelerator_args_doc}
/// The set of arguments for BasicAccelerator.
/// {@endtemplate}
/// {@macro pulumi_ga_basic_accelerator_basic_accelerator_args_doc}
class BasicAcceleratorArgs {
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
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BasicAcceleratorArgs].
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
  /// [tags] A mapping of tags to assign to the resource.
  BasicAcceleratorArgs({
    bool? autoPay,
    bool? autoRenew,
    int? autoRenewDuration,
    String? autoUseCoupon,
    String? bandwidthBillingType,
    String? basicAcceleratorName,
    bool? crossBorderStatus,
    String? description,
    int? duration,
    String? paymentType,
    String? pricingCycle,
    String? promotionOptionNo,
    String? resourceGroupId,
    Map<String, String>? tags,
  }) :
      autoPay = pulumi.Input.asOptionalInput<bool>(autoPay),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      autoRenewDuration = pulumi.Input.asOptionalInput<int>(autoRenewDuration),
      autoUseCoupon = pulumi.Input.asOptionalInput<String>(autoUseCoupon),
      bandwidthBillingType = pulumi.Input.asOptionalInput<String>(bandwidthBillingType),
      basicAcceleratorName = pulumi.Input.asOptionalInput<String>(basicAcceleratorName),
      crossBorderStatus = pulumi.Input.asOptionalInput<bool>(crossBorderStatus),
      description = pulumi.Input.asOptionalInput<String>(description),
      duration = pulumi.Input.asOptionalInput<int>(duration),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      pricingCycle = pulumi.Input.asOptionalInput<String>(pricingCycle),
      promotionOptionNo = pulumi.Input.asOptionalInput<String>(promotionOptionNo),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      'tags': ?tags,
    };
  }

  factory BasicAcceleratorArgs.fromMap(Map<String, dynamic> map) {
    return BasicAcceleratorArgs(
      autoPay: map['autoPay'] == null ? null : map['autoPay'] as bool,
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      autoRenewDuration: map['autoRenewDuration'] == null ? null : map['autoRenewDuration'] as int,
      autoUseCoupon: map['autoUseCoupon'] == null ? null : map['autoUseCoupon'] as String,
      bandwidthBillingType: map['bandwidthBillingType'] == null ? null : map['bandwidthBillingType'] as String,
      basicAcceleratorName: map['basicAcceleratorName'] == null ? null : map['basicAcceleratorName'] as String,
      crossBorderStatus: map['crossBorderStatus'] == null ? null : map['crossBorderStatus'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      duration: map['duration'] == null ? null : map['duration'] as int,
      paymentType: map['paymentType'] == null ? null : map['paymentType'] as String,
      pricingCycle: map['pricingCycle'] == null ? null : map['pricingCycle'] as String,
      promotionOptionNo: map['promotionOptionNo'] == null ? null : map['promotionOptionNo'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}


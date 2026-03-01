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
    pulumi.Output<bool>? autoPay,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<int>? autoRenewDuration,
    pulumi.Output<String>? autoUseCoupon,
    pulumi.Output<String>? bandwidthBillingType,
    pulumi.Output<String>? basicAcceleratorName,
    pulumi.Output<bool>? crossBorderStatus,
    pulumi.Output<String>? description,
    pulumi.Output<int>? duration,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? pricingCycle,
    pulumi.Output<String>? promotionOptionNo,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
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
      status = pulumi.Input.asOptionalInput<String>(status),
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
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory BasicAcceleratorState.fromMap(Map<String, dynamic> map) {
    return BasicAcceleratorState(
      autoPay: map['autoPay'] == null ? null : pulumi.Output.create<bool>(map['autoPay'] as bool),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      autoRenewDuration: map['autoRenewDuration'] == null ? null : pulumi.Output.create<int>(map['autoRenewDuration'] as int),
      autoUseCoupon: map['autoUseCoupon'] == null ? null : pulumi.Output.create<String>(map['autoUseCoupon'] as String),
      bandwidthBillingType: map['bandwidthBillingType'] == null ? null : pulumi.Output.create<String>(map['bandwidthBillingType'] as String),
      basicAcceleratorName: map['basicAcceleratorName'] == null ? null : pulumi.Output.create<String>(map['basicAcceleratorName'] as String),
      crossBorderStatus: map['crossBorderStatus'] == null ? null : pulumi.Output.create<bool>(map['crossBorderStatus'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      duration: map['duration'] == null ? null : pulumi.Output.create<int>(map['duration'] as int),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      pricingCycle: map['pricingCycle'] == null ? null : pulumi.Output.create<String>(map['pricingCycle'] as String),
      promotionOptionNo: map['promotionOptionNo'] == null ? null : pulumi.Output.create<String>(map['promotionOptionNo'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


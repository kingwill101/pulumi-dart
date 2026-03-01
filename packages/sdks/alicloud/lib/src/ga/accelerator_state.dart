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
    pulumi.Output<String>? acceleratorName,
    pulumi.Output<int>? autoRenewDuration,
    pulumi.Output<bool>? autoUseCoupon,
    pulumi.Output<String>? bandwidthBillingType,
    pulumi.Output<String>? crossBorderMode,
    pulumi.Output<bool>? crossBorderStatus,
    pulumi.Output<String>? description,
    pulumi.Output<int>? duration,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? pricingCycle,
    pulumi.Output<String>? promotionOptionNo,
    pulumi.Output<String>? renewalStatus,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? spec,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      acceleratorName = pulumi.Input.asOptionalInput<String>(acceleratorName),
      autoRenewDuration = pulumi.Input.asOptionalInput<int>(autoRenewDuration),
      autoUseCoupon = pulumi.Input.asOptionalInput<bool>(autoUseCoupon),
      bandwidthBillingType = pulumi.Input.asOptionalInput<String>(bandwidthBillingType),
      crossBorderMode = pulumi.Input.asOptionalInput<String>(crossBorderMode),
      crossBorderStatus = pulumi.Input.asOptionalInput<bool>(crossBorderStatus),
      description = pulumi.Input.asOptionalInput<String>(description),
      duration = pulumi.Input.asOptionalInput<int>(duration),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      pricingCycle = pulumi.Input.asOptionalInput<String>(pricingCycle),
      promotionOptionNo = pulumi.Input.asOptionalInput<String>(promotionOptionNo),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      spec = pulumi.Input.asOptionalInput<String>(spec),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      acceleratorName: map['acceleratorName'] == null ? null : pulumi.Output.create<String>(map['acceleratorName'] as String),
      autoRenewDuration: map['autoRenewDuration'] == null ? null : pulumi.Output.create<int>(map['autoRenewDuration'] as int),
      autoUseCoupon: map['autoUseCoupon'] == null ? null : pulumi.Output.create<bool>(map['autoUseCoupon'] as bool),
      bandwidthBillingType: map['bandwidthBillingType'] == null ? null : pulumi.Output.create<String>(map['bandwidthBillingType'] as String),
      crossBorderMode: map['crossBorderMode'] == null ? null : pulumi.Output.create<String>(map['crossBorderMode'] as String),
      crossBorderStatus: map['crossBorderStatus'] == null ? null : pulumi.Output.create<bool>(map['crossBorderStatus'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      duration: map['duration'] == null ? null : pulumi.Output.create<int>(map['duration'] as int),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      pricingCycle: map['pricingCycle'] == null ? null : pulumi.Output.create<String>(map['pricingCycle'] as String),
      promotionOptionNo: map['promotionOptionNo'] == null ? null : pulumi.Output.create<String>(map['promotionOptionNo'] as String),
      renewalStatus: map['renewalStatus'] == null ? null : pulumi.Output.create<String>(map['renewalStatus'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      spec: map['spec'] == null ? null : pulumi.Output.create<String>(map['spec'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


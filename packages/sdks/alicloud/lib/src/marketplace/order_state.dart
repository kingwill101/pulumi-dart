// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Order resources.
class OrderState {
  /// Service providers customize additional components.
  final pulumi.Input<Map<String, String>>? components;
  /// The coupon id of the market product.
  final pulumi.Input<String>? couponId;
  /// The number of purchase cycles.
  final pulumi.Input<int>? duration;
  /// The package version of the market product.
  final pulumi.Input<String>? packageVersion;
  /// Valid values are `PrePaid`, `PostPaid`,System default to `PostPaid`.
  final pulumi.Input<String>? payType;
  /// The purchase cycle of the product, valid values are `Day`, `Month` and `Year`.
  final pulumi.Input<String>? pricingCycle;
  /// The product_code of market place product.
  final pulumi.Input<String>? productCode;
  /// The quantity of the market product will be purchased.
  final pulumi.Input<int>? quantity;

  /// Creates a new [OrderState].
  /// [components] Service providers customize additional components.
  /// [couponId] The coupon id of the market product.
  /// [duration] The number of purchase cycles.
  /// [packageVersion] The package version of the market product.
  /// [payType] Valid values are `PrePaid`, `PostPaid`,System default to `PostPaid`.
  /// [pricingCycle] The purchase cycle of the product, valid values are `Day`, `Month` and `Year`.
  /// [productCode] The product_code of market place product.
  /// [quantity] The quantity of the market product will be purchased.
  OrderState({
    this.components,
    this.couponId,
    this.duration,
    this.packageVersion,
    this.payType,
    this.pricingCycle,
    this.productCode,
    this.quantity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'components': ?components,
      'couponId': ?couponId,
      'duration': ?duration,
      'packageVersion': ?packageVersion,
      'payType': ?payType,
      'pricingCycle': ?pricingCycle,
      'productCode': ?productCode,
      'quantity': ?quantity,
    };
  }

  factory OrderState.fromMap(Map<String, dynamic> map) {
    return OrderState(
      components: map['components'] == null ? null : ((map['components']! as Map).cast<String, String>()).input(),
      couponId: map['couponId'] == null ? null : (map['couponId']! as String).input(),
      duration: map['duration'] == null ? null : (map['duration']! as int).input(),
      packageVersion: map['packageVersion'] == null ? null : (map['packageVersion']! as String).input(),
      payType: map['payType'] == null ? null : (map['payType']! as String).input(),
      pricingCycle: map['pricingCycle'] == null ? null : (map['pricingCycle']! as String).input(),
      productCode: map['productCode'] == null ? null : (map['productCode']! as String).input(),
      quantity: map['quantity'] == null ? null : (map['quantity']! as int).input(),
    );
  }
}


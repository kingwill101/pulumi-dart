// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_marketplace_order_order_args_doc}
/// The set of arguments for Order.
/// {@endtemplate}
/// {@macro pulumi_marketplace_order_order_args_doc}
class OrderArgs {
  /// Service providers customize additional components.
  final pulumi.Input<Map<String, String>>? components;
  /// The coupon id of the market product.
  final pulumi.Input<String>? couponId;
  /// The number of purchase cycles.
  final pulumi.Input<int>? duration;
  /// The package version of the market product.
  final pulumi.Input<String> packageVersion;
  /// Valid values are `PrePaid`, `PostPaid`,System default to `PostPaid`.
  final pulumi.Input<String>? payType;
  /// The purchase cycle of the product, valid values are `Day`, `Month` and `Year`.
  final pulumi.Input<String> pricingCycle;
  /// The product_code of market place product.
  final pulumi.Input<String> productCode;
  /// The quantity of the market product will be purchased.
  final pulumi.Input<int>? quantity;

  /// Creates a new [OrderArgs].
  /// [components] Service providers customize additional components.
  /// [couponId] The coupon id of the market product.
  /// [duration] The number of purchase cycles.
  /// [packageVersion] The package version of the market product.
  /// [payType] Valid values are `PrePaid`, `PostPaid`,System default to `PostPaid`.
  /// [pricingCycle] The purchase cycle of the product, valid values are `Day`, `Month` and `Year`.
  /// [productCode] The product_code of market place product.
  /// [quantity] The quantity of the market product will be purchased.
  const OrderArgs({
    this.components,
    this.couponId,
    this.duration,
    required this.packageVersion,
    this.payType,
    required this.pricingCycle,
    required this.productCode,
    this.quantity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'components': ?components,
      'couponId': ?couponId,
      'duration': ?duration,
      'packageVersion': packageVersion,
      'payType': ?payType,
      'pricingCycle': pricingCycle,
      'productCode': productCode,
      'quantity': ?quantity,
    };
  }

  factory OrderArgs.fromMap(Map<String, dynamic> map) {
    return OrderArgs(
      components: (() { final guardedValue = map['components']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      couponId: (() { final guardedValue = map['couponId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      packageVersion: pulumi.Input.fromValue(map['packageVersion'] as String),
      payType: (() { final guardedValue = map['payType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pricingCycle: pulumi.Input.fromValue(map['pricingCycle'] as String),
      productCode: pulumi.Input.fromValue(map['productCode'] as String),
      quantity: (() { final guardedValue = map['quantity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}


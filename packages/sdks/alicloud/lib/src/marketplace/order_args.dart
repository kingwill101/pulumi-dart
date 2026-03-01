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
  OrderArgs({
    pulumi.Output<Map<String, String>>? components,
    pulumi.Output<String>? couponId,
    pulumi.Output<int>? duration,
    required pulumi.Output<String> packageVersion,
    pulumi.Output<String>? payType,
    required pulumi.Output<String> pricingCycle,
    required pulumi.Output<String> productCode,
    pulumi.Output<int>? quantity,
  }) :
      components = pulumi.Input.asOptionalInput<Map<String, String>>(components),
      couponId = pulumi.Input.asOptionalInput<String>(couponId),
      duration = pulumi.Input.asOptionalInput<int>(duration),
      packageVersion = pulumi.Input.asInput<String>(packageVersion),
      payType = pulumi.Input.asOptionalInput<String>(payType),
      pricingCycle = pulumi.Input.asInput<String>(pricingCycle),
      productCode = pulumi.Input.asInput<String>(productCode),
      quantity = pulumi.Input.asOptionalInput<int>(quantity);

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
      components: map['components'] == null ? null : pulumi.Output.create<Map<String, String>>((map['components'] as Map).cast<String, String>()),
      couponId: map['couponId'] == null ? null : pulumi.Output.create<String>(map['couponId'] as String),
      duration: map['duration'] == null ? null : pulumi.Output.create<int>(map['duration'] as int),
      packageVersion: pulumi.Output.create<String>(map['packageVersion'] as String),
      payType: map['payType'] == null ? null : pulumi.Output.create<String>(map['payType'] as String),
      pricingCycle: pulumi.Output.create<String>(map['pricingCycle'] as String),
      productCode: pulumi.Output.create<String>(map['productCode'] as String),
      quantity: map['quantity'] == null ? null : pulumi.Output.create<int>(map['quantity'] as int),
    );
  }
}


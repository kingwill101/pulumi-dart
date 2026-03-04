// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mhub_product_product_args_doc}
/// The set of arguments for Product.
/// {@endtemplate}
/// {@macro pulumi_mhub_product_product_args_doc}
class ProductArgs {
  /// ProductName.
  final pulumi.Input<String> productName;

  /// Creates a new [ProductArgs].
  /// [productName] ProductName.
  ProductArgs({required this.productName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'productName': productName};
  }

  factory ProductArgs.fromMap(Map<String, dynamic> map) {
    return ProductArgs(
      productName: pulumi.Input.fromValue(map['productName'] as String),
    );
  }
}

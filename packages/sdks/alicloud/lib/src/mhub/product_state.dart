// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Product resources.
class ProductState {
  /// ProductName.
  final pulumi.Input<String>? productName;

  /// Creates a new [ProductState].
  /// [productName] ProductName.
  ProductState({
    pulumi.Output<String>? productName,
  }) :
      productName = pulumi.Input.asOptionalInput<String>(productName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productName': ?productName,
    };
  }

  factory ProductState.fromMap(Map<String, dynamic> map) {
    return ProductState(
      productName: map['productName'] == null ? null : pulumi.Output.create<String>(map['productName'] as String),
    );
  }
}


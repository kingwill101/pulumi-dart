// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Product resources.
class ProductState {
  /// ProductName.
  final pulumi.Input<String>? productName;

  /// Creates a new [ProductState].
  /// [productName] ProductName.
  ProductState({
    this.productName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productName': ?productName,
    };
  }

  factory ProductState.fromMap(Map<String, dynamic> map) {
    return ProductState(
      productName: (() { final guardedValue = map['productName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


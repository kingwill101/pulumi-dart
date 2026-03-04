// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Product resources.
class ProductState {
  /// The creation time of the product
  final pulumi.Input<String>? createTime;

  /// The description of the product
  final pulumi.Input<String>? description;

  /// The name of the product
  final pulumi.Input<String>? productName;

  /// The type of the product
  final pulumi.Input<String>? productType;

  /// The provider name of the product
  final pulumi.Input<String>? providerName;

  /// Creates a new [ProductState].
  /// [createTime] The creation time of the product
  /// [description] The description of the product
  /// [productName] The name of the product
  /// [productType] The type of the product
  /// [providerName] The provider name of the product
  ProductState({
    this.createTime,
    this.description,
    this.productName,
    this.productType,
    this.providerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'productName': ?productName,
      'productType': ?productType,
      'providerName': ?providerName,
    };
  }

  factory ProductState.fromMap(Map<String, dynamic> map) {
    return ProductState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productName: (() {
        final guardedValue = map['productName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productType: (() {
        final guardedValue = map['productType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      providerName: (() {
        final guardedValue = map['providerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

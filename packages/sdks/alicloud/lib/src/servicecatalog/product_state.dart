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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      productName: map['productName'] == null ? null : (map['productName']! as String).input(),
      productType: map['productType'] == null ? null : (map['productType']! as String).input(),
      providerName: map['providerName'] == null ? null : (map['providerName']! as String).input(),
    );
  }
}


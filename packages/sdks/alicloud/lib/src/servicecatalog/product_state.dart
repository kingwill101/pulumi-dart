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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? productName,
    pulumi.Output<String>? productType,
    pulumi.Output<String>? providerName,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      productName = pulumi.Input.asOptionalInput<String>(productName),
      productType = pulumi.Input.asOptionalInput<String>(productType),
      providerName = pulumi.Input.asOptionalInput<String>(providerName);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      productName: map['productName'] == null ? null : pulumi.Output.create<String>(map['productName'] as String),
      productType: map['productType'] == null ? null : pulumi.Output.create<String>(map['productType'] as String),
      providerName: map['providerName'] == null ? null : pulumi.Output.create<String>(map['providerName'] as String),
    );
  }
}


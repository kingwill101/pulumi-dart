// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndUserProductsEndUserProduct {
  /// Product creation time.According to ISO8601 standard, UTC time is used in the format: YYYY-MM-DDThh:mm:ssZ.
  final pulumi.Input<String> createTime;
  /// Product description.
  final pulumi.Input<String> description;
  /// Whether there is a default Startup option. Value:-true: There is a default Startup option, and there is no need to fill in the portfolio when starting the product or updating the instance.-false: there is no default Startup option. You must fill in the portfolio when starting the product or updating the instance. For more information about how to obtain the portfolio, see ListLaunchOptions.> If the product is added to only one product portfolio, there will be a default Startup option. If the product is added to multiple product combinations, there will be multiple startup options at the same time, but there is no default Startup option at this time.
  final pulumi.Input<bool> hasDefaultLaunchOption;
  /// ID of product, Its value is the same as `product_id`.
  final pulumi.Input<String> id;
  /// Product ARN.
  final pulumi.Input<String> productArn;
  /// Product ID.
  final pulumi.Input<String> productId;
  /// Product name.
  final pulumi.Input<String> productName;
  /// Type of product.The value is Ros, which indicates the resource orchestration service (ROS).
  final pulumi.Input<String> productType;
  /// Product provider.
  final pulumi.Input<String> providerName;

  /// Creates a new [GetEndUserProductsEndUserProduct].
  /// [createTime] Product creation time.According to ISO8601 standard, UTC time is used in the format: YYYY-MM-DDThh:mm:ssZ.
  /// [description] Product description.
  /// [hasDefaultLaunchOption] Whether there is a default Startup option. Value:-true: There is a default Startup option, and there is no need to fill in the portfolio when starting the product or updating the instance.-false: there is no default Startup option. You must fill in the portfolio when starting the product or updating the instance. For more information about how to obtain the portfolio, see ListLaunchOptions.> If the product is added to only one product portfolio, there will be a default Startup option. If the product is added to multiple product combinations, there will be multiple startup options at the same time, but there is no default Startup option at this time.
  /// [id] ID of product, Its value is the same as `product_id`.
  /// [productArn] Product ARN.
  /// [productId] Product ID.
  /// [productName] Product name.
  /// [productType] Type of product.The value is Ros, which indicates the resource orchestration service (ROS).
  /// [providerName] Product provider.
  GetEndUserProductsEndUserProduct({
    required this.createTime,
    required this.description,
    required this.hasDefaultLaunchOption,
    required this.id,
    required this.productArn,
    required this.productId,
    required this.productName,
    required this.productType,
    required this.providerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'hasDefaultLaunchOption': hasDefaultLaunchOption,
      'id': id,
      'productArn': productArn,
      'productId': productId,
      'productName': productName,
      'productType': productType,
      'providerName': providerName,
    };
  }

  factory GetEndUserProductsEndUserProduct.fromMap(Map<String, dynamic> map) {
    return GetEndUserProductsEndUserProduct(
      createTime: (map['createTime'] as String).input(),
      description: (map['description'] as String).input(),
      hasDefaultLaunchOption: (map['hasDefaultLaunchOption'] as bool).input(),
      id: (map['id'] as String).input(),
      productArn: (map['productArn'] as String).input(),
      productId: (map['productId'] as String).input(),
      productName: (map['productName'] as String).input(),
      productType: (map['productType'] as String).input(),
      providerName: (map['providerName'] as String).input(),
    );
  }
}


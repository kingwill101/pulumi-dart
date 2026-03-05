// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProductAsEndUsersUser {
  /// Product creation time.According to ISO8601 standard, UTC time is used in the format: YYYY-MM-DDThh:mm:ssZ.
  final pulumi.Input<String> createTime;
  /// Product description.
  final pulumi.Input<String> description;
  /// Whether there is a default Startup option. Value:-true: There is a default Startup option, and there is no need to fill in the portfolio when starting the product or updating the instance.-false: there is no default Startup option. You must fill in the portfolio when starting the product or updating the instance. &gt; If the product is added to only one product portfolio, there will be a default Startup option. If the product is added to multiple product combinations, there will be multiple startup options at the same time, but there is no default Startup option at this time.
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

  /// Creates a new [GetProductAsEndUsersUser].
  /// [createTime] Product creation time.According to ISO8601 standard, UTC time is used in the format: YYYY-MM-DDThh:mm:ssZ.
  /// [description] Product description.
  /// [hasDefaultLaunchOption] Whether there is a default Startup option. Value:-true: There is a default Startup option, and there is no need to fill in the portfolio when starting the product or updating the instance.-false: there is no default Startup option. You must fill in the portfolio when starting the product or updating the instance. &gt; If the product is added to only one product portfolio, there will be a default Startup option. If the product is added to multiple product combinations, there will be multiple startup options at the same time, but there is no default Startup option at this time.
  /// [id] ID of product, Its value is the same as `product_id`.
  /// [productArn] Product ARN.
  /// [productId] Product ID.
  /// [productName] Product name.
  /// [productType] Type of product.The value is Ros, which indicates the resource orchestration service (ROS).
  /// [providerName] Product provider.
  GetProductAsEndUsersUser({
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

  factory GetProductAsEndUsersUser.fromMap(Map<String, dynamic> map) {
    return GetProductAsEndUsersUser(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      hasDefaultLaunchOption: pulumi.Input.fromValue(map['hasDefaultLaunchOption'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      productArn: pulumi.Input.fromValue(map['productArn'] as String),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      productName: pulumi.Input.fromValue(map['productName'] as String),
      productType: pulumi.Input.fromValue(map['productType'] as String),
      providerName: pulumi.Input.fromValue(map['providerName'] as String),
    );
  }
}


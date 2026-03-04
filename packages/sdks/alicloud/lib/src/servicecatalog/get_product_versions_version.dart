// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProductVersionsVersion {
  /// Whether the version is activated
  final pulumi.Input<bool> active;

  /// The creation time of the resource
  final pulumi.Input<String> createTime;

  /// Version description
  final pulumi.Input<String> description;

  /// Administrator guidance
  final pulumi.Input<String> guidance;

  /// ID of product version.
  final pulumi.Input<String> id;

  /// Product ID
  final pulumi.Input<String> productId;

  /// The first ID of the resource
  final pulumi.Input<String> productVersionId;

  /// The name of the resource
  final pulumi.Input<String> productVersionName;

  /// Template Type
  final pulumi.Input<String> templateType;

  /// Template URL
  final pulumi.Input<String> templateUrl;

  /// Creates a new [GetProductVersionsVersion].
  /// [active] Whether the version is activated
  /// [createTime] The creation time of the resource
  /// [description] Version description
  /// [guidance] Administrator guidance
  /// [id] ID of product version.
  /// [productId] Product ID
  /// [productVersionId] The first ID of the resource
  /// [productVersionName] The name of the resource
  /// [templateType] Template Type
  /// [templateUrl] Template URL
  GetProductVersionsVersion({
    required this.active,
    required this.createTime,
    required this.description,
    required this.guidance,
    required this.id,
    required this.productId,
    required this.productVersionId,
    required this.productVersionName,
    required this.templateType,
    required this.templateUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'createTime': createTime,
      'description': description,
      'guidance': guidance,
      'id': id,
      'productId': productId,
      'productVersionId': productVersionId,
      'productVersionName': productVersionName,
      'templateType': templateType,
      'templateUrl': templateUrl,
    };
  }

  factory GetProductVersionsVersion.fromMap(Map<String, dynamic> map) {
    return GetProductVersionsVersion(
      active: pulumi.Input.fromValue(map['active'] as bool),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      guidance: pulumi.Input.fromValue(map['guidance'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      productVersionId: pulumi.Input.fromValue(
        map['productVersionId'] as String,
      ),
      productVersionName: pulumi.Input.fromValue(
        map['productVersionName'] as String,
      ),
      templateType: pulumi.Input.fromValue(map['templateType'] as String),
      templateUrl: pulumi.Input.fromValue(map['templateUrl'] as String),
    );
  }
}

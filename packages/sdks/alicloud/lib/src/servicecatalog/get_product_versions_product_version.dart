// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProductVersionsProductVersion {
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

  /// Creates a new [GetProductVersionsProductVersion].
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
  GetProductVersionsProductVersion({
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

  factory GetProductVersionsProductVersion.fromMap(Map<String, dynamic> map) {
    return GetProductVersionsProductVersion(
      active: (map['active'] as bool).input(),
      createTime: (map['createTime'] as String).input(),
      description: (map['description'] as String).input(),
      guidance: (map['guidance'] as String).input(),
      id: (map['id'] as String).input(),
      productId: (map['productId'] as String).input(),
      productVersionId: (map['productVersionId'] as String).input(),
      productVersionName: (map['productVersionName'] as String).input(),
      templateType: (map['templateType'] as String).input(),
      templateUrl: (map['templateUrl'] as String).input(),
    );
  }
}


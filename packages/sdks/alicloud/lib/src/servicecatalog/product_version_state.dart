// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProductVersion resources.
class ProductVersionState {
  /// Whether the version is activated
  final pulumi.Input<bool>? active;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Version description
  final pulumi.Input<String>? description;
  /// Administrator guidance
  final pulumi.Input<String>? guidance;
  /// Product ID
  final pulumi.Input<String>? productId;
  /// The name of the resource
  final pulumi.Input<String>? productVersionName;
  /// Template Type
  final pulumi.Input<String>? templateType;
  /// Template URL
  final pulumi.Input<String>? templateUrl;

  /// Creates a new [ProductVersionState].
  /// [active] Whether the version is activated
  /// [createTime] The creation time of the resource
  /// [description] Version description
  /// [guidance] Administrator guidance
  /// [productId] Product ID
  /// [productVersionName] The name of the resource
  /// [templateType] Template Type
  /// [templateUrl] Template URL
  ProductVersionState({
    this.active,
    this.createTime,
    this.description,
    this.guidance,
    this.productId,
    this.productVersionName,
    this.templateType,
    this.templateUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'createTime': ?createTime,
      'description': ?description,
      'guidance': ?guidance,
      'productId': ?productId,
      'productVersionName': ?productVersionName,
      'templateType': ?templateType,
      'templateUrl': ?templateUrl,
    };
  }

  factory ProductVersionState.fromMap(Map<String, dynamic> map) {
    return ProductVersionState(
      active: map['active'] == null ? null : (map['active']! as bool).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      guidance: map['guidance'] == null ? null : (map['guidance']! as String).input(),
      productId: map['productId'] == null ? null : (map['productId']! as String).input(),
      productVersionName: map['productVersionName'] == null ? null : (map['productVersionName']! as String).input(),
      templateType: map['templateType'] == null ? null : (map['templateType']! as String).input(),
      templateUrl: map['templateUrl'] == null ? null : (map['templateUrl']! as String).input(),
    );
  }
}


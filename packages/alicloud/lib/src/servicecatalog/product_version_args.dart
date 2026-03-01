// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_product_version_product_version_args_doc}
/// The set of arguments for ProductVersion.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_product_version_product_version_args_doc}
class ProductVersionArgs {
  /// Whether the version is activated
  final pulumi.Input<bool>? active;
  /// Version description
  final pulumi.Input<String>? description;
  /// Administrator guidance
  final pulumi.Input<String>? guidance;
  /// Product ID
  final pulumi.Input<String> productId;
  /// The name of the resource
  final pulumi.Input<String> productVersionName;
  /// Template Type
  final pulumi.Input<String> templateType;
  /// Template URL
  final pulumi.Input<String> templateUrl;

  /// Creates a new [ProductVersionArgs].
  /// [active] Whether the version is activated
  /// [description] Version description
  /// [guidance] Administrator guidance
  /// [productId] Product ID
  /// [productVersionName] The name of the resource
  /// [templateType] Template Type
  /// [templateUrl] Template URL
  ProductVersionArgs({
    bool? active,
    String? description,
    String? guidance,
    required String productId,
    required String productVersionName,
    required String templateType,
    required String templateUrl,
  }) :
      active = pulumi.Input.asOptionalInput<bool>(active),
      description = pulumi.Input.asOptionalInput<String>(description),
      guidance = pulumi.Input.asOptionalInput<String>(guidance),
      productId = pulumi.Input.asInput<String>(productId),
      productVersionName = pulumi.Input.asInput<String>(productVersionName),
      templateType = pulumi.Input.asInput<String>(templateType),
      templateUrl = pulumi.Input.asInput<String>(templateUrl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'description': ?description,
      'guidance': ?guidance,
      'productId': productId,
      'productVersionName': productVersionName,
      'templateType': templateType,
      'templateUrl': templateUrl,
    };
  }

  factory ProductVersionArgs.fromMap(Map<String, dynamic> map) {
    return ProductVersionArgs(
      active: map['active'] == null ? null : map['active'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      guidance: map['guidance'] == null ? null : map['guidance'] as String,
      productId: map['productId'] as String,
      productVersionName: map['productVersionName'] as String,
      templateType: map['templateType'] as String,
      templateUrl: map['templateUrl'] as String,
    );
  }
}


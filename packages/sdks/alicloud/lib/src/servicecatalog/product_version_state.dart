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
    pulumi.Output<bool>? active,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? guidance,
    pulumi.Output<String>? productId,
    pulumi.Output<String>? productVersionName,
    pulumi.Output<String>? templateType,
    pulumi.Output<String>? templateUrl,
  }) :
      active = pulumi.Input.asOptionalInput<bool>(active),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      guidance = pulumi.Input.asOptionalInput<String>(guidance),
      productId = pulumi.Input.asOptionalInput<String>(productId),
      productVersionName = pulumi.Input.asOptionalInput<String>(productVersionName),
      templateType = pulumi.Input.asOptionalInput<String>(templateType),
      templateUrl = pulumi.Input.asOptionalInput<String>(templateUrl);

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
      active: map['active'] == null ? null : pulumi.Output.create<bool>(map['active'] as bool),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      guidance: map['guidance'] == null ? null : pulumi.Output.create<String>(map['guidance'] as String),
      productId: map['productId'] == null ? null : pulumi.Output.create<String>(map['productId'] as String),
      productVersionName: map['productVersionName'] == null ? null : pulumi.Output.create<String>(map['productVersionName'] as String),
      templateType: map['templateType'] == null ? null : pulumi.Output.create<String>(map['templateType'] as String),
      templateUrl: map['templateUrl'] == null ? null : pulumi.Output.create<String>(map['templateUrl'] as String),
    );
  }
}


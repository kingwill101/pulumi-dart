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
      active: (() {
        final guardedValue = map['active'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
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
      guidance: (() {
        final guardedValue = map['guidance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productId: (() {
        final guardedValue = map['productId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productVersionName: (() {
        final guardedValue = map['productVersionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateType: (() {
        final guardedValue = map['templateType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateUrl: (() {
        final guardedValue = map['templateUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

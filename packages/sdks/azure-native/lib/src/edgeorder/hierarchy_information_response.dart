// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Holds details about product hierarchy information.
class HierarchyInformationResponse {
  /// Represents Model Display Name.
  final pulumi.Input<String>? configurationIdDisplayName;

  /// Represents configuration name that uniquely identifies configuration.
  final pulumi.Input<String>? configurationName;

  /// Represents product family name that uniquely identifies product family.
  final pulumi.Input<String>? productFamilyName;

  /// Represents product line name that uniquely identifies product line.
  final pulumi.Input<String>? productLineName;

  /// Represents product name that uniquely identifies product.
  final pulumi.Input<String>? productName;

  /// Creates a new [HierarchyInformationResponse].
  /// [configurationIdDisplayName] Represents Model Display Name.
  /// [configurationName] Represents configuration name that uniquely identifies configuration.
  /// [productFamilyName] Represents product family name that uniquely identifies product family.
  /// [productLineName] Represents product line name that uniquely identifies product line.
  /// [productName] Represents product name that uniquely identifies product.
  HierarchyInformationResponse({
    this.configurationIdDisplayName,
    this.configurationName,
    this.productFamilyName,
    this.productLineName,
    this.productName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationIdDisplayName': ?configurationIdDisplayName,
      'configurationName': ?configurationName,
      'productFamilyName': ?productFamilyName,
      'productLineName': ?productLineName,
      'productName': ?productName,
    };
  }

  factory HierarchyInformationResponse.fromMap(Map<String, dynamic> map) {
    return HierarchyInformationResponse(
      configurationIdDisplayName: (() {
        final guardedValue = map['configurationIdDisplayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      configurationName: (() {
        final guardedValue = map['configurationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productFamilyName: (() {
        final guardedValue = map['productFamilyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productLineName: (() {
        final guardedValue = map['productLineName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productName: (() {
        final guardedValue = map['productName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

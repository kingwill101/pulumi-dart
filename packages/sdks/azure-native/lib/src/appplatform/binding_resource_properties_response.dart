// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Binding resource properties payload
class BindingResourcePropertiesResponse {
  /// Binding parameters of the Binding resource
  final pulumi.Input<Map<String, String>>? bindingParameters;

  /// Creation time of the Binding resource
  final pulumi.Input<String> createdAt;

  /// The generated Spring Boot property file for this binding. The secret will be deducted.
  final pulumi.Input<String> generatedProperties;

  /// The key of the bound resource
  final pulumi.Input<String>? key;

  /// The Azure resource id of the bound resource
  final pulumi.Input<String>? resourceId;

  /// The name of the bound resource
  final pulumi.Input<String> resourceName;

  /// The standard Azure resource type of the bound resource
  final pulumi.Input<String> resourceType;

  /// Update time of the Binding resource
  final pulumi.Input<String> updatedAt;

  /// Creates a new [BindingResourcePropertiesResponse].
  /// [bindingParameters] Binding parameters of the Binding resource
  /// [createdAt] Creation time of the Binding resource
  /// [generatedProperties] The generated Spring Boot property file for this binding. The secret will be deducted.
  /// [key] The key of the bound resource
  /// [resourceId] The Azure resource id of the bound resource
  /// [resourceName] The name of the bound resource
  /// [resourceType] The standard Azure resource type of the bound resource
  /// [updatedAt] Update time of the Binding resource
  BindingResourcePropertiesResponse({
    this.bindingParameters,
    required this.createdAt,
    required this.generatedProperties,
    this.key,
    this.resourceId,
    required this.resourceName,
    required this.resourceType,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingParameters': ?bindingParameters,
      'createdAt': createdAt,
      'generatedProperties': generatedProperties,
      'key': ?key,
      'resourceId': ?resourceId,
      'resourceName': resourceName,
      'resourceType': resourceType,
      'updatedAt': updatedAt,
    };
  }

  factory BindingResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BindingResourcePropertiesResponse(
      bindingParameters: (() {
        final guardedValue = map['bindingParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      generatedProperties: pulumi.Input.fromValue(
        map['generatedProperties'] as String,
      ),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}

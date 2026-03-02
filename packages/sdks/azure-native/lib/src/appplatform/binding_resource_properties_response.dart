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
      bindingParameters: map['bindingParameters'] == null ? null : ((map['bindingParameters'] as Map).cast<String, String>()).input(),
      createdAt: (map['createdAt'] as String).input(),
      generatedProperties: (map['generatedProperties'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
      updatedAt: (map['updatedAt'] as String).input(),
    );
  }
}


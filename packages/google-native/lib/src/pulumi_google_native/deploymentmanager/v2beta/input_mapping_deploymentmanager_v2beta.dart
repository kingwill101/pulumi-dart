// ignore_for_file: unused_element, unnecessary_cast

import 'input_mapping_location_deploymentmanager_v2beta.dart';

/// InputMapping creates a 'virtual' property that will be injected into the properties before sending the request to the underlying API.
class InputMappingDeploymentmanagerV2beta {
  /// The name of the field that is going to be injected.
  final String? fieldName;

  /// The location where this mapping applies.
  final InputMappingLocationDeploymentmanagerV2beta? location;

  /// Regex to evaluate on method to decide if input applies.
  final String? methodMatch;

  /// A jsonPath expression to select an element.
  final String? value;

  InputMappingDeploymentmanagerV2beta({
    this.fieldName,
    this.location,
    this.methodMatch,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldNameValue = fieldName;
    if (fieldNameValue != null) {
      map['fieldName'] = fieldNameValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue.value;
    }
    final methodMatchValue = methodMatch;
    if (methodMatchValue != null) {
      map['methodMatch'] = methodMatchValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory InputMappingDeploymentmanagerV2beta.fromMap(
      Map<String, dynamic> map) {
    return InputMappingDeploymentmanagerV2beta(
      fieldName: map['fieldName'] == null ? null : map['fieldName'] as String,
      location: map['location'] == null
          ? null
          : InputMappingLocationDeploymentmanagerV2beta.fromValue(
              map['location'] as String),
      methodMatch:
          map['methodMatch'] == null ? null : map['methodMatch'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

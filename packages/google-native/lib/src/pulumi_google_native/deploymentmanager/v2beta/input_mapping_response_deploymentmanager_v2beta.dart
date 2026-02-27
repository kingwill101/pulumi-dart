// ignore_for_file: unused_element, unnecessary_cast

/// InputMapping creates a 'virtual' property that will be injected into the properties before sending the request to the underlying API.
class InputMappingResponseDeploymentmanagerV2beta {
  /// The name of the field that is going to be injected.
  final String fieldName;

  /// The location where this mapping applies.
  final String location;

  /// Regex to evaluate on method to decide if input applies.
  final String methodMatch;

  /// A jsonPath expression to select an element.
  final String value;

  InputMappingResponseDeploymentmanagerV2beta({
    required this.fieldName,
    required this.location,
    required this.methodMatch,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldName'] = fieldName;
    map['location'] = location;
    map['methodMatch'] = methodMatch;
    map['value'] = value;
    return map;
  }

  factory InputMappingResponseDeploymentmanagerV2beta.fromMap(
      Map<String, dynamic> map) {
    return InputMappingResponseDeploymentmanagerV2beta(
      fieldName: map['fieldName'] as String,
      location: map['location'] as String,
      methodMatch: map['methodMatch'] as String,
      value: map['value'] as String,
    );
  }
}

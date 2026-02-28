// ignore_for_file: unused_element, unnecessary_cast


/// InputMapping creates a 'virtual' property that will be injected into the properties before sending the request to the underlying API.
class InputMappingResponse {
  /// The name of the field that is going to be injected.
  final String fieldName;
  /// The location where this mapping applies.
  final String location;
  /// Regex to evaluate on method to decide if input applies.
  final String methodMatch;
  /// A jsonPath expression to select an element.
  final String value;

  /// Creates a new [InputMappingResponse].
  /// [fieldName] The name of the field that is going to be injected.
  /// [location] The location where this mapping applies.
  /// [methodMatch] Regex to evaluate on method to decide if input applies.
  /// [value] A jsonPath expression to select an element.
  InputMappingResponse({
    required this.fieldName,
    required this.location,
    required this.methodMatch,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldName': fieldName,
      'location': location,
      'methodMatch': methodMatch,
      'value': value,
    };
  }

  factory InputMappingResponse.fromMap(Map<String, dynamic> map) {
    return InputMappingResponse(
      fieldName: map['fieldName'] as String,
      location: map['location'] as String,
      methodMatch: map['methodMatch'] as String,
      value: map['value'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// The check name availability specifications.
class ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecificationsResponse {
  /// Whether default validation is enabled.
  final bool? enableDefaultValidation;
  /// The resource types with custom validation.
  final List<String>? resourceTypesWithCustomValidation;

  /// Creates a new [ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecificationsResponse].
  /// [enableDefaultValidation] Whether default validation is enabled.
  /// [resourceTypesWithCustomValidation] The resource types with custom validation.
  ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecificationsResponse({
    this.enableDefaultValidation,
    this.resourceTypesWithCustomValidation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDefaultValidation': ?enableDefaultValidation,
      'resourceTypesWithCustomValidation': ?resourceTypesWithCustomValidation,
    };
  }

  factory ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecificationsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecificationsResponse(
      enableDefaultValidation: map['enableDefaultValidation'] == null ? null : map['enableDefaultValidation'] as bool,
      resourceTypesWithCustomValidation: map['resourceTypesWithCustomValidation'] == null ? null : (map['resourceTypesWithCustomValidation'] as List).cast<String>(),
    );
  }
}


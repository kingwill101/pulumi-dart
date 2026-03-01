// ignore_for_file: unused_element, unnecessary_cast


/// Analytical storage specific properties.
class AnalyticalStorageConfigurationResponse {
  /// Describes the types of schema for analytical storage.
  final String? schemaType;

  /// Creates a new [AnalyticalStorageConfigurationResponse].
  /// [schemaType] Describes the types of schema for analytical storage.
  AnalyticalStorageConfigurationResponse({
    this.schemaType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaType': ?schemaType,
    };
  }

  factory AnalyticalStorageConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AnalyticalStorageConfigurationResponse(
      schemaType: map['schemaType'] == null ? null : map['schemaType'] as String,
    );
  }
}


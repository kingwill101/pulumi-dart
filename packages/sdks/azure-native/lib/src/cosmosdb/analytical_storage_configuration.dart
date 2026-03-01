// ignore_for_file: unused_element, unnecessary_cast


/// Analytical storage specific properties.
class AnalyticalStorageConfiguration {
  /// Describes the types of schema for analytical storage.
  final String? schemaType;

  /// Creates a new [AnalyticalStorageConfiguration].
  /// [schemaType] Describes the types of schema for analytical storage.
  AnalyticalStorageConfiguration({
    this.schemaType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaType': ?schemaType,
    };
  }

  factory AnalyticalStorageConfiguration.fromMap(Map<String, dynamic> map) {
    return AnalyticalStorageConfiguration(
      schemaType: map['schemaType'] == null ? null : map['schemaType'] as String,
    );
  }
}


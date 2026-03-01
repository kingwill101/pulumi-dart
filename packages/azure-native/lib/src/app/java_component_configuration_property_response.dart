// ignore_for_file: unused_element, unnecessary_cast


/// Configuration properties for a Java Component
class JavaComponentConfigurationPropertyResponse {
  /// The name of the property
  final String? propertyName;
  /// The value of the property
  final String? value;

  /// Creates a new [JavaComponentConfigurationPropertyResponse].
  /// [propertyName] The name of the property
  /// [value] The value of the property
  JavaComponentConfigurationPropertyResponse({
    this.propertyName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propertyName': ?propertyName,
      'value': ?value,
    };
  }

  factory JavaComponentConfigurationPropertyResponse.fromMap(Map<String, dynamic> map) {
    return JavaComponentConfigurationPropertyResponse(
      propertyName: map['propertyName'] == null ? null : map['propertyName'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// Configuration properties for a .NET Component
class DotNetComponentConfigurationPropertyResponse {
  /// The name of the property
  final String? propertyName;
  /// The value of the property
  final String? value;

  /// Creates a new [DotNetComponentConfigurationPropertyResponse].
  /// [propertyName] The name of the property
  /// [value] The value of the property
  DotNetComponentConfigurationPropertyResponse({
    this.propertyName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propertyName': ?propertyName,
      'value': ?value,
    };
  }

  factory DotNetComponentConfigurationPropertyResponse.fromMap(Map<String, dynamic> map) {
    return DotNetComponentConfigurationPropertyResponse(
      propertyName: map['propertyName'] == null ? null : map['propertyName'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}


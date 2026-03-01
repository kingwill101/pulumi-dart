// ignore_for_file: unused_element, unnecessary_cast


/// Dynamic Configuration Properties
class DynamicConfigurationVersionProperties {
  /// Values of configuration version
  final String values;

  /// Creates a new [DynamicConfigurationVersionProperties].
  /// [values] Values of configuration version
  DynamicConfigurationVersionProperties({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory DynamicConfigurationVersionProperties.fromMap(Map<String, dynamic> map) {
    return DynamicConfigurationVersionProperties(
      values: map['values'] as String,
    );
  }
}


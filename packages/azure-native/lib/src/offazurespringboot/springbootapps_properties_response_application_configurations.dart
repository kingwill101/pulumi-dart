// ignore_for_file: unused_element, unnecessary_cast


class SpringbootappsPropertiesResponseApplicationConfigurations {
  /// The application config file name.
  final String key;
  /// The application config file content, only contains config keys.
  final String? value;

  /// Creates a new [SpringbootappsPropertiesResponseApplicationConfigurations].
  /// [key] The application config file name.
  /// [value] The application config file content, only contains config keys.
  SpringbootappsPropertiesResponseApplicationConfigurations({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': ?value,
    };
  }

  factory SpringbootappsPropertiesResponseApplicationConfigurations.fromMap(Map<String, dynamic> map) {
    return SpringbootappsPropertiesResponseApplicationConfigurations(
      key: map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}


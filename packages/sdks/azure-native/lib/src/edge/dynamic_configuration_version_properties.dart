// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dynamic Configuration Properties
class DynamicConfigurationVersionProperties {
  /// Values of configuration version
  final pulumi.Input<String> values;

  /// Creates a new [DynamicConfigurationVersionProperties].
  /// [values] Values of configuration version
  const DynamicConfigurationVersionProperties({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory DynamicConfigurationVersionProperties.fromMap(Map<String, dynamic> map) {
    return DynamicConfigurationVersionProperties(
      values: pulumi.Input.fromValue(map['values'] as String),
    );
  }
}


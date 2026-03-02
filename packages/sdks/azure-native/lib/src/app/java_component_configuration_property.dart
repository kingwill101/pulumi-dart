// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration properties for a Java Component
class JavaComponentConfigurationProperty {
  /// The name of the property
  final pulumi.Input<String>? propertyName;
  /// The value of the property
  final pulumi.Input<String>? value;

  /// Creates a new [JavaComponentConfigurationProperty].
  /// [propertyName] The name of the property
  /// [value] The value of the property
  JavaComponentConfigurationProperty({
    this.propertyName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propertyName': ?propertyName,
      'value': ?value,
    };
  }

  factory JavaComponentConfigurationProperty.fromMap(Map<String, dynamic> map) {
    return JavaComponentConfigurationProperty(
      propertyName: map['propertyName'] == null ? null : (map['propertyName'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}


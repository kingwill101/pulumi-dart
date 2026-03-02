// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration properties for a .NET Component
class DotNetComponentConfigurationProperty {
  /// The name of the property
  final pulumi.Input<String>? propertyName;
  /// The value of the property
  final pulumi.Input<String>? value;

  /// Creates a new [DotNetComponentConfigurationProperty].
  /// [propertyName] The name of the property
  /// [value] The value of the property
  DotNetComponentConfigurationProperty({
    this.propertyName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propertyName': ?propertyName,
      'value': ?value,
    };
  }

  factory DotNetComponentConfigurationProperty.fromMap(Map<String, dynamic> map) {
    return DotNetComponentConfigurationProperty(
      propertyName: map['propertyName'] == null ? null : (map['propertyName'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}


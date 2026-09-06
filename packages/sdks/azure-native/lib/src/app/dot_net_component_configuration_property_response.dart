// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration properties for a .NET Component
class DotNetComponentConfigurationPropertyResponse {
  /// The name of the property
  final pulumi.Input<String?>? propertyName;
  /// The value of the property
  final pulumi.Input<String?>? value;

  /// Creates a new [DotNetComponentConfigurationPropertyResponse].
  /// [propertyName] The name of the property
  /// [value] The value of the property
  const DotNetComponentConfigurationPropertyResponse({
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
      propertyName: (() { final guardedValue = map['propertyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../environment_properties_property/environment_properties_property.dart';

class EnvironmentProperties {
  /// List of all properties in the object.
  /// Structure is documented below.
  final List<EnvironmentPropertiesProperty>? properties;

  EnvironmentProperties({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] =
          Input.encodeList<EnvironmentPropertiesProperty, Map<String, dynamic>>(
              propertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnvironmentProperties.fromMap(Map<String, dynamic> map) {
    return EnvironmentProperties(
      properties: map['properties'] == null
          ? null
          : Input.decodeList<EnvironmentPropertiesProperty>(
              map['properties'],
              (value) => EnvironmentPropertiesProperty.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

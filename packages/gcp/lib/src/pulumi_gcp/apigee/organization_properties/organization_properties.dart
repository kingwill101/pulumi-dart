// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../organization_properties_property/organization_properties_property.dart';

class OrganizationProperties {
  /// List of all properties in the object.
  /// Structure is documented below.
  final List<OrganizationPropertiesProperty>? properties;

  OrganizationProperties({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = pulumi.Input.encodeList<
          OrganizationPropertiesProperty,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory OrganizationProperties.fromMap(Map<String, dynamic> map) {
    return OrganizationProperties(
      properties: map['properties'] == null
          ? null
          : pulumi.Input.decodeList<OrganizationPropertiesProperty>(
              map['properties'],
              (value) => OrganizationPropertiesProperty.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

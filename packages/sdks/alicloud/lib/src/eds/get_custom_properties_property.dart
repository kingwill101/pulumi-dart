// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_properties_property_property_value.dart';

class GetCustomPropertiesProperty {
  /// The first ID of the resource.
  final pulumi.Input<String> customPropertyId;
  /// The ID of the Custom Property.
  final pulumi.Input<String> id;
  /// The Custom attribute key.
  final pulumi.Input<String> propertyKey;
  /// Custom attribute sets the value of.
  final pulumi.Input<List<GetCustomPropertiesPropertyPropertyValue>> propertyValues;

  /// Creates a new [GetCustomPropertiesProperty].
  /// [customPropertyId] The first ID of the resource.
  /// [id] The ID of the Custom Property.
  /// [propertyKey] The Custom attribute key.
  /// [propertyValues] Custom attribute sets the value of.
  GetCustomPropertiesProperty({
    required this.customPropertyId,
    required this.id,
    required this.propertyKey,
    required this.propertyValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPropertyId': customPropertyId,
      'id': id,
      'propertyKey': propertyKey,
      'propertyValues': pulumi.Input.mapInputValue<List<GetCustomPropertiesPropertyPropertyValue>, List<Map<String, dynamic>>>(propertyValues, (value) => pulumi.Input.encodeList<GetCustomPropertiesPropertyPropertyValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCustomPropertiesProperty.fromMap(Map<String, dynamic> map) {
    return GetCustomPropertiesProperty(
      customPropertyId: (map['customPropertyId'] as String).input(),
      id: (map['id'] as String).input(),
      propertyKey: (map['propertyKey'] as String).input(),
      propertyValues: (pulumi.Input.decodeList<GetCustomPropertiesPropertyPropertyValue>(map['propertyValues'], (value) => GetCustomPropertiesPropertyPropertyValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


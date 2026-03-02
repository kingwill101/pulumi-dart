// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomPropertiesPropertyPropertyValue {
  /// The value of an attribute.
  final pulumi.Input<String> propertyValue;
  /// The value of an attribute id.
  final pulumi.Input<String> propertyValueId;

  /// Creates a new [GetCustomPropertiesPropertyPropertyValue].
  /// [propertyValue] The value of an attribute.
  /// [propertyValueId] The value of an attribute id.
  GetCustomPropertiesPropertyPropertyValue({
    required this.propertyValue,
    required this.propertyValueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propertyValue': propertyValue,
      'propertyValueId': propertyValueId,
    };
  }

  factory GetCustomPropertiesPropertyPropertyValue.fromMap(Map<String, dynamic> map) {
    return GetCustomPropertiesPropertyPropertyValue(
      propertyValue: (map['propertyValue'] as String).input(),
      propertyValueId: (map['propertyValueId'] as String).input(),
    );
  }
}


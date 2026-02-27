// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_apigee_v1_attribute.dart';

class GoogleCloudApigeeV1ReportProperty {
  /// name of the property
  final String? property;

  /// property values
  final List<GoogleCloudApigeeV1Attribute>? value;

  GoogleCloudApigeeV1ReportProperty({
    this.property,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final propertyValue = property;
    if (propertyValue != null) {
      map['property'] = propertyValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] =
          Input.encodeList<GoogleCloudApigeeV1Attribute, Map<String, dynamic>>(
              valueValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudApigeeV1ReportProperty.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1ReportProperty(
      property: map['property'] == null ? null : map['property'] as String,
      value: map['value'] == null
          ? null
          : Input.decodeList<GoogleCloudApigeeV1Attribute>(
              map['value'],
              (value) => GoogleCloudApigeeV1Attribute.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

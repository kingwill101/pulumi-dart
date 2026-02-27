// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_contentwarehouse_v1_property.dart';

/// Property values.
class GoogleCloudContentwarehouseV1PropertyArray {
  /// List of property values.
  final List<GoogleCloudContentwarehouseV1Property>? properties;

  GoogleCloudContentwarehouseV1PropertyArray({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = Input.encodeList<
          GoogleCloudContentwarehouseV1Property,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudContentwarehouseV1PropertyArray.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1PropertyArray(
      properties: map['properties'] == null
          ? null
          : Input.decodeList<GoogleCloudContentwarehouseV1Property>(
              map['properties'],
              (value) => GoogleCloudContentwarehouseV1Property.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_contentwarehouse_v1_property_definition.dart';

/// Configurations for a nested structured data property.
class GoogleCloudContentwarehouseV1PropertyTypeOptions {
  /// List of property definitions.
  final List<GoogleCloudContentwarehouseV1PropertyDefinition>
      propertyDefinitions;

  GoogleCloudContentwarehouseV1PropertyTypeOptions({
    required this.propertyDefinitions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['propertyDefinitions'] = Input.encodeList<
        GoogleCloudContentwarehouseV1PropertyDefinition,
        Map<String, dynamic>>(propertyDefinitions, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudContentwarehouseV1PropertyTypeOptions.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1PropertyTypeOptions(
      propertyDefinitions:
          Input.decodeList<GoogleCloudContentwarehouseV1PropertyDefinition>(
              map['propertyDefinitions'],
              (value) =>
                  GoogleCloudContentwarehouseV1PropertyDefinition.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}

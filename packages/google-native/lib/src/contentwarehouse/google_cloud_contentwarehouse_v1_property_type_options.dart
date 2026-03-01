// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_property_definition.dart';

/// Configurations for a nested structured data property.
class GoogleCloudContentwarehouseV1PropertyTypeOptions {
  /// List of property definitions.
  final List<GoogleCloudContentwarehouseV1PropertyDefinition>
  propertyDefinitions;

  /// Creates a new [GoogleCloudContentwarehouseV1PropertyTypeOptions].
  /// [propertyDefinitions] List of property definitions.
  GoogleCloudContentwarehouseV1PropertyTypeOptions({
    required this.propertyDefinitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propertyDefinitions':
          pulumi.Input.encodeList<
            GoogleCloudContentwarehouseV1PropertyDefinition,
            Map<String, dynamic>
          >(propertyDefinitions, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContentwarehouseV1PropertyTypeOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1PropertyTypeOptions(
      propertyDefinitions:
          pulumi.Input.decodeList<
            GoogleCloudContentwarehouseV1PropertyDefinition
          >(
            map['propertyDefinitions'],
            (value) => GoogleCloudContentwarehouseV1PropertyDefinition.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}

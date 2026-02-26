// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_contentwarehouse_v1_property_definition_response.dart';

/// Configurations for a nested structured data property.
class GoogleCloudContentwarehouseV1PropertyTypeOptionsResponse {
  /// List of property definitions.
  final List<GoogleCloudContentwarehouseV1PropertyDefinitionResponse>
      propertyDefinitions;

  GoogleCloudContentwarehouseV1PropertyTypeOptionsResponse({
    required this.propertyDefinitions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['propertyDefinitions'] = Input.encodeList<
        GoogleCloudContentwarehouseV1PropertyDefinitionResponse,
        Map<String, dynamic>>(propertyDefinitions, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudContentwarehouseV1PropertyTypeOptionsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1PropertyTypeOptionsResponse(
      propertyDefinitions: Input.decodeList<
              GoogleCloudContentwarehouseV1PropertyDefinitionResponse>(
          map['propertyDefinitions'],
          (value) =>
              GoogleCloudContentwarehouseV1PropertyDefinitionResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

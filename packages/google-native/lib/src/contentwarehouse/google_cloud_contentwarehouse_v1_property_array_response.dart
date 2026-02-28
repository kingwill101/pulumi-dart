// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_property_response.dart';

/// Property values.
class GoogleCloudContentwarehouseV1PropertyArrayResponse {
  /// List of property values.
  final List<GoogleCloudContentwarehouseV1PropertyResponse> properties;

  /// Creates a new [GoogleCloudContentwarehouseV1PropertyArrayResponse].
  /// [properties] List of property values.
  GoogleCloudContentwarehouseV1PropertyArrayResponse({
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': pulumi.Input.encodeList<GoogleCloudContentwarehouseV1PropertyResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContentwarehouseV1PropertyArrayResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1PropertyArrayResponse(
      properties: pulumi.Input.decodeList<GoogleCloudContentwarehouseV1PropertyResponse>(map['properties'], (value) => GoogleCloudContentwarehouseV1PropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


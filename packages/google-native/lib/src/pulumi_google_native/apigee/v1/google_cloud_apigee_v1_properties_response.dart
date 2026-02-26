// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_apigee_v1_property_response.dart';

/// Message for compatibility with legacy Edge specification for Java Properties object in JSON.
class GoogleCloudApigeeV1PropertiesResponse {
  /// List of all properties in the object
  final List<GoogleCloudApigeeV1PropertyResponse> property;

  GoogleCloudApigeeV1PropertiesResponse({
    required this.property,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['property'] = Input.encodeList<GoogleCloudApigeeV1PropertyResponse,
        Map<String, dynamic>>(property, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudApigeeV1PropertiesResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1PropertiesResponse(
      property: Input.decodeList<GoogleCloudApigeeV1PropertyResponse>(
          map['property'],
          (value) => GoogleCloudApigeeV1PropertyResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

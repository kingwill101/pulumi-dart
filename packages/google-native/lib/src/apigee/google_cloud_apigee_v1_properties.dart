// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_property.dart';

/// Message for compatibility with legacy Edge specification for Java Properties object in JSON.
class GoogleCloudApigeeV1Properties {
  /// List of all properties in the object
  final List<GoogleCloudApigeeV1Property>? property;

  /// Creates a new [GoogleCloudApigeeV1Properties].
  /// [property] List of all properties in the object
  GoogleCloudApigeeV1Properties({this.property});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'property': ?property == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudApigeeV1Property,
              Map<String, dynamic>
            >(property!, (value) => value.toMap()),
    };
  }

  factory GoogleCloudApigeeV1Properties.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1Properties(
      property: map['property'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudApigeeV1Property>(
              map['property'],
              (value) => GoogleCloudApigeeV1Property.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}

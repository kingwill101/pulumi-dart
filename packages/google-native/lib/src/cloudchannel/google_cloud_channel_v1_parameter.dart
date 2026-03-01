// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_channel_v1_value.dart';

/// Definition for extended entitlement parameters.
class GoogleCloudChannelV1Parameter {
  /// Name of the parameter.
  final String? name;

  /// Value of the parameter.
  final GoogleCloudChannelV1Value? value;

  /// Creates a new [GoogleCloudChannelV1Parameter].
  /// [name] Name of the parameter.
  /// [value] Value of the parameter.
  GoogleCloudChannelV1Parameter({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value == null ? null : value!.toMap(),
    };
  }

  factory GoogleCloudChannelV1Parameter.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1Parameter(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null
          ? null
          : GoogleCloudChannelV1Value.fromMap(
              (map['value'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

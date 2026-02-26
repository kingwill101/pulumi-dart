// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_channel_v1_value.dart';

/// Definition for extended entitlement parameters.
class GoogleCloudChannelV1Parameter {
  /// Name of the parameter.
  final String? name;

  /// Value of the parameter.
  final GoogleCloudChannelV1Value? value;

  GoogleCloudChannelV1Parameter({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue.toMap();
    }
    return map;
  }

  factory GoogleCloudChannelV1Parameter.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1Parameter(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null
          ? null
          : GoogleCloudChannelV1Value.fromMap(
              (map['value'] as Map).cast<String, dynamic>()),
    );
  }
}

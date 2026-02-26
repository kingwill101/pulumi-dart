// ignore_for_file: unused_element, unnecessary_cast

import 'local_object_reference_response.dart';

/// Not supported by Cloud Run.
class ConfigMapKeySelectorResponse {
  /// Not supported by Cloud Run.
  final String key;

  /// Not supported by Cloud Run.
  final LocalObjectReferenceResponse localObjectReference;

  /// Not supported by Cloud Run.
  final String name;

  /// Not supported by Cloud Run.
  final bool optional;

  ConfigMapKeySelectorResponse({
    required this.key,
    required this.localObjectReference,
    required this.name,
    required this.optional,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['localObjectReference'] = localObjectReference.toMap();
    map['name'] = name;
    map['optional'] = optional;
    return map;
  }

  factory ConfigMapKeySelectorResponse.fromMap(Map<String, dynamic> map) {
    return ConfigMapKeySelectorResponse(
      key: map['key'] as String,
      localObjectReference: LocalObjectReferenceResponse.fromMap(
          (map['localObjectReference'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      optional: map['optional'] as bool,
    );
  }
}

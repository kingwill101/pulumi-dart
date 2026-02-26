// ignore_for_file: unused_element, unnecessary_cast

import 'local_object_reference_response.dart';

/// Not supported by Cloud Run. SecretEnvSource selects a Secret to populate the environment variables with. The contents of the target Secret's Data field will represent the key-value pairs as environment variables.
class SecretEnvSourceResponse {
  /// This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  final LocalObjectReferenceResponse localObjectReference;

  /// The Secret to select from.
  final String name;

  /// Specify whether the Secret must be defined
  final bool optional;

  SecretEnvSourceResponse({
    required this.localObjectReference,
    required this.name,
    required this.optional,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['localObjectReference'] = localObjectReference.toMap();
    map['name'] = name;
    map['optional'] = optional;
    return map;
  }

  factory SecretEnvSourceResponse.fromMap(Map<String, dynamic> map) {
    return SecretEnvSourceResponse(
      localObjectReference: LocalObjectReferenceResponse.fromMap(
          (map['localObjectReference'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      optional: map['optional'] as bool,
    );
  }
}

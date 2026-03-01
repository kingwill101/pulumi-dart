// ignore_for_file: unused_element, unnecessary_cast

import 'local_object_reference.dart';

/// Not supported by Cloud Run. ConfigMapEnvSource selects a ConfigMap to populate the environment variables with. The contents of the target ConfigMap's Data field will represent the key-value pairs as environment variables.
class ConfigMapEnvSource {
  /// This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  final LocalObjectReference? localObjectReference;

  /// The ConfigMap to select from.
  final String? name;

  /// Specify whether the ConfigMap must be defined.
  final bool? optional;

  /// Creates a new [ConfigMapEnvSource].
  /// [localObjectReference] This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  /// [name] The ConfigMap to select from.
  /// [optional] Specify whether the ConfigMap must be defined.
  ConfigMapEnvSource({this.localObjectReference, this.name, this.optional});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localObjectReference': ?localObjectReference == null
          ? null
          : localObjectReference!.toMap(),
      'name': ?name,
      'optional': ?optional,
    };
  }

  factory ConfigMapEnvSource.fromMap(Map<String, dynamic> map) {
    return ConfigMapEnvSource(
      localObjectReference: map['localObjectReference'] == null
          ? null
          : LocalObjectReference.fromMap(
              (map['localObjectReference'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      optional: map['optional'] == null ? null : map['optional'] as bool,
    );
  }
}

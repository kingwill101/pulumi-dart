// ignore_for_file: unused_element, unnecessary_cast

import 'local_object_reference.dart';

/// SecretKeySelector selects a key of a Secret.
class SecretKeySelector {
  /// A Cloud Secret Manager secret version. Must be 'latest' for the latest version, an integer for a specific version, or a version alias. The key of the secret to select from. Must be a valid secret key.
  final String key;

  /// This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  final LocalObjectReference? localObjectReference;

  /// The name of the secret in Cloud Secret Manager. By default, the secret is assumed to be in the same project. If the secret is in another project, you must define an alias. An alias definition has the form: :projects//secrets/. If multiple alias definitions are needed, they must be separated by commas. The alias definitions must be set on the run.googleapis.com/secrets annotation. The name of the secret in the pod's namespace to select from.
  final String? name;

  /// Specify whether the Secret or its key must be defined.
  final bool? optional;

  /// Creates a new [SecretKeySelector].
  /// [key] A Cloud Secret Manager secret version. Must be 'latest' for the latest version, an integer for a specific version, or a version alias. The key of the secret to select from. Must be a valid secret key.
  /// [localObjectReference] This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  /// [name] The name of the secret in Cloud Secret Manager. By default, the secret is assumed to be in the same project. If the secret is in another project, you must define an alias. An alias definition has the form: :projects//secrets/. If multiple alias definitions are needed, they must be separated by commas. The alias definitions must be set on the run.googleapis.com/secrets annotation. The name of the secret in the pod's namespace to select from.
  /// [optional] Specify whether the Secret or its key must be defined.
  SecretKeySelector({
    required this.key,
    this.localObjectReference,
    this.name,
    this.optional,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final localObjectReferenceValue = localObjectReference;
    if (localObjectReferenceValue != null) {
      map['localObjectReference'] = localObjectReferenceValue.toMap();
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final optionalValue = optional;
    if (optionalValue != null) {
      map['optional'] = optionalValue;
    }
    return map;
  }

  factory SecretKeySelector.fromMap(Map<String, dynamic> map) {
    return SecretKeySelector(
      key: map['key'] as String,
      localObjectReference: map['localObjectReference'] == null
          ? null
          : LocalObjectReference.fromMap(
              (map['localObjectReference'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      optional: map['optional'] == null ? null : map['optional'] as bool,
    );
  }
}

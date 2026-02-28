// ignore_for_file: unused_element, unnecessary_cast

import 'service_template_spec_container_env_from_secret_ref_local_object_reference.dart';

class ServiceTemplateSpecContainerEnvFromSecretRef {
  /// The Secret to select from.
  /// Structure is documented below.
  final ServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference?
      localObjectReference;

  /// Specify whether the Secret must be defined
  final bool? optional;

  /// Creates a new [ServiceTemplateSpecContainerEnvFromSecretRef].
  /// [localObjectReference] The Secret to select from.
  /// [optional] Specify whether the Secret must be defined
  ServiceTemplateSpecContainerEnvFromSecretRef({
    this.localObjectReference,
    this.optional,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final localObjectReferenceValue = localObjectReference;
    if (localObjectReferenceValue != null) {
      map['localObjectReference'] = localObjectReferenceValue.toMap();
    }
    final optionalValue = optional;
    if (optionalValue != null) {
      map['optional'] = optionalValue;
    }
    return map;
  }

  factory ServiceTemplateSpecContainerEnvFromSecretRef.fromMap(
      Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerEnvFromSecretRef(
      localObjectReference: map['localObjectReference'] == null
          ? null
          : ServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference
              .fromMap(
                  (map['localObjectReference'] as Map).cast<String, dynamic>()),
      optional: map['optional'] == null ? null : map['optional'] as bool,
    );
  }
}

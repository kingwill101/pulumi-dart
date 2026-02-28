// ignore_for_file: unused_element, unnecessary_cast

import 'service_template_spec_container_env_from_config_map_ref_local_object_reference.dart';

class ServiceTemplateSpecContainerEnvFromConfigMapRef {
  /// The ConfigMap to select from.
  /// Structure is documented below.
  final ServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference?
      localObjectReference;

  /// Specify whether the ConfigMap must be defined
  final bool? optional;

  /// Creates a new [ServiceTemplateSpecContainerEnvFromConfigMapRef].
  /// [localObjectReference] The ConfigMap to select from.
  /// [optional] Specify whether the ConfigMap must be defined
  ServiceTemplateSpecContainerEnvFromConfigMapRef({
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

  factory ServiceTemplateSpecContainerEnvFromConfigMapRef.fromMap(
      Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerEnvFromConfigMapRef(
      localObjectReference: map['localObjectReference'] == null
          ? null
          : ServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference
              .fromMap(
                  (map['localObjectReference'] as Map).cast<String, dynamic>()),
      optional: map['optional'] == null ? null : map['optional'] as bool,
    );
  }
}

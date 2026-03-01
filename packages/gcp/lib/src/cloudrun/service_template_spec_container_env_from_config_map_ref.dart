// ignore_for_file: unused_element, unnecessary_cast

import 'service_template_spec_container_env_from_config_map_ref_local_object_reference.dart';

class ServiceTemplateSpecContainerEnvFromConfigMapRef {
  /// The ConfigMap to select from.
  /// Structure is documented below.
  final ServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference? localObjectReference;
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
    return <String, dynamic>{
      'localObjectReference': ?localObjectReference == null ? null : localObjectReference!.toMap(),
      'optional': ?optional,
    };
  }

  factory ServiceTemplateSpecContainerEnvFromConfigMapRef.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerEnvFromConfigMapRef(
      localObjectReference: map['localObjectReference'] == null ? null : ServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference.fromMap((map['localObjectReference'] as Map).cast<String, dynamic>()),
      optional: map['optional'] == null ? null : map['optional'] as bool,
    );
  }
}


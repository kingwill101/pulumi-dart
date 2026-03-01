// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_spec_container_env_from_config_map_ref_local_object_reference.dart';

class GetServiceTemplateSpecContainerEnvFromConfigMapRef {
  /// The ConfigMap to select from.
  final List<GetServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference> localObjectReferences;
  /// Specify whether the ConfigMap must be defined
  final bool optional;

  /// Creates a new [GetServiceTemplateSpecContainerEnvFromConfigMapRef].
  /// [localObjectReferences] The ConfigMap to select from.
  /// [optional] Specify whether the ConfigMap must be defined
  GetServiceTemplateSpecContainerEnvFromConfigMapRef({
    required this.localObjectReferences,
    required this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localObjectReferences': pulumi.Input.encodeList<GetServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference, Map<String, dynamic>>(localObjectReferences, (value) => value.toMap()),
      'optional': optional,
    };
  }

  factory GetServiceTemplateSpecContainerEnvFromConfigMapRef.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerEnvFromConfigMapRef(
      localObjectReferences: pulumi.Input.decodeList<GetServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference>(map['localObjectReferences'], (value) => GetServiceTemplateSpecContainerEnvFromConfigMapRefLocalObjectReference.fromMap((value as Map).cast<String, dynamic>())),
      optional: map['optional'] as bool,
    );
  }
}


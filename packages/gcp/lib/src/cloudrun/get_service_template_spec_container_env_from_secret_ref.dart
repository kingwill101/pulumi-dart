// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_spec_container_env_from_secret_ref_local_object_reference.dart';

class GetServiceTemplateSpecContainerEnvFromSecretRef {
  /// The Secret to select from.
  final List<
          GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference>
      localObjectReferences;

  /// Specify whether the Secret must be defined
  final bool optional;

  /// Creates a new [GetServiceTemplateSpecContainerEnvFromSecretRef].
  /// [localObjectReferences] The Secret to select from.
  /// [optional] Specify whether the Secret must be defined
  GetServiceTemplateSpecContainerEnvFromSecretRef({
    required this.localObjectReferences,
    required this.optional,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['localObjectReferences'] = pulumi.Input.encodeList<
        GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference,
        Map<String, dynamic>>(localObjectReferences, (value) => value.toMap());
    map['optional'] = optional;
    return map;
  }

  factory GetServiceTemplateSpecContainerEnvFromSecretRef.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerEnvFromSecretRef(
      localObjectReferences: pulumi.Input.decodeList<
              GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference>(
          map['localObjectReferences'],
          (value) =>
              GetServiceTemplateSpecContainerEnvFromSecretRefLocalObjectReference
                  .fromMap((value as Map).cast<String, dynamic>())),
      optional: map['optional'] as bool,
    );
  }
}

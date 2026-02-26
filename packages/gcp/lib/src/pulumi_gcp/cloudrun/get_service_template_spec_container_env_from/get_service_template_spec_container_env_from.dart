// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_service_template_spec_container_env_from_config_map_ref/get_service_template_spec_container_env_from_config_map_ref.dart';
import '../get_service_template_spec_container_env_from_secret_ref/get_service_template_spec_container_env_from_secret_ref.dart';

class GetServiceTemplateSpecContainerEnvFrom {
  /// The ConfigMap to select from.
  final List<GetServiceTemplateSpecContainerEnvFromConfigMapRef> configMapReves;

  /// An optional identifier to prepend to each key in the ConfigMap.
  final String prefix;

  /// The Secret to select from.
  final List<GetServiceTemplateSpecContainerEnvFromSecretRef> secretReves;

  GetServiceTemplateSpecContainerEnvFrom({
    required this.configMapReves,
    required this.prefix,
    required this.secretReves,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configMapReves'] = Input.encodeList<
        GetServiceTemplateSpecContainerEnvFromConfigMapRef,
        Map<String, dynamic>>(configMapReves, (value) => value.toMap());
    map['prefix'] = prefix;
    map['secretReves'] = Input.encodeList<
        GetServiceTemplateSpecContainerEnvFromSecretRef,
        Map<String, dynamic>>(secretReves, (value) => value.toMap());
    return map;
  }

  factory GetServiceTemplateSpecContainerEnvFrom.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerEnvFrom(
      configMapReves:
          Input.decodeList<GetServiceTemplateSpecContainerEnvFromConfigMapRef>(
              map['configMapReves'],
              (value) =>
                  GetServiceTemplateSpecContainerEnvFromConfigMapRef.fromMap(
                      (value as Map).cast<String, dynamic>())),
      prefix: map['prefix'] as String,
      secretReves:
          Input.decodeList<GetServiceTemplateSpecContainerEnvFromSecretRef>(
              map['secretReves'],
              (value) =>
                  GetServiceTemplateSpecContainerEnvFromSecretRef.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}

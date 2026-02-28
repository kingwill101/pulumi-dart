// ignore_for_file: unused_element, unnecessary_cast

import 'service_template_spec_container_env_from_config_map_ref.dart';
import 'service_template_spec_container_env_from_secret_ref.dart';

class ServiceTemplateSpecContainerEnvFrom {
  /// The ConfigMap to select from.
  /// Structure is documented below.
  final ServiceTemplateSpecContainerEnvFromConfigMapRef? configMapRef;

  /// An optional identifier to prepend to each key in the ConfigMap.
  final String? prefix;

  /// The Secret to select from.
  /// Structure is documented below.
  final ServiceTemplateSpecContainerEnvFromSecretRef? secretRef;

  /// Creates a new [ServiceTemplateSpecContainerEnvFrom].
  /// [configMapRef] The ConfigMap to select from.
  /// [prefix] An optional identifier to prepend to each key in the ConfigMap.
  /// [secretRef] The Secret to select from.
  ServiceTemplateSpecContainerEnvFrom({
    this.configMapRef,
    this.prefix,
    this.secretRef,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configMapRefValue = configMapRef;
    if (configMapRefValue != null) {
      map['configMapRef'] = configMapRefValue.toMap();
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final secretRefValue = secretRef;
    if (secretRefValue != null) {
      map['secretRef'] = secretRefValue.toMap();
    }
    return map;
  }

  factory ServiceTemplateSpecContainerEnvFrom.fromMap(
      Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerEnvFrom(
      configMapRef: map['configMapRef'] == null
          ? null
          : ServiceTemplateSpecContainerEnvFromConfigMapRef.fromMap(
              (map['configMapRef'] as Map).cast<String, dynamic>()),
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      secretRef: map['secretRef'] == null
          ? null
          : ServiceTemplateSpecContainerEnvFromSecretRef.fromMap(
              (map['secretRef'] as Map).cast<String, dynamic>()),
    );
  }
}

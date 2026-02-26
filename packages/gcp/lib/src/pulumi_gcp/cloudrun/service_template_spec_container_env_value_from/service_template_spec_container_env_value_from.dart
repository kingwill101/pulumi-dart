// ignore_for_file: unused_element, unnecessary_cast

import '../service_template_spec_container_env_value_from_secret_key_ref/service_template_spec_container_env_value_from_secret_key_ref.dart';

class ServiceTemplateSpecContainerEnvValueFrom {
  /// Selects a key (version) of a secret in Secret Manager.
  /// Structure is documented below.
  final ServiceTemplateSpecContainerEnvValueFromSecretKeyRef secretKeyRef;

  ServiceTemplateSpecContainerEnvValueFrom({
    required this.secretKeyRef,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretKeyRef'] = secretKeyRef.toMap();
    return map;
  }

  factory ServiceTemplateSpecContainerEnvValueFrom.fromMap(
      Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerEnvValueFrom(
      secretKeyRef:
          ServiceTemplateSpecContainerEnvValueFromSecretKeyRef.fromMap(
              (map['secretKeyRef'] as Map).cast<String, dynamic>()),
    );
  }
}

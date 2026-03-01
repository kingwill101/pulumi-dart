// ignore_for_file: unused_element, unnecessary_cast

import 'service_template_spec_container_env_value_from_secret_key_ref.dart';

class ServiceTemplateSpecContainerEnvValueFrom {
  /// Selects a key (version) of a secret in Secret Manager.
  /// Structure is documented below.
  final ServiceTemplateSpecContainerEnvValueFromSecretKeyRef secretKeyRef;

  /// Creates a new [ServiceTemplateSpecContainerEnvValueFrom].
  /// [secretKeyRef] Selects a key (version) of a secret in Secret Manager.
  ServiceTemplateSpecContainerEnvValueFrom({required this.secretKeyRef});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretKeyRef': secretKeyRef.toMap()};
  }

  factory ServiceTemplateSpecContainerEnvValueFrom.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceTemplateSpecContainerEnvValueFrom(
      secretKeyRef:
          ServiceTemplateSpecContainerEnvValueFromSecretKeyRef.fromMap(
            (map['secretKeyRef'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}

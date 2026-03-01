// ignore_for_file: unused_element, unnecessary_cast

import 'service_template_container_env_value_source_secret_key_ref.dart';

class ServiceTemplateContainerEnvValueSource {
  /// Selects a secret and a specific version from Cloud Secret Manager.
  /// Structure is documented below.
  final ServiceTemplateContainerEnvValueSourceSecretKeyRef? secretKeyRef;

  /// Creates a new [ServiceTemplateContainerEnvValueSource].
  /// [secretKeyRef] Selects a secret and a specific version from Cloud Secret Manager.
  ServiceTemplateContainerEnvValueSource({this.secretKeyRef});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretKeyRef': ?secretKeyRef == null ? null : secretKeyRef!.toMap(),
    };
  }

  factory ServiceTemplateContainerEnvValueSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceTemplateContainerEnvValueSource(
      secretKeyRef: map['secretKeyRef'] == null
          ? null
          : ServiceTemplateContainerEnvValueSourceSecretKeyRef.fromMap(
              (map['secretKeyRef'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

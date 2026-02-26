// ignore_for_file: unused_element, unnecessary_cast

import '../job_template_template_container_env_value_source_secret_key_ref/job_template_template_container_env_value_source_secret_key_ref.dart';

class JobTemplateTemplateContainerEnvValueSource {
  /// Selects a secret and a specific version from Cloud Secret Manager.
  /// Structure is documented below.
  final JobTemplateTemplateContainerEnvValueSourceSecretKeyRef? secretKeyRef;

  JobTemplateTemplateContainerEnvValueSource({
    this.secretKeyRef,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final secretKeyRefValue = secretKeyRef;
    if (secretKeyRefValue != null) {
      map['secretKeyRef'] = secretKeyRefValue.toMap();
    }
    return map;
  }

  factory JobTemplateTemplateContainerEnvValueSource.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateTemplateContainerEnvValueSource(
      secretKeyRef: map['secretKeyRef'] == null
          ? null
          : JobTemplateTemplateContainerEnvValueSourceSecretKeyRef.fromMap(
              (map['secretKeyRef'] as Map).cast<String, dynamic>()),
    );
  }
}

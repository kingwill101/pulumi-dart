// ignore_for_file: unused_element, unnecessary_cast

import 'job_template_template_container_env_value_source_secret_key_ref.dart';

class JobTemplateTemplateContainerEnvValueSource {
  /// Selects a secret and a specific version from Cloud Secret Manager.
  /// Structure is documented below.
  final JobTemplateTemplateContainerEnvValueSourceSecretKeyRef? secretKeyRef;

  /// Creates a new [JobTemplateTemplateContainerEnvValueSource].
  /// [secretKeyRef] Selects a secret and a specific version from Cloud Secret Manager.
  JobTemplateTemplateContainerEnvValueSource({this.secretKeyRef});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretKeyRef': ?secretKeyRef == null ? null : secretKeyRef!.toMap(),
    };
  }

  factory JobTemplateTemplateContainerEnvValueSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return JobTemplateTemplateContainerEnvValueSource(
      secretKeyRef: map['secretKeyRef'] == null
          ? null
          : JobTemplateTemplateContainerEnvValueSourceSecretKeyRef.fromMap(
              (map['secretKeyRef'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

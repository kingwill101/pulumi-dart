// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_job_template_template_container_env_value_source_secret_key_ref/get_job_template_template_container_env_value_source_secret_key_ref.dart';

class GetJobTemplateTemplateContainerEnvValueSource {
  /// Selects a secret and a specific version from Cloud Secret Manager.
  final List<GetJobTemplateTemplateContainerEnvValueSourceSecretKeyRef>
      secretKeyReves;

  GetJobTemplateTemplateContainerEnvValueSource({
    required this.secretKeyReves,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretKeyReves'] = Input.encodeList<
        GetJobTemplateTemplateContainerEnvValueSourceSecretKeyRef,
        Map<String, dynamic>>(secretKeyReves, (value) => value.toMap());
    return map;
  }

  factory GetJobTemplateTemplateContainerEnvValueSource.fromMap(
      Map<String, dynamic> map) {
    return GetJobTemplateTemplateContainerEnvValueSource(
      secretKeyReves: Input.decodeList<
              GetJobTemplateTemplateContainerEnvValueSourceSecretKeyRef>(
          map['secretKeyReves'],
          (value) =>
              GetJobTemplateTemplateContainerEnvValueSourceSecretKeyRef.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

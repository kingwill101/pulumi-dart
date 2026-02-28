// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_pool_template_container_env_value_source_secret_key_ref.dart';

class GetWorkerPoolTemplateContainerEnvValueSource {
  /// Selects a secret and a specific version from Cloud Secret Manager.
  final List<GetWorkerPoolTemplateContainerEnvValueSourceSecretKeyRef>
      secretKeyReves;

  /// Creates a new [GetWorkerPoolTemplateContainerEnvValueSource].
  /// [secretKeyReves] Selects a secret and a specific version from Cloud Secret Manager.
  GetWorkerPoolTemplateContainerEnvValueSource({
    required this.secretKeyReves,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretKeyReves'] = pulumi.Input.encodeList<
        GetWorkerPoolTemplateContainerEnvValueSourceSecretKeyRef,
        Map<String, dynamic>>(secretKeyReves, (value) => value.toMap());
    return map;
  }

  factory GetWorkerPoolTemplateContainerEnvValueSource.fromMap(
      Map<String, dynamic> map) {
    return GetWorkerPoolTemplateContainerEnvValueSource(
      secretKeyReves: pulumi.Input.decodeList<
              GetWorkerPoolTemplateContainerEnvValueSourceSecretKeyRef>(
          map['secretKeyReves'],
          (value) =>
              GetWorkerPoolTemplateContainerEnvValueSourceSecretKeyRef.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

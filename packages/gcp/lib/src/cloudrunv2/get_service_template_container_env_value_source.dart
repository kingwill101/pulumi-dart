// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_container_env_value_source_secret_key_ref.dart';

class GetServiceTemplateContainerEnvValueSource {
  /// Selects a secret and a specific version from Cloud Secret Manager.
  final List<GetServiceTemplateContainerEnvValueSourceSecretKeyRef>
      secretKeyReves;

  /// Creates a new [GetServiceTemplateContainerEnvValueSource].
  /// [secretKeyReves] Selects a secret and a specific version from Cloud Secret Manager.
  GetServiceTemplateContainerEnvValueSource({
    required this.secretKeyReves,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretKeyReves'] = pulumi.Input.encodeList<
        GetServiceTemplateContainerEnvValueSourceSecretKeyRef,
        Map<String, dynamic>>(secretKeyReves, (value) => value.toMap());
    return map;
  }

  factory GetServiceTemplateContainerEnvValueSource.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateContainerEnvValueSource(
      secretKeyReves: pulumi.Input.decodeList<
              GetServiceTemplateContainerEnvValueSourceSecretKeyRef>(
          map['secretKeyReves'],
          (value) =>
              GetServiceTemplateContainerEnvValueSourceSecretKeyRef.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

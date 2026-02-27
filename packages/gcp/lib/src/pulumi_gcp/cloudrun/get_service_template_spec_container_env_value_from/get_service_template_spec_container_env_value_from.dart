// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_service_template_spec_container_env_value_from_secret_key_ref/get_service_template_spec_container_env_value_from_secret_key_ref.dart';

class GetServiceTemplateSpecContainerEnvValueFrom {
  /// Selects a key (version) of a secret in Secret Manager.
  final List<GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef>
      secretKeyReves;

  GetServiceTemplateSpecContainerEnvValueFrom({
    required this.secretKeyReves,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretKeyReves'] = pulumi.Input.encodeList<
        GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef,
        Map<String, dynamic>>(secretKeyReves, (value) => value.toMap());
    return map;
  }

  factory GetServiceTemplateSpecContainerEnvValueFrom.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerEnvValueFrom(
      secretKeyReves: pulumi.Input.decodeList<
              GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef>(
          map['secretKeyReves'],
          (value) =>
              GetServiceTemplateSpecContainerEnvValueFromSecretKeyRef.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_service_template_spec_container_env_value_from/get_service_template_spec_container_env_value_from.dart';

class GetServiceTemplateSpecContainerEnv {
  /// The name of the Cloud Run Service.
  final String name;

  /// Defaults to "".
  final String value;

  /// Source for the environment variable's value. Only supports secret_key_ref.
  final List<GetServiceTemplateSpecContainerEnvValueFrom> valueFroms;

  GetServiceTemplateSpecContainerEnv({
    required this.name,
    required this.value,
    required this.valueFroms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    map['valueFroms'] = Input.encodeList<
        GetServiceTemplateSpecContainerEnvValueFrom,
        Map<String, dynamic>>(valueFroms, (value) => value.toMap());
    return map;
  }

  factory GetServiceTemplateSpecContainerEnv.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerEnv(
      name: map['name'] as String,
      value: map['value'] as String,
      valueFroms: Input.decodeList<GetServiceTemplateSpecContainerEnvValueFrom>(
          map['valueFroms'],
          (value) => GetServiceTemplateSpecContainerEnvValueFrom.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

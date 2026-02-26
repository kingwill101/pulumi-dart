// ignore_for_file: unused_element, unnecessary_cast

import '../service_template_spec_container_env_value_from/service_template_spec_container_env_value_from.dart';

class ServiceTemplateSpecContainerEnv {
  /// Name of the environment variable.
  final String? name;

  /// Defaults to "".
  final String? value;

  /// Source for the environment variable's value. Only supports secret_key_ref.
  /// Structure is documented below.
  final ServiceTemplateSpecContainerEnvValueFrom? valueFrom;

  ServiceTemplateSpecContainerEnv({
    this.name,
    this.value,
    this.valueFrom,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    final valueFromValue = valueFrom;
    if (valueFromValue != null) {
      map['valueFrom'] = valueFromValue.toMap();
    }
    return map;
  }

  factory ServiceTemplateSpecContainerEnv.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerEnv(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
      valueFrom: map['valueFrom'] == null
          ? null
          : ServiceTemplateSpecContainerEnvValueFrom.fromMap(
              (map['valueFrom'] as Map).cast<String, dynamic>()),
    );
  }
}

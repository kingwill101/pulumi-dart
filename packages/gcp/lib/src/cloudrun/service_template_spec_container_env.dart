// ignore_for_file: unused_element, unnecessary_cast

import 'service_template_spec_container_env_value_from.dart';

class ServiceTemplateSpecContainerEnv {
  /// Name of the environment variable.
  final String? name;
  /// Defaults to "".
  final String? value;
  /// Source for the environment variable's value. Only supports secret_key_ref.
  /// Structure is documented below.
  final ServiceTemplateSpecContainerEnvValueFrom? valueFrom;

  /// Creates a new [ServiceTemplateSpecContainerEnv].
  /// [name] Name of the environment variable.
  /// [value] Defaults to "".
  /// [valueFrom] Source for the environment variable's value. Only supports secret_key_ref.
  ServiceTemplateSpecContainerEnv({
    this.name,
    this.value,
    this.valueFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
      'valueFrom': ?valueFrom == null ? null : valueFrom!.toMap(),
    };
  }

  factory ServiceTemplateSpecContainerEnv.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerEnv(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
      valueFrom: map['valueFrom'] == null ? null : ServiceTemplateSpecContainerEnvValueFrom.fromMap((map['valueFrom'] as Map).cast<String, dynamic>()),
    );
  }
}


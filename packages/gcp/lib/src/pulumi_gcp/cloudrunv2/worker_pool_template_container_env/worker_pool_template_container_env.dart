// ignore_for_file: unused_element, unnecessary_cast

import '../worker_pool_template_container_env_value_source/worker_pool_template_container_env_value_source.dart';

class WorkerPoolTemplateContainerEnv {
  /// Name of the environment variable. Must be a C_IDENTIFIER, and may not exceed 32768 characters.
  final String name;

  /// Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  final String? value;

  /// Source for the environment variable's value.
  /// Structure is documented below.
  final WorkerPoolTemplateContainerEnvValueSource? valueSource;

  WorkerPoolTemplateContainerEnv({
    required this.name,
    this.value,
    this.valueSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    final valueSourceValue = valueSource;
    if (valueSourceValue != null) {
      map['valueSource'] = valueSourceValue.toMap();
    }
    return map;
  }

  factory WorkerPoolTemplateContainerEnv.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateContainerEnv(
      name: map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
      valueSource: map['valueSource'] == null
          ? null
          : WorkerPoolTemplateContainerEnvValueSource.fromMap(
              (map['valueSource'] as Map).cast<String, dynamic>()),
    );
  }
}

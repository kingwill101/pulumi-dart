// ignore_for_file: unused_element, unnecessary_cast

import 'job_template_template_container_env_value_source.dart';

class JobTemplateTemplateContainerEnv {
  /// Name of the environment variable. Must be a C_IDENTIFIER, and mnay not exceed 32768 characters.
  final String name;
  /// Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  final String? value;
  /// Source for the environment variable's value.
  /// Structure is documented below.
  final JobTemplateTemplateContainerEnvValueSource? valueSource;

  /// Creates a new [JobTemplateTemplateContainerEnv].
  /// [name] Name of the environment variable. Must be a C_IDENTIFIER, and mnay not exceed 32768 characters.
  /// [value] Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  /// [valueSource] Source for the environment variable's value.
  JobTemplateTemplateContainerEnv({
    required this.name,
    this.value,
    this.valueSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': ?value,
      'valueSource': ?valueSource == null ? null : valueSource!.toMap(),
    };
  }

  factory JobTemplateTemplateContainerEnv.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplateContainerEnv(
      name: map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
      valueSource: map['valueSource'] == null ? null : JobTemplateTemplateContainerEnvValueSource.fromMap((map['valueSource'] as Map).cast<String, dynamic>()),
    );
  }
}


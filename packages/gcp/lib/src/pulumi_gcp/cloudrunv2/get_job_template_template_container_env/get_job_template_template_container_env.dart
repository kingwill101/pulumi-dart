// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_job_template_template_container_env_value_source/get_job_template_template_container_env_value_source.dart';

class GetJobTemplateTemplateContainerEnv {
  /// The name of the Cloud Run v2 Job.
  final String name;

  /// Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  final String value;

  /// Source for the environment variable's value.
  final List<GetJobTemplateTemplateContainerEnvValueSource> valueSources;

  GetJobTemplateTemplateContainerEnv({
    required this.name,
    required this.value,
    required this.valueSources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    map['valueSources'] = pulumi.Input.encodeList<
        GetJobTemplateTemplateContainerEnvValueSource,
        Map<String, dynamic>>(valueSources, (value) => value.toMap());
    return map;
  }

  factory GetJobTemplateTemplateContainerEnv.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateContainerEnv(
      name: map['name'] as String,
      value: map['value'] as String,
      valueSources: pulumi.Input.decodeList<
              GetJobTemplateTemplateContainerEnvValueSource>(
          map['valueSources'],
          (value) => GetJobTemplateTemplateContainerEnvValueSource.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

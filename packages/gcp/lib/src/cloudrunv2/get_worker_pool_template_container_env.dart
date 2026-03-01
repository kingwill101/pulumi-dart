// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_pool_template_container_env_value_source.dart';

class GetWorkerPoolTemplateContainerEnv {
  /// The name of the Cloud Run v2 Worker Pool.
  final String name;

  /// Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  final String value;

  /// Source for the environment variable's value.
  final List<GetWorkerPoolTemplateContainerEnvValueSource> valueSources;

  /// Creates a new [GetWorkerPoolTemplateContainerEnv].
  /// [name] The name of the Cloud Run v2 Worker Pool.
  /// [value] Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  /// [valueSources] Source for the environment variable's value.
  GetWorkerPoolTemplateContainerEnv({
    required this.name,
    required this.value,
    required this.valueSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
      'valueSources':
          pulumi.Input.encodeList<
            GetWorkerPoolTemplateContainerEnvValueSource,
            Map<String, dynamic>
          >(valueSources, (value) => value.toMap()),
    };
  }

  factory GetWorkerPoolTemplateContainerEnv.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateContainerEnv(
      name: map['name'] as String,
      value: map['value'] as String,
      valueSources:
          pulumi.Input.decodeList<GetWorkerPoolTemplateContainerEnvValueSource>(
            map['valueSources'],
            (value) => GetWorkerPoolTemplateContainerEnvValueSource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}

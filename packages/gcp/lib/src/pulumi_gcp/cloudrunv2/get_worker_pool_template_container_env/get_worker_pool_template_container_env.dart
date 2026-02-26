// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_worker_pool_template_container_env_value_source/get_worker_pool_template_container_env_value_source.dart';

class GetWorkerPoolTemplateContainerEnv {
  /// The name of the Cloud Run v2 Worker Pool.
  final String name;

  /// Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  final String value;

  /// Source for the environment variable's value.
  final List<GetWorkerPoolTemplateContainerEnvValueSource> valueSources;

  GetWorkerPoolTemplateContainerEnv({
    required this.name,
    required this.value,
    required this.valueSources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    map['valueSources'] = Input.encodeList<
        GetWorkerPoolTemplateContainerEnvValueSource,
        Map<String, dynamic>>(valueSources, (value) => value.toMap());
    return map;
  }

  factory GetWorkerPoolTemplateContainerEnv.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateContainerEnv(
      name: map['name'] as String,
      value: map['value'] as String,
      valueSources:
          Input.decodeList<GetWorkerPoolTemplateContainerEnvValueSource>(
              map['valueSources'],
              (value) => GetWorkerPoolTemplateContainerEnvValueSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

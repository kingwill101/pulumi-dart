// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_container_env_value_source.dart';

class GetServiceTemplateContainerEnv {
  /// The name of the Cloud Run v2 Service.
  final String name;

  /// Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  final String value;

  /// Source for the environment variable's value.
  final List<GetServiceTemplateContainerEnvValueSource> valueSources;

  /// Creates a new [GetServiceTemplateContainerEnv].
  /// [name] The name of the Cloud Run v2 Service.
  /// [value] Literal value of the environment variable. Defaults to "" and the maximum allowed length is 32768 characters. Variable references are not supported in Cloud Run.
  /// [valueSources] Source for the environment variable's value.
  GetServiceTemplateContainerEnv({
    required this.name,
    required this.value,
    required this.valueSources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    map['valueSources'] = pulumi.Input.encodeList<
        GetServiceTemplateContainerEnvValueSource,
        Map<String, dynamic>>(valueSources, (value) => value.toMap());
    return map;
  }

  factory GetServiceTemplateContainerEnv.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateContainerEnv(
      name: map['name'] as String,
      value: map['value'] as String,
      valueSources:
          pulumi.Input.decodeList<GetServiceTemplateContainerEnvValueSource>(
              map['valueSources'],
              (value) => GetServiceTemplateContainerEnvValueSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

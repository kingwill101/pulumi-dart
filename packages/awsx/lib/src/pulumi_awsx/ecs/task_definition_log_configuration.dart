// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_definition_secret.dart';

class TaskDefinitionLogConfiguration {
  final String logDriver;
  final dynamic options;
  final List<TaskDefinitionSecret>? secretOptions;

  TaskDefinitionLogConfiguration({
    required this.logDriver,
    this.options,
    this.secretOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logDriver'] = logDriver;
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = optionsValue;
    }
    final secretOptionsValue = secretOptions;
    if (secretOptionsValue != null) {
      map['secretOptions'] =
          pulumi.Input.encodeList<TaskDefinitionSecret, Map<String, dynamic>>(
              secretOptionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory TaskDefinitionLogConfiguration.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionLogConfiguration(
      logDriver: map['logDriver'] as String,
      options: map['options'] == null ? null : map['options'],
      secretOptions: map['secretOptions'] == null
          ? null
          : pulumi.Input.decodeList<TaskDefinitionSecret>(
              map['secretOptions'],
              (value) => TaskDefinitionSecret.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

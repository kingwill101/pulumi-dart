// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_definition_secret.dart';

class TaskDefinitionLogConfiguration {
  final String logDriver;
  final dynamic options;
  final List<TaskDefinitionSecret>? secretOptions;

  /// Creates a new [TaskDefinitionLogConfiguration].
  /// [logDriver] Required.
  /// [options] Optional.
  /// [secretOptions] Optional.
  TaskDefinitionLogConfiguration({
    required this.logDriver,
    this.options,
    this.secretOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logDriver': logDriver,
      'options': ?options,
      'secretOptions': ?secretOptions == null ? null : pulumi.Input.encodeList<TaskDefinitionSecret, Map<String, dynamic>>(secretOptions!, (value) => value.toMap()),
    };
  }

  factory TaskDefinitionLogConfiguration.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionLogConfiguration(
      logDriver: map['logDriver'] as String,
      options: map['options'] == null ? null : map['options'],
      secretOptions: map['secretOptions'] == null ? null : pulumi.Input.decodeList<TaskDefinitionSecret>(map['secretOptions'], (value) => TaskDefinitionSecret.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


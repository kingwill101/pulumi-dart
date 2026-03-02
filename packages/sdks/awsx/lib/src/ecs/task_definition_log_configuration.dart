// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_definition_secret.dart';

class TaskDefinitionLogConfiguration {
  final pulumi.Input<String> logDriver;
  final pulumi.Input<dynamic>? options;
  final pulumi.Input<List<TaskDefinitionSecret>>? secretOptions;

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
      'secretOptions': ?pulumi.Input.mapOptionalInputValue<List<TaskDefinitionSecret>, List<Map<String, dynamic>>>(secretOptions, (value) => pulumi.Input.encodeList<TaskDefinitionSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TaskDefinitionLogConfiguration.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionLogConfiguration(
      logDriver: (map['logDriver'] as String).input(),
      options: map['options'] == null ? null : (map['options']).input(),
      secretOptions: map['secretOptions'] == null ? null : (pulumi.Input.decodeList<TaskDefinitionSecret>(map['secretOptions'], (value) => TaskDefinitionSecret.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


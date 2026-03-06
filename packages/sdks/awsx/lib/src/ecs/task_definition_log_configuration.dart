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
  const TaskDefinitionLogConfiguration({
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
      logDriver: pulumi.Input.fromValue(map['logDriver'] as String),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      secretOptions: (() { final guardedValue = map['secretOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TaskDefinitionSecret>(guardedValue, (value) => TaskDefinitionSecret.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


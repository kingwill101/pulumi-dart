// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_properties.dart';

/// Task properties of the software update configuration.
class SoftwareUpdateConfigurationTasks {
  /// Post task properties.
  final pulumi.Input<TaskProperties>? postTask;
  /// Pre task properties.
  final pulumi.Input<TaskProperties>? preTask;

  /// Creates a new [SoftwareUpdateConfigurationTasks].
  /// [postTask] Post task properties.
  /// [preTask] Pre task properties.
  SoftwareUpdateConfigurationTasks({
    this.postTask,
    this.preTask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postTask': ?pulumi.Input.mapOptionalInputValue<TaskProperties, Map<String, dynamic>>(postTask, (value) => value.toMap()),
      'preTask': ?pulumi.Input.mapOptionalInputValue<TaskProperties, Map<String, dynamic>>(preTask, (value) => value.toMap()),
    };
  }

  factory SoftwareUpdateConfigurationTasks.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationTasks(
      postTask: (() { final guardedValue = map['postTask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preTask: (() { final guardedValue = map['preTask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


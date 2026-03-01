// ignore_for_file: unused_element, unnecessary_cast

import 'task_properties.dart';

/// Task properties of the software update configuration.
class SoftwareUpdateConfigurationTasks {
  /// Post task properties.
  final TaskProperties? postTask;
  /// Pre task properties.
  final TaskProperties? preTask;

  /// Creates a new [SoftwareUpdateConfigurationTasks].
  /// [postTask] Post task properties.
  /// [preTask] Pre task properties.
  SoftwareUpdateConfigurationTasks({
    this.postTask,
    this.preTask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postTask': ?postTask == null ? null : postTask!.toMap(),
      'preTask': ?preTask == null ? null : preTask!.toMap(),
    };
  }

  factory SoftwareUpdateConfigurationTasks.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationTasks(
      postTask: map['postTask'] == null ? null : TaskProperties.fromMap((map['postTask'] as Map).cast<String, dynamic>()),
      preTask: map['preTask'] == null ? null : TaskProperties.fromMap((map['preTask'] as Map).cast<String, dynamic>()),
    );
  }
}


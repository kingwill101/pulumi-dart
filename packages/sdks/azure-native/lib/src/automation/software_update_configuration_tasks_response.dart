// ignore_for_file: unused_element, unnecessary_cast

import 'task_properties_response.dart';

/// Task properties of the software update configuration.
class SoftwareUpdateConfigurationTasksResponse {
  /// Post task properties.
  final TaskPropertiesResponse? postTask;
  /// Pre task properties.
  final TaskPropertiesResponse? preTask;

  /// Creates a new [SoftwareUpdateConfigurationTasksResponse].
  /// [postTask] Post task properties.
  /// [preTask] Pre task properties.
  SoftwareUpdateConfigurationTasksResponse({
    this.postTask,
    this.preTask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postTask': ?postTask == null ? null : postTask!.toMap(),
      'preTask': ?preTask == null ? null : preTask!.toMap(),
    };
  }

  factory SoftwareUpdateConfigurationTasksResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationTasksResponse(
      postTask: map['postTask'] == null ? null : TaskPropertiesResponse.fromMap((map['postTask'] as Map).cast<String, dynamic>()),
      preTask: map['preTask'] == null ? null : TaskPropertiesResponse.fromMap((map['preTask'] as Map).cast<String, dynamic>()),
    );
  }
}


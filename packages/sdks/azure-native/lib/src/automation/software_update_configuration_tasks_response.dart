// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_properties_response.dart';

/// Task properties of the software update configuration.
class SoftwareUpdateConfigurationTasksResponse {
  /// Post task properties.
  final pulumi.Input<TaskPropertiesResponse>? postTask;
  /// Pre task properties.
  final pulumi.Input<TaskPropertiesResponse>? preTask;

  /// Creates a new [SoftwareUpdateConfigurationTasksResponse].
  /// [postTask] Post task properties.
  /// [preTask] Pre task properties.
  SoftwareUpdateConfigurationTasksResponse({
    this.postTask,
    this.preTask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postTask': ?pulumi.Input.mapOptionalInputValue<TaskPropertiesResponse, Map<String, dynamic>>(postTask, (value) => value.toMap()),
      'preTask': ?pulumi.Input.mapOptionalInputValue<TaskPropertiesResponse, Map<String, dynamic>>(preTask, (value) => value.toMap()),
    };
  }

  factory SoftwareUpdateConfigurationTasksResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationTasksResponse(
      postTask: map['postTask'] == null ? null : (TaskPropertiesResponse.fromMap((map['postTask']! as Map).cast<String, dynamic>())).input(),
      preTask: map['preTask'] == null ? null : (TaskPropertiesResponse.fromMap((map['preTask']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


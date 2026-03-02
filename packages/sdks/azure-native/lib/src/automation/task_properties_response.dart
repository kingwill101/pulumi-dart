// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Task properties of the software update configuration.
class TaskPropertiesResponse {
  /// Gets or sets the parameters of the task.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Gets or sets the name of the runbook.
  final pulumi.Input<String>? source;

  /// Creates a new [TaskPropertiesResponse].
  /// [parameters] Gets or sets the parameters of the task.
  /// [source] Gets or sets the name of the runbook.
  TaskPropertiesResponse({
    this.parameters,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters,
      'source': ?source,
    };
  }

  factory TaskPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TaskPropertiesResponse(
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
    );
  }
}


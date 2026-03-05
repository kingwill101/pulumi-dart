// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_definition_build_task_response_parameters.dart';

/// A task executed during the image definition build.
class ImageDefinitionBuildTaskResponse {
  /// Display name to help differentiate multiple instances of the same task.
  final pulumi.Input<String>? displayName;
  /// End time of the task.
  final pulumi.Input<String> endTime;
  /// ID of the task instance.
  final pulumi.Input<String> id;
  /// The URI for retrieving logs for the task execution.
  final pulumi.Input<String> logUri;
  /// The name of the task.
  final pulumi.Input<String>? name;
  /// Parameters for the task.
  final pulumi.Input<List<ImageDefinitionBuildTaskResponseParameters>>? parameters;
  /// Start time of the task.
  final pulumi.Input<String> startTime;
  /// The status of the task.
  final pulumi.Input<String> status;

  /// Creates a new [ImageDefinitionBuildTaskResponse].
  /// [displayName] Display name to help differentiate multiple instances of the same task.
  /// [endTime] End time of the task.
  /// [id] ID of the task instance.
  /// [logUri] The URI for retrieving logs for the task execution.
  /// [name] The name of the task.
  /// [parameters] Parameters for the task.
  /// [startTime] Start time of the task.
  /// [status] The status of the task.
  ImageDefinitionBuildTaskResponse({
    this.displayName,
    required this.endTime,
    required this.id,
    required this.logUri,
    this.name,
    this.parameters,
    required this.startTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'endTime': endTime,
      'id': id,
      'logUri': logUri,
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ImageDefinitionBuildTaskResponseParameters>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ImageDefinitionBuildTaskResponseParameters, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startTime': startTime,
      'status': status,
    };
  }

  factory ImageDefinitionBuildTaskResponse.fromMap(Map<String, dynamic> map) {
    return ImageDefinitionBuildTaskResponse(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      logUri: pulumi.Input.fromValue(map['logUri'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImageDefinitionBuildTaskResponseParameters>(guardedValue, (value) => ImageDefinitionBuildTaskResponseParameters.fromMap((value as Map).cast<String, dynamic>()))); })(),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}


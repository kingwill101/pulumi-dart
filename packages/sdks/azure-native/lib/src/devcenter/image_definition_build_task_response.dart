// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_definition_build_task_response_parameters.dart';

/// A task executed during the image definition build.
class ImageDefinitionBuildTaskResponse {
  /// Display name to help differentiate multiple instances of the same task.
  final String? displayName;
  /// End time of the task.
  final String endTime;
  /// ID of the task instance.
  final String id;
  /// The URI for retrieving logs for the task execution.
  final String logUri;
  /// The name of the task.
  final String? name;
  /// Parameters for the task.
  final List<ImageDefinitionBuildTaskResponseParameters>? parameters;
  /// Start time of the task.
  final String startTime;
  /// The status of the task.
  final String status;

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
      'parameters': ?parameters == null ? null : pulumi.Input.encodeList<ImageDefinitionBuildTaskResponseParameters, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'startTime': startTime,
      'status': status,
    };
  }

  factory ImageDefinitionBuildTaskResponse.fromMap(Map<String, dynamic> map) {
    return ImageDefinitionBuildTaskResponse(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      endTime: map['endTime'] as String,
      id: map['id'] as String,
      logUri: map['logUri'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<ImageDefinitionBuildTaskResponseParameters>(map['parameters'], (value) => ImageDefinitionBuildTaskResponseParameters.fromMap((value as Map).cast<String, dynamic>())),
      startTime: map['startTime'] as String,
      status: map['status'] as String,
    );
  }
}


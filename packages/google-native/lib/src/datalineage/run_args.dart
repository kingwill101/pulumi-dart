// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_state.dart';

/// {@template pulumi_datalineage_v1_run_args_doc}
/// The set of arguments for Run.
/// {@endtemplate}
/// {@macro pulumi_datalineage_v1_run_args_doc}
class RunArgs {
  /// Optional. The attributes of the run. Should only be used for the purpose of non-semantic management (classifying, describing or labeling the run). Up to 100 attributes are allowed.
  final pulumi.Input<Map<String, String>>? attributes;

  /// Optional. A human-readable name you can set to display in a user interface. Must be not longer than 1024 characters and only contain UTF-8 letters or numbers, spaces or characters like `_-:&.`
  final pulumi.Input<String>? displayName;

  /// Optional. The timestamp of the end of the run.
  final pulumi.Input<String>? endTime;
  final pulumi.Input<String>? location;

  /// Immutable. The resource name of the run. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}`. Can be specified or auto-assigned. {run} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  final pulumi.Input<String>? name;
  final pulumi.Input<String> processId;
  final pulumi.Input<String>? project;

  /// A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This request is idempotent only if a `request_id` is provided.
  final pulumi.Input<String>? requestId;

  /// The timestamp of the start of the run.
  final pulumi.Input<String> startTime;

  /// The state of the run.
  final pulumi.Input<RunState> state;

  /// Creates a new [RunArgs].
  /// [attributes] Optional. The attributes of the run. Should only be used for the purpose of non-semantic management (classifying, describing or labeling the run). Up to 100 attributes are allowed.
  /// [displayName] Optional. A human-readable name you can set to display in a user interface. Must be not longer than 1024 characters and only contain UTF-8 letters or numbers, spaces or characters like `_-:&.`
  /// [endTime] Optional. The timestamp of the end of the run.
  /// [location] Optional.
  /// [name] Immutable. The resource name of the run. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}`. Can be specified or auto-assigned. {run} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  /// [processId] Required.
  /// [project] Optional.
  /// [requestId] A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This request is idempotent only if a `request_id` is provided.
  /// [startTime] The timestamp of the start of the run.
  /// [state] The state of the run.
  RunArgs({
    Map<String, String>? attributes,
    String? displayName,
    String? endTime,
    String? location,
    String? name,
    required String processId,
    String? project,
    String? requestId,
    required String startTime,
    required RunState state,
  })  : attributes =
            pulumi.Input.asOptionalInput<Map<String, String>>(attributes),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        endTime = pulumi.Input.asOptionalInput<String>(endTime),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        processId = pulumi.Input.asInput<String>(processId),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        startTime = pulumi.Input.asInput<String>(startTime),
        state = pulumi.Input.asInput<RunState>(state);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = attributesValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['processId'] = processId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['startTime'] = startTime;
    map['state'] = pulumi.Input.mapInputValue<RunState, String>(
        state, (value) => value.value);
    return map;
  }

  factory RunArgs.fromMap(Map<String, dynamic> map) {
    return RunArgs(
      attributes: map['attributes'] == null
          ? null
          : (map['attributes'] as Map).cast<String, String>(),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      processId: map['processId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      startTime: map['startTime'] as String,
      state: RunState.fromValue(map['state'] as String),
    );
  }
}

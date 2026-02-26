// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'run_state.dart';

/// The set of arguments for Run.
class RunArgs3 {
  /// Optional. The attributes of the run. Should only be used for the purpose of non-semantic management (classifying, describing or labeling the run). Up to 100 attributes are allowed.
  final Input<Map<String, String>>? attributes;

  /// Optional. A human-readable name you can set to display in a user interface. Must be not longer than 1024 characters and only contain UTF-8 letters or numbers, spaces or characters like `_-:&.`
  final Input<String>? displayName;

  /// Optional. The timestamp of the end of the run.
  final Input<String>? endTime;
  final Input<String>? location;

  /// Immutable. The resource name of the run. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}`. Can be specified or auto-assigned. {run} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  final Input<String>? name;
  final Input<String> processId;
  final Input<String>? project;

  /// A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This request is idempotent only if a `request_id` is provided.
  final Input<String>? requestId;

  /// The timestamp of the start of the run.
  final Input<String> startTime;

  /// The state of the run.
  final Input<RunState> state;

  RunArgs3({
    this.attributes,
    this.displayName,
    this.endTime,
    this.location,
    this.name,
    required this.processId,
    this.project,
    this.requestId,
    required this.startTime,
    required this.state,
  });

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
    map['state'] =
        Input.mapInputValue<RunState, String>(state, (value) => value.value);
    return map;
  }

  factory RunArgs3.fromMap(Map<String, dynamic> map) {
    return RunArgs3(
      attributes: Input.asOptionalInput<Map<String, String>>(map['attributes']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      endTime: Input.asOptionalInput<String>(map['endTime']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      processId: Input.asInput<String>(map['processId']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      startTime: Input.asInput<String>(map['startTime']),
      state: Input.asInput<RunState>(map['state']),
    );
  }
}

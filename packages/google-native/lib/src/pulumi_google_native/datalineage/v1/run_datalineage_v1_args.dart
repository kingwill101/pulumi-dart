// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_state.dart';

/// The set of arguments for Run.
class RunDatalineageV1Args {
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

  RunDatalineageV1Args({
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
    map['state'] = pulumi.Input.mapInputValue<RunState, String>(
        state, (value) => value.value);
    return map;
  }

  factory RunDatalineageV1Args.fromMap(Map<String, dynamic> map) {
    return RunDatalineageV1Args(
      attributes:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['attributes']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      endTime: pulumi.Input.asOptionalInput<String>(map['endTime']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      processId: pulumi.Input.asInput<String>(map['processId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      startTime: pulumi.Input.asInput<String>(map['startTime']),
      state: pulumi.Input.asInput<RunState>(map['state']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Context.
class ContextArgs4 {
  final Input<String> environmentId;

  /// Optional. The number of conversational query requests after which the context expires. The default is `0`. If set to `0`, the context expires immediately. Contexts expire automatically after 20 minutes if there are no matching queries.
  final Input<int>? lifespanCount;
  final Input<String>? location;

  /// The unique identifier of the context. Supported formats: - `projects//agent/sessions//contexts/`, - `projects//locations//agent/sessions//contexts/`, - `projects//agent/environments//users//sessions//contexts/`, - `projects//locations//agent/environments//users//sessions//contexts/`, The `Context ID` is always converted to lowercase, may only contain characters in `a-zA-Z0-9_-%` and may be at most 250 bytes long. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. The following context names are reserved for internal use by Dialogflow. You should not use these contexts or create contexts with these names: * `__system_counters__` * `*_id_dialog_context` * `*_dialog_params_size`
  final Input<String> name;

  /// Optional. The collection of parameters associated with this context. Depending on your protocol or client library language, this is a map, associative array, symbol table, dictionary, or JSON object composed of a collection of (MapKey, MapValue) pairs: * MapKey type: string * MapKey value: parameter name * MapValue type: If parameter's entity type is a composite entity then use map, otherwise, depending on the parameter value type, it could be one of string, number, boolean, null, list or map. * MapValue value: If parameter's entity type is a composite entity then use map from composite entity property names to property values, otherwise, use parameter value.
  final Input<Map<String, String>>? parameters;
  final Input<String>? project;
  final Input<String> sessionId;
  final Input<String> userId;

  ContextArgs4({
    required this.environmentId,
    this.lifespanCount,
    this.location,
    required this.name,
    this.parameters,
    this.project,
    required this.sessionId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    final lifespanCountValue = lifespanCount;
    if (lifespanCountValue != null) {
      map['lifespanCount'] = lifespanCountValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['name'] = name;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sessionId'] = sessionId;
    map['userId'] = userId;
    return map;
  }

  factory ContextArgs4.fromMap(Map<String, dynamic> map) {
    return ContextArgs4(
      environmentId: Input.asInput<String>(map['environmentId']),
      lifespanCount: Input.asOptionalInput<int>(map['lifespanCount']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asInput<String>(map['name']),
      parameters: Input.asOptionalInput<Map<String, String>>(map['parameters']),
      project: Input.asOptionalInput<String>(map['project']),
      sessionId: Input.asInput<String>(map['sessionId']),
      userId: Input.asInput<String>(map['userId']),
    );
  }
}

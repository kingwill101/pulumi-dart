// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRun.
class GetRunDatalineageV1Result {
  /// Optional. The attributes of the run. Should only be used for the purpose of non-semantic management (classifying, describing or labeling the run). Up to 100 attributes are allowed.
  final Map<String, String> attributes;

  /// Optional. A human-readable name you can set to display in a user interface. Must be not longer than 1024 characters and only contain UTF-8 letters or numbers, spaces or characters like `_-:&.`
  final String displayName;

  /// Optional. The timestamp of the end of the run.
  final String endTime;

  /// Immutable. The resource name of the run. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}`. Can be specified or auto-assigned. {run} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  final String name;

  /// The timestamp of the start of the run.
  final String startTime;

  /// The state of the run.
  final String state;

  GetRunDatalineageV1Result({
    required this.attributes,
    required this.displayName,
    required this.endTime,
    required this.name,
    required this.startTime,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributes'] = attributes;
    map['displayName'] = displayName;
    map['endTime'] = endTime;
    map['name'] = name;
    map['startTime'] = startTime;
    map['state'] = state;
    return map;
  }

  factory GetRunDatalineageV1Result.fromMap(Map<String, dynamic> map) {
    return GetRunDatalineageV1Result(
      attributes: (map['attributes'] as Map).cast<String, String>(),
      displayName: map['displayName'] as String,
      endTime: map['endTime'] as String,
      name: map['name'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
    );
  }
}

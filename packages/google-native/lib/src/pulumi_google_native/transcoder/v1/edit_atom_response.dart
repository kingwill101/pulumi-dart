// ignore_for_file: unused_element, unnecessary_cast

/// Edit atom.
class EditAtomResponse {
  /// End time in seconds for the atom, relative to the input file timeline. When `end_time_offset` is not specified, the `inputs` are used until the end of the atom.
  final String endTimeOffset;

  /// List of Input.key values identifying files that should be used in this atom. The listed `inputs` must have the same timeline.
  final List<String> inputs;

  /// A unique key for this atom. Must be specified when using advanced mapping.
  final String key;

  /// Start time in seconds for the atom, relative to the input file timeline. The default is `0s`.
  final String startTimeOffset;

  EditAtomResponse({
    required this.endTimeOffset,
    required this.inputs,
    required this.key,
    required this.startTimeOffset,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTimeOffset'] = endTimeOffset;
    map['inputs'] = inputs;
    map['key'] = key;
    map['startTimeOffset'] = startTimeOffset;
    return map;
  }

  factory EditAtomResponse.fromMap(Map<String, dynamic> map) {
    return EditAtomResponse(
      endTimeOffset: map['endTimeOffset'] as String,
      inputs: (map['inputs'] as List).cast<String>(),
      key: map['key'] as String,
      startTimeOffset: map['startTimeOffset'] as String,
    );
  }
}

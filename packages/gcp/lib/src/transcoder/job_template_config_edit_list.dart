// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateConfigEditList {
  /// List of values identifying files that should be used in this atom.
  final List<String>? inputs;

  /// A unique key for this atom.
  final String? key;

  /// Start time in seconds for the atom, relative to the input file timeline.  The default is `0s`.
  final String? startTimeOffset;

  /// Creates a new [JobTemplateConfigEditList].
  /// [inputs] List of values identifying files that should be used in this atom.
  /// [key] A unique key for this atom.
  /// [startTimeOffset] Start time in seconds for the atom, relative to the input file timeline.  The default is `0s`.
  JobTemplateConfigEditList({
    this.inputs,
    this.key,
    this.startTimeOffset,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inputsValue = inputs;
    if (inputsValue != null) {
      map['inputs'] = inputsValue;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final startTimeOffsetValue = startTimeOffset;
    if (startTimeOffsetValue != null) {
      map['startTimeOffset'] = startTimeOffsetValue;
    }
    return map;
  }

  factory JobTemplateConfigEditList.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigEditList(
      inputs:
          map['inputs'] == null ? null : (map['inputs'] as List).cast<String>(),
      key: map['key'] == null ? null : map['key'] as String,
      startTimeOffset: map['startTimeOffset'] == null
          ? null
          : map['startTimeOffset'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateConfigEditList {
  /// List of values identifying files that should be used in this atom.
  final List<String>? inputs;

  /// A unique key for this atom.
  final String? key;

  /// Start time in seconds for the atom, relative to the input file timeline.  The default is <span pulumi-lang-nodejs="`0s`" pulumi-lang-dotnet="`0s`" pulumi-lang-go="`0s`" pulumi-lang-python="`0s`" pulumi-lang-yaml="`0s`" pulumi-lang-java="`0s`">`0s`</span>.
  final String? startTimeOffset;

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

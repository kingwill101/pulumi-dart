// ignore_for_file: unused_element, unnecessary_cast

/// The mapping for the JobConfig.edit_list atoms with text EditAtom.inputs.
class TextMapping {
  /// The EditAtom.key that references atom with text inputs in the JobConfig.edit_list.
  final String atomKey;

  /// The Input.key that identifies the input file.
  final String inputKey;

  /// The zero-based index of the track in the input file.
  final int inputTrack;

  TextMapping({
    required this.atomKey,
    required this.inputKey,
    required this.inputTrack,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['atomKey'] = atomKey;
    map['inputKey'] = inputKey;
    map['inputTrack'] = inputTrack;
    return map;
  }

  factory TextMapping.fromMap(Map<String, dynamic> map) {
    return TextMapping(
      atomKey: map['atomKey'] as String,
      inputKey: map['inputKey'] as String,
      inputTrack: map['inputTrack'] as int,
    );
  }
}

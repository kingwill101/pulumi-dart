// ignore_for_file: unused_element, unnecessary_cast

/// The mapping for the JobConfig.edit_list atoms with text EditAtom.inputs.
class TextMappingResponse {
  /// The EditAtom.key that references atom with text inputs in the JobConfig.edit_list.
  final String atomKey;

  /// The Input.key that identifies the input file.
  final String inputKey;

  /// The zero-based index of the track in the input file.
  final int inputTrack;

  /// Creates a new [TextMappingResponse].
  /// [atomKey] The EditAtom.key that references atom with text inputs in the JobConfig.edit_list.
  /// [inputKey] The Input.key that identifies the input file.
  /// [inputTrack] The zero-based index of the track in the input file.
  TextMappingResponse({
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

  factory TextMappingResponse.fromMap(Map<String, dynamic> map) {
    return TextMappingResponse(
      atomKey: map['atomKey'] as String,
      inputKey: map['inputKey'] as String,
      inputTrack: map['inputTrack'] as int,
    );
  }
}

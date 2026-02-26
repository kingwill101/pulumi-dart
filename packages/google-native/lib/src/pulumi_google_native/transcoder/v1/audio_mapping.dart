// ignore_for_file: unused_element, unnecessary_cast

/// The mapping for the JobConfig.edit_list atoms with audio EditAtom.inputs.
class AudioMapping {
  /// The EditAtom.key that references the atom with audio inputs in the JobConfig.edit_list.
  final String atomKey;

  /// Audio volume control in dB. Negative values decrease volume, positive values increase. The default is 0.
  final double? gainDb;

  /// The zero-based index of the channel in the input audio stream.
  final int inputChannel;

  /// The Input.key that identifies the input file.
  final String inputKey;

  /// The zero-based index of the track in the input file.
  final int inputTrack;

  /// The zero-based index of the channel in the output audio stream.
  final int outputChannel;

  AudioMapping({
    required this.atomKey,
    this.gainDb,
    required this.inputChannel,
    required this.inputKey,
    required this.inputTrack,
    required this.outputChannel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['atomKey'] = atomKey;
    final gainDbValue = gainDb;
    if (gainDbValue != null) {
      map['gainDb'] = gainDbValue;
    }
    map['inputChannel'] = inputChannel;
    map['inputKey'] = inputKey;
    map['inputTrack'] = inputTrack;
    map['outputChannel'] = outputChannel;
    return map;
  }

  factory AudioMapping.fromMap(Map<String, dynamic> map) {
    return AudioMapping(
      atomKey: map['atomKey'] as String,
      gainDb: map['gainDb'] == null ? null : map['gainDb'] as double,
      inputChannel: map['inputChannel'] as int,
      inputKey: map['inputKey'] as String,
      inputTrack: map['inputTrack'] as int,
      outputChannel: map['outputChannel'] as int,
    );
  }
}

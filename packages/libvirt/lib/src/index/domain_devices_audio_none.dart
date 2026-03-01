// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesAudioNone {
  /// Configures the output settings for the None audio device.
  final Map<String, dynamic>? input;
  /// Configures the output settings for the None audio device.
  final Map<String, dynamic>? output;

  /// Creates a new [DomainDevicesAudioNone].
  /// [input] Configures the output settings for the None audio device.
  /// [output] Configures the output settings for the None audio device.
  DomainDevicesAudioNone({
    this.input,
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?input,
      'output': ?output,
    };
  }

  factory DomainDevicesAudioNone.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioNone(
      input: map['input'] == null ? null : (map['input'] as Map).cast<String, dynamic>(),
      output: map['output'] == null ? null : (map['output'] as Map).cast<String, dynamic>(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesAudioAlsaInput {
  /// Sets the device node for the ALSA audio output.
  final String? dev;

  /// Creates a new [DomainDevicesAudioAlsaInput].
  /// [dev] Sets the device node for the ALSA audio output.
  DomainDevicesAudioAlsaInput({
    this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': ?dev,
    };
  }

  factory DomainDevicesAudioAlsaInput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioAlsaInput(
      dev: map['dev'] == null ? null : map['dev'] as String,
    );
  }
}


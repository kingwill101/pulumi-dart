// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesGraphicSpicePlayback {
  /// Sets compression options for audio and video playback over the Spice connection.
  final String compression;

  /// Creates a new [DomainDevicesGraphicSpicePlayback].
  /// [compression] Sets compression options for audio and video playback over the Spice connection.
  DomainDevicesGraphicSpicePlayback({
    required this.compression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': compression,
    };
  }

  factory DomainDevicesGraphicSpicePlayback.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpicePlayback(
      compression: map['compression'] as String,
    );
  }
}


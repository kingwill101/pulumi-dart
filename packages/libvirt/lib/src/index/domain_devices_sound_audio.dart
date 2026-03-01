// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesSoundAudio {
  /// This field sets the identifier for the audio configuration in the sound device of the domain.
  final double? id;

  /// Creates a new [DomainDevicesSoundAudio].
  /// [id] This field sets the identifier for the audio configuration in the sound device of the domain.
  DomainDevicesSoundAudio({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory DomainDevicesSoundAudio.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSoundAudio(
      id: map['id'] == null ? null : map['id'] as double,
    );
  }
}


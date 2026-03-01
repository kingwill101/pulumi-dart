// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorSourceVhostUserDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final String? channel;

  /// Creates a new [DomainDevicesDiskMirrorSourceVhostUserDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  DomainDevicesDiskMirrorSourceVhostUserDbus({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
    };
  }

  factory DomainDevicesDiskMirrorSourceVhostUserDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceVhostUserDbus(
      channel: map['channel'] == null ? null : map['channel'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorSourceVhostUserSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final String channel;

  /// Creates a new [DomainDevicesDiskMirrorSourceVhostUserSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  DomainDevicesDiskMirrorSourceVhostUserSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory DomainDevicesDiskMirrorSourceVhostUserSpicePort.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceVhostUserSpicePort(
      channel: map['channel'] as String,
    );
  }
}


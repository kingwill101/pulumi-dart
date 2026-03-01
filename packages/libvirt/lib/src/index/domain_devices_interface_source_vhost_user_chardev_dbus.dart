// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceSourceVhostUserChardevDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final String? channel;

  /// Creates a new [DomainDevicesInterfaceSourceVhostUserChardevDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  DomainDevicesInterfaceSourceVhostUserChardevDbus({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
    };
  }

  factory DomainDevicesInterfaceSourceVhostUserChardevDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceVhostUserChardevDbus(
      channel: map['channel'] == null ? null : map['channel'] as String,
    );
  }
}


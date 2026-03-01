// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesChannelSourceDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final String? channel;

  /// Creates a new [DomainDevicesChannelSourceDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  DomainDevicesChannelSourceDbus({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
    };
  }

  factory DomainDevicesChannelSourceDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelSourceDbus(
      channel: map['channel'] == null ? null : map['channel'] as String,
    );
  }
}


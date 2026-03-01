// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesConsoleSourceDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final String? channel;

  /// Creates a new [DomainDevicesConsoleSourceDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  DomainDevicesConsoleSourceDbus({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
    };
  }

  factory DomainDevicesConsoleSourceDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsoleSourceDbus(
      channel: map['channel'] == null ? null : map['channel'] as String,
    );
  }
}


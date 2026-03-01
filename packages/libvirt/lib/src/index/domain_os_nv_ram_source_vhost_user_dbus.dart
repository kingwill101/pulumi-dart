// ignore_for_file: unused_element, unnecessary_cast


class DomainOsNvRamSourceVhostUserDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final String? channel;

  /// Creates a new [DomainOsNvRamSourceVhostUserDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  DomainOsNvRamSourceVhostUserDbus({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
    };
  }

  factory DomainOsNvRamSourceVhostUserDbus.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceVhostUserDbus(
      channel: map['channel'] == null ? null : map['channel'] as String,
    );
  }
}


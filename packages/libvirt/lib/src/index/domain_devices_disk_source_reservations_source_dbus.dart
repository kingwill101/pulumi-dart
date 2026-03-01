// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskSourceReservationsSourceDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final String? channel;

  /// Creates a new [DomainDevicesDiskSourceReservationsSourceDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  DomainDevicesDiskSourceReservationsSourceDbus({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
    };
  }

  factory DomainDevicesDiskSourceReservationsSourceDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceReservationsSourceDbus(
      channel: map['channel'] == null ? null : map['channel'] as String,
    );
  }
}


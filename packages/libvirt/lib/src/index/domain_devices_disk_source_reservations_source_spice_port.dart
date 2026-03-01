// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskSourceReservationsSourceSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final String channel;

  /// Creates a new [DomainDevicesDiskSourceReservationsSourceSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  DomainDevicesDiskSourceReservationsSourceSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory DomainDevicesDiskSourceReservationsSourceSpicePort.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceReservationsSourceSpicePort(
      channel: map['channel'] as String,
    );
  }
}


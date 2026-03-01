// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesRngBackendEgdSourceSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final String channel;

  /// Creates a new [DomainDevicesRngBackendEgdSourceSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  DomainDevicesRngBackendEgdSourceSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory DomainDevicesRngBackendEgdSourceSpicePort.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackendEgdSourceSpicePort(
      channel: map['channel'] as String,
    );
  }
}


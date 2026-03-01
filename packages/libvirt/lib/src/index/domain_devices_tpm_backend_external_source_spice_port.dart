// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesTpmBackendExternalSourceSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final String channel;

  /// Creates a new [DomainDevicesTpmBackendExternalSourceSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  DomainDevicesTpmBackendExternalSourceSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory DomainDevicesTpmBackendExternalSourceSpicePort.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendExternalSourceSpicePort(
      channel: map['channel'] as String,
    );
  }
}


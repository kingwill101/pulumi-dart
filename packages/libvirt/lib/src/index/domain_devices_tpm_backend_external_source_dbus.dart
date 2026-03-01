// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesTpmBackendExternalSourceDbus {
  /// Specifies the channel used for the DBus source in the EGD backend.
  final String? channel;

  /// Creates a new [DomainDevicesTpmBackendExternalSourceDbus].
  /// [channel] Specifies the channel used for the DBus source in the EGD backend.
  DomainDevicesTpmBackendExternalSourceDbus({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
    };
  }

  factory DomainDevicesTpmBackendExternalSourceDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendExternalSourceDbus(
      channel: map['channel'] == null ? null : map['channel'] as String,
    );
  }
}


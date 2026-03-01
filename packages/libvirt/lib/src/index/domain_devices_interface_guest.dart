// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceGuest {
  /// Indicates the actual guest device identifier.
  final String? actual;
  /// Sets the device identifier for the guest network interface.
  final String? dev;

  /// Creates a new [DomainDevicesInterfaceGuest].
  /// [actual] Indicates the actual guest device identifier.
  /// [dev] Sets the device identifier for the guest network interface.
  DomainDevicesInterfaceGuest({
    this.actual,
    this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actual': ?actual,
      'dev': ?dev,
    };
  }

  factory DomainDevicesInterfaceGuest.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceGuest(
      actual: map['actual'] == null ? null : map['actual'] as String,
      dev: map['dev'] == null ? null : map['dev'] as String,
    );
  }
}


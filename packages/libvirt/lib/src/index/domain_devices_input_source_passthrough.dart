// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInputSourcePassthrough {
  /// Specifies the event device used in passthrough mode for the input device.
  final String evDev;

  /// Creates a new [DomainDevicesInputSourcePassthrough].
  /// [evDev] Specifies the event device used in passthrough mode for the input device.
  DomainDevicesInputSourcePassthrough({
    required this.evDev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evDev': evDev,
    };
  }

  factory DomainDevicesInputSourcePassthrough.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInputSourcePassthrough(
      evDev: map['evDev'] as String,
    );
  }
}


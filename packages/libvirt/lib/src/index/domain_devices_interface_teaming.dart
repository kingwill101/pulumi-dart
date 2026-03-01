// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceTeaming {
  /// Specifies if the teaming configuration is persistent across reboots.
  final String? persistent;
  /// Defines the type of teaming used for the PCI device.
  final String type;

  /// Creates a new [DomainDevicesInterfaceTeaming].
  /// [persistent] Specifies if the teaming configuration is persistent across reboots.
  /// [type] Defines the type of teaming used for the PCI device.
  DomainDevicesInterfaceTeaming({
    this.persistent,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistent': ?persistent,
      'type': type,
    };
  }

  factory DomainDevicesInterfaceTeaming.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceTeaming(
      persistent: map['persistent'] == null ? null : map['persistent'] as String,
      type: map['type'] as String,
    );
  }
}


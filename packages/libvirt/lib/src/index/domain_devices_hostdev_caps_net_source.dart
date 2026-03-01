// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesHostdevCapsNetSource {
  /// Specifies the network interface to which the host device is associated.
  final String interface;

  /// Creates a new [DomainDevicesHostdevCapsNetSource].
  /// [interface] Specifies the network interface to which the host device is associated.
  DomainDevicesHostdevCapsNetSource({
    required this.interface,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interface': interface,
    };
  }

  factory DomainDevicesHostdevCapsNetSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevCapsNetSource(
      interface: map['interface'] as String,
    );
  }
}


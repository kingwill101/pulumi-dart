// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesControllerVirtIoSerial {
  /// Specifies the number of ports available on the VirtIO serial controller device.
  final double? ports;
  /// Sets the number of vectors allocated for the VirtIO serial controller device.
  final double? vectors;

  /// Creates a new [DomainDevicesControllerVirtIoSerial].
  /// [ports] Specifies the number of ports available on the VirtIO serial controller device.
  /// [vectors] Sets the number of vectors allocated for the VirtIO serial controller device.
  DomainDevicesControllerVirtIoSerial({
    this.ports,
    this.vectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ports': ?ports,
      'vectors': ?vectors,
    };
  }

  factory DomainDevicesControllerVirtIoSerial.fromMap(Map<String, dynamic> map) {
    return DomainDevicesControllerVirtIoSerial(
      ports: map['ports'] == null ? null : map['ports'] as double,
      vectors: map['vectors'] == null ? null : map['vectors'] as double,
    );
  }
}


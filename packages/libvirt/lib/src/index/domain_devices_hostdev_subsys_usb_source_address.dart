// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesHostdevSubsysUsbSourceAddress {
  /// Sets the bus identifier where the USB device resides.
  final double? bus;
  /// Specifies the device identifier corresponding to the USB device.
  final double? device;
  /// Indicates the port number for the USB device connection.
  final String? port;

  /// Creates a new [DomainDevicesHostdevSubsysUsbSourceAddress].
  /// [bus] Sets the bus identifier where the USB device resides.
  /// [device] Specifies the device identifier corresponding to the USB device.
  /// [port] Indicates the port number for the USB device connection.
  DomainDevicesHostdevSubsysUsbSourceAddress({
    this.bus,
    this.device,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bus': ?bus,
      'device': ?device,
      'port': ?port,
    };
  }

  factory DomainDevicesHostdevSubsysUsbSourceAddress.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysUsbSourceAddress(
      bus: map['bus'] == null ? null : map['bus'] as double,
      device: map['device'] == null ? null : map['device'] as double,
      port: map['port'] == null ? null : map['port'] as String,
    );
  }
}


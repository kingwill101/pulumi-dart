// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesHostdevSubsysScsiSourceHostAddress {
  /// Configures the bus number for the SCSI host address.
  final double? bus;
  /// Defines the SCSI controller number for the device's address.
  final double? controller;
  /// Specifies the target ID for the SCSI device's address.
  final double? target;
  /// Indicates the unit number in the SCSI address for the device.
  final double? unit;

  /// Creates a new [DomainDevicesHostdevSubsysScsiSourceHostAddress].
  /// [bus] Configures the bus number for the SCSI host address.
  /// [controller] Defines the SCSI controller number for the device's address.
  /// [target] Specifies the target ID for the SCSI device's address.
  /// [unit] Indicates the unit number in the SCSI address for the device.
  DomainDevicesHostdevSubsysScsiSourceHostAddress({
    this.bus,
    this.controller,
    this.target,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bus': ?bus,
      'controller': ?controller,
      'target': ?target,
      'unit': ?unit,
    };
  }

  factory DomainDevicesHostdevSubsysScsiSourceHostAddress.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysScsiSourceHostAddress(
      bus: map['bus'] == null ? null : map['bus'] as double,
      controller: map['controller'] == null ? null : map['controller'] as double,
      target: map['target'] == null ? null : map['target'] as double,
      unit: map['unit'] == null ? null : map['unit'] as double,
    );
  }
}


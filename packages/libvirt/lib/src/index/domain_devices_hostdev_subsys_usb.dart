// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_hostdev_subsys_usb_source.dart';

class DomainDevicesHostdevSubsysUsb {
  /// Specifies the source attributes for the USB subsystem device, detailing its origin.
  final DomainDevicesHostdevSubsysUsbSource? source;

  /// Creates a new [DomainDevicesHostdevSubsysUsb].
  /// [source] Specifies the source attributes for the USB subsystem device, detailing its origin.
  DomainDevicesHostdevSubsysUsb({
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory DomainDevicesHostdevSubsysUsb.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysUsb(
      source: map['source'] == null ? null : DomainDevicesHostdevSubsysUsbSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}


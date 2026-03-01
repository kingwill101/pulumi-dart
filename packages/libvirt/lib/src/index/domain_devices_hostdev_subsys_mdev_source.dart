// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_hostdev_subsys_mdev_source_address.dart';

class DomainDevicesHostdevSubsysMDevSource {
  /// Sets the address for the source of the multimedia subsystem device.
  final DomainDevicesHostdevSubsysMDevSourceAddress? address;

  /// Creates a new [DomainDevicesHostdevSubsysMDevSource].
  /// [address] Sets the address for the source of the multimedia subsystem device.
  DomainDevicesHostdevSubsysMDevSource({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address == null ? null : address!.toMap(),
    };
  }

  factory DomainDevicesHostdevSubsysMDevSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysMDevSource(
      address: map['address'] == null ? null : DomainDevicesHostdevSubsysMDevSourceAddress.fromMap((map['address'] as Map).cast<String, dynamic>()),
    );
  }
}


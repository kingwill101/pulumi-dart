// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_interface_coalesce_rx.dart';

class DomainDevicesInterfaceCoalesce {
  /// Controls the coalescing settings specifically for received network packets at the interface.
  final DomainDevicesInterfaceCoalesceRx? rx;

  /// Creates a new [DomainDevicesInterfaceCoalesce].
  /// [rx] Controls the coalescing settings specifically for received network packets at the interface.
  DomainDevicesInterfaceCoalesce({
    this.rx,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rx': ?rx == null ? null : rx!.toMap(),
    };
  }

  factory DomainDevicesInterfaceCoalesce.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceCoalesce(
      rx: map['rx'] == null ? null : DomainDevicesInterfaceCoalesceRx.fromMap((map['rx'] as Map).cast<String, dynamic>()),
    );
  }
}


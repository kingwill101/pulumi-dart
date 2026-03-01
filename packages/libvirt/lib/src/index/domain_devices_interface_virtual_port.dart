// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_interface_virtual_port_params.dart';

class DomainDevicesInterfaceVirtualPort {
  /// Contains parameters settings for the virtual port.
  final DomainDevicesInterfaceVirtualPortParams? params;

  /// Creates a new [DomainDevicesInterfaceVirtualPort].
  /// [params] Contains parameters settings for the virtual port.
  DomainDevicesInterfaceVirtualPort({
    this.params,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': ?params == null ? null : params!.toMap(),
    };
  }

  factory DomainDevicesInterfaceVirtualPort.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceVirtualPort(
      params: map['params'] == null ? null : DomainDevicesInterfaceVirtualPortParams.fromMap((map['params'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'network_port_group_virtual_port_params.dart';

class NetworkPortGroupVirtualPort {
  /// Defines parameters for the virtual port in the port group.
  final NetworkPortGroupVirtualPortParams? params;

  /// Creates a new [NetworkPortGroupVirtualPort].
  /// [params] Defines parameters for the virtual port in the port group.
  NetworkPortGroupVirtualPort({
    this.params,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': ?params == null ? null : params!.toMap(),
    };
  }

  factory NetworkPortGroupVirtualPort.fromMap(Map<String, dynamic> map) {
    return NetworkPortGroupVirtualPort(
      params: map['params'] == null ? null : NetworkPortGroupVirtualPortParams.fromMap((map['params'] as Map).cast<String, dynamic>()),
    );
  }
}


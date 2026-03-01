// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_router_spec_listener_port_mapping.dart';

class VirtualRouterSpecListener {
  /// Port mapping information for the listener.
  final VirtualRouterSpecListenerPortMapping portMapping;

  /// Creates a new [VirtualRouterSpecListener].
  /// [portMapping] Port mapping information for the listener.
  VirtualRouterSpecListener({required this.portMapping});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'portMapping': portMapping.toMap()};
  }

  factory VirtualRouterSpecListener.fromMap(Map<String, dynamic> map) {
    return VirtualRouterSpecListener(
      portMapping: VirtualRouterSpecListenerPortMapping.fromMap(
        (map['portMapping'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}

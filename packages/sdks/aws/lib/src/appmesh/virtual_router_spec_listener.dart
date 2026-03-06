// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_router_spec_listener_port_mapping.dart';

class VirtualRouterSpecListener {
  /// Port mapping information for the listener.
  final pulumi.Input<VirtualRouterSpecListenerPortMapping> portMapping;

  /// Creates a new [VirtualRouterSpecListener].
  /// [portMapping] Port mapping information for the listener.
  const VirtualRouterSpecListener({
    required this.portMapping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portMapping': pulumi.Input.mapInputValue<VirtualRouterSpecListenerPortMapping, Map<String, dynamic>>(portMapping, (value) => value.toMap()),
    };
  }

  factory VirtualRouterSpecListener.fromMap(Map<String, dynamic> map) {
    return VirtualRouterSpecListener(
      portMapping: pulumi.Input.fromValue(VirtualRouterSpecListenerPortMapping.fromMap((map['portMapping']! as Map).cast<String, dynamic>())),
    );
  }
}


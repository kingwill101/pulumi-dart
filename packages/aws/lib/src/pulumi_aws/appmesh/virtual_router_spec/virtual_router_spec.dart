// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../virtual_router_spec_listener/virtual_router_spec_listener.dart';

class VirtualRouterSpec {
  /// Listeners that the virtual router is expected to receive inbound traffic from.
  /// Currently only one listener is supported per virtual router.
  final List<VirtualRouterSpecListener>? listeners;

  VirtualRouterSpec({
    this.listeners,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final listenersValue = listeners;
    if (listenersValue != null) {
      map['listeners'] = pulumi.Input.encodeList<VirtualRouterSpecListener,
          Map<String, dynamic>>(listenersValue, (value) => value.toMap());
    }
    return map;
  }

  factory VirtualRouterSpec.fromMap(Map<String, dynamic> map) {
    return VirtualRouterSpec(
      listeners: map['listeners'] == null
          ? null
          : pulumi.Input.decodeList<VirtualRouterSpecListener>(
              map['listeners'],
              (value) => VirtualRouterSpecListener.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

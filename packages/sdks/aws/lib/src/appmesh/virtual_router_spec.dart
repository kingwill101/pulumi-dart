// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_router_spec_listener.dart';

class VirtualRouterSpec {
  /// Listeners that the virtual router is expected to receive inbound traffic from. Currently only one listener is supported per virtual router. See `listener` Block for details.
  final pulumi.Input<List<VirtualRouterSpecListener>>? listeners;

  /// Creates a new [VirtualRouterSpec].
  /// [listeners] Listeners that the virtual router is expected to receive inbound traffic from. Currently only one listener is supported per virtual router. See `listener` Block for details.
  const VirtualRouterSpec({
    this.listeners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listeners': ?pulumi.Input.mapOptionalInputValue<List<VirtualRouterSpecListener>, List<Map<String, dynamic>>>(listeners, (value) => pulumi.Input.encodeList<VirtualRouterSpecListener, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualRouterSpec.fromMap(Map<String, dynamic> map) {
    return VirtualRouterSpec(
      listeners: (() { final guardedValue = map['listeners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualRouterSpecListener>(guardedValue, (value) => VirtualRouterSpecListener.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

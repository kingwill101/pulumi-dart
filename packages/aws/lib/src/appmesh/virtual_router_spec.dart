// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_router_spec_listener.dart';

class VirtualRouterSpec {
  /// Listeners that the virtual router is expected to receive inbound traffic from.
  /// Currently only one listener is supported per virtual router.
  final List<VirtualRouterSpecListener>? listeners;

  /// Creates a new [VirtualRouterSpec].
  /// [listeners] Listeners that the virtual router is expected to receive inbound traffic from.
  VirtualRouterSpec({this.listeners});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listeners': ?listeners == null
          ? null
          : pulumi.Input.encodeList<
              VirtualRouterSpecListener,
              Map<String, dynamic>
            >(listeners!, (value) => value.toMap()),
    };
  }

  factory VirtualRouterSpec.fromMap(Map<String, dynamic> map) {
    return VirtualRouterSpec(
      listeners: map['listeners'] == null
          ? null
          : pulumi.Input.decodeList<VirtualRouterSpecListener>(
              map['listeners'],
              (value) => VirtualRouterSpecListener.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}

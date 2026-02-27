// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_router_spec_listener/get_virtual_router_spec_listener.dart';

class GetVirtualRouterSpec {
  final List<GetVirtualRouterSpecListener> listeners;

  GetVirtualRouterSpec({
    required this.listeners,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['listeners'] = pulumi.Input.encodeList<GetVirtualRouterSpecListener,
        Map<String, dynamic>>(listeners, (value) => value.toMap());
    return map;
  }

  factory GetVirtualRouterSpec.fromMap(Map<String, dynamic> map) {
    return GetVirtualRouterSpec(
      listeners: pulumi.Input.decodeList<GetVirtualRouterSpecListener>(
          map['listeners'],
          (value) => GetVirtualRouterSpecListener.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

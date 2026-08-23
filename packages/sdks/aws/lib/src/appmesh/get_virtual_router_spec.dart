// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_router_spec_listener.dart';

class GetVirtualRouterSpec {
  final pulumi.Input<List<GetVirtualRouterSpecListener>> listeners;

  /// Creates a new [GetVirtualRouterSpec].
  /// [listeners] Required.
  const GetVirtualRouterSpec({
    required this.listeners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listeners': pulumi.Input.mapInputValue<List<GetVirtualRouterSpecListener>, List<Map<String, dynamic>>>(listeners, (value) => pulumi.Input.encodeList<GetVirtualRouterSpecListener, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualRouterSpec.fromMap(Map<String, dynamic> map) {
    return GetVirtualRouterSpec(
      listeners: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualRouterSpecListener>(map['listeners']!, (value) => GetVirtualRouterSpecListener.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

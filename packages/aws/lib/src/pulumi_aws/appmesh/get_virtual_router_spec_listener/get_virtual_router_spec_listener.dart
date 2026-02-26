// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_router_spec_listener_port_mapping/get_virtual_router_spec_listener_port_mapping.dart';

class GetVirtualRouterSpecListener {
  final List<GetVirtualRouterSpecListenerPortMapping> portMappings;

  GetVirtualRouterSpecListener({
    required this.portMappings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['portMappings'] = Input.encodeList<
        GetVirtualRouterSpecListenerPortMapping,
        Map<String, dynamic>>(portMappings, (value) => value.toMap());
    return map;
  }

  factory GetVirtualRouterSpecListener.fromMap(Map<String, dynamic> map) {
    return GetVirtualRouterSpecListener(
      portMappings: Input.decodeList<GetVirtualRouterSpecListenerPortMapping>(
          map['portMappings'],
          (value) => GetVirtualRouterSpecListenerPortMapping.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

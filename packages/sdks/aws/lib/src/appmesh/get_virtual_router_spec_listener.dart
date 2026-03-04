// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_router_spec_listener_port_mapping.dart';

class GetVirtualRouterSpecListener {
  final pulumi.Input<List<GetVirtualRouterSpecListenerPortMapping>>
  portMappings;

  /// Creates a new [GetVirtualRouterSpecListener].
  /// [portMappings] Required.
  GetVirtualRouterSpecListener({required this.portMappings});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portMappings':
          pulumi.Input.mapInputValue<
            List<GetVirtualRouterSpecListenerPortMapping>,
            List<Map<String, dynamic>>
          >(
            portMappings,
            (value) =>
                pulumi.Input.encodeList<
                  GetVirtualRouterSpecListenerPortMapping,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetVirtualRouterSpecListener.fromMap(Map<String, dynamic> map) {
    return GetVirtualRouterSpecListener(
      portMappings: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetVirtualRouterSpecListenerPortMapping>(
          map['portMappings']!,
          (value) => GetVirtualRouterSpecListenerPortMapping.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}

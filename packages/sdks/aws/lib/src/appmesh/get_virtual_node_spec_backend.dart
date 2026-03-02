// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_virtual_service.dart';

class GetVirtualNodeSpecBackend {
  final pulumi.Input<List<GetVirtualNodeSpecBackendVirtualService>> virtualServices;

  /// Creates a new [GetVirtualNodeSpecBackend].
  /// [virtualServices] Required.
  GetVirtualNodeSpecBackend({
    required this.virtualServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualServices': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendVirtualService>, List<Map<String, dynamic>>>(virtualServices, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendVirtualService, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecBackend.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackend(
      virtualServices: (pulumi.Input.decodeList<GetVirtualNodeSpecBackendVirtualService>(map['virtualServices']!, (value) => GetVirtualNodeSpecBackendVirtualService.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


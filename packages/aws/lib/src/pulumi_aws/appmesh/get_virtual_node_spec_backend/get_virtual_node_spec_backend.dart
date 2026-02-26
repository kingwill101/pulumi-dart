// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_node_spec_backend_virtual_service/get_virtual_node_spec_backend_virtual_service.dart';

class GetVirtualNodeSpecBackend {
  final List<GetVirtualNodeSpecBackendVirtualService> virtualServices;

  GetVirtualNodeSpecBackend({
    required this.virtualServices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['virtualServices'] = Input.encodeList<
        GetVirtualNodeSpecBackendVirtualService,
        Map<String, dynamic>>(virtualServices, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecBackend.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackend(
      virtualServices:
          Input.decodeList<GetVirtualNodeSpecBackendVirtualService>(
              map['virtualServices'],
              (value) => GetVirtualNodeSpecBackendVirtualService.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

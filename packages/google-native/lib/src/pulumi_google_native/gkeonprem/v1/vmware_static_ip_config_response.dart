// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'vmware_ip_block_response.dart';

/// Represents the network configuration required for the VMware user clusters with Static IP configurations.
class VmwareStaticIpConfigResponse {
  /// Represents the configuration values for static IP allocation to nodes.
  final List<VmwareIpBlockResponse> ipBlocks;

  VmwareStaticIpConfigResponse({
    required this.ipBlocks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipBlocks'] =
        Input.encodeList<VmwareIpBlockResponse, Map<String, dynamic>>(
            ipBlocks, (value) => value.toMap());
    return map;
  }

  factory VmwareStaticIpConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareStaticIpConfigResponse(
      ipBlocks: Input.decodeList<VmwareIpBlockResponse>(
          map['ipBlocks'],
          (value) => VmwareIpBlockResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

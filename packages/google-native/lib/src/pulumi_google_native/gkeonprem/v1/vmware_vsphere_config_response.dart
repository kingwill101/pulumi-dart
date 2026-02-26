// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'vmware_vsphere_tag_response.dart';

/// VmwareVsphereConfig represents configuration for the VMware VCenter for node pool.
class VmwareVsphereConfigResponse {
  /// The name of the vCenter datastore. Inherited from the user cluster.
  final String datastore;

  /// Vsphere host groups to apply to all VMs in the node pool
  final List<String> hostGroups;

  /// Tags to apply to VMs.
  final List<VmwareVsphereTagResponse> tags;

  VmwareVsphereConfigResponse({
    required this.datastore,
    required this.hostGroups,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datastore'] = datastore;
    map['hostGroups'] = hostGroups;
    map['tags'] =
        Input.encodeList<VmwareVsphereTagResponse, Map<String, dynamic>>(
            tags, (value) => value.toMap());
    return map;
  }

  factory VmwareVsphereConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareVsphereConfigResponse(
      datastore: map['datastore'] as String,
      hostGroups: (map['hostGroups'] as List).cast<String>(),
      tags: Input.decodeList<VmwareVsphereTagResponse>(
          map['tags'],
          (value) => VmwareVsphereTagResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

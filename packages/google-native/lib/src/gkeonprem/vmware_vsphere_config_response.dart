// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_vsphere_tag_response.dart';

/// VmwareVsphereConfig represents configuration for the VMware VCenter for node pool.
class VmwareVsphereConfigResponse {
  /// The name of the vCenter datastore. Inherited from the user cluster.
  final String datastore;
  /// Vsphere host groups to apply to all VMs in the node pool
  final List<String> hostGroups;
  /// Tags to apply to VMs.
  final List<VmwareVsphereTagResponse> tags;

  /// Creates a new [VmwareVsphereConfigResponse].
  /// [datastore] The name of the vCenter datastore. Inherited from the user cluster.
  /// [hostGroups] Vsphere host groups to apply to all VMs in the node pool
  /// [tags] Tags to apply to VMs.
  VmwareVsphereConfigResponse({
    required this.datastore,
    required this.hostGroups,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastore': datastore,
      'hostGroups': hostGroups,
      'tags': pulumi.Input.encodeList<VmwareVsphereTagResponse, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory VmwareVsphereConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareVsphereConfigResponse(
      datastore: map['datastore'] as String,
      hostGroups: (map['hostGroups'] as List).cast<String>(),
      tags: pulumi.Input.decodeList<VmwareVsphereTagResponse>(map['tags'], (value) => VmwareVsphereTagResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


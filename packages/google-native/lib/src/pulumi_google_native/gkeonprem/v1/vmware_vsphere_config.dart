// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'vmware_vsphere_tag.dart';

/// VmwareVsphereConfig represents configuration for the VMware VCenter for node pool.
class VmwareVsphereConfig {
  /// The name of the vCenter datastore. Inherited from the user cluster.
  final String? datastore;

  /// Vsphere host groups to apply to all VMs in the node pool
  final List<String>? hostGroups;

  /// Tags to apply to VMs.
  final List<VmwareVsphereTag>? tags;

  VmwareVsphereConfig({
    this.datastore,
    this.hostGroups,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datastoreValue = datastore;
    if (datastoreValue != null) {
      map['datastore'] = datastoreValue;
    }
    final hostGroupsValue = hostGroups;
    if (hostGroupsValue != null) {
      map['hostGroups'] = hostGroupsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = Input.encodeList<VmwareVsphereTag, Map<String, dynamic>>(
          tagsValue, (value) => value.toMap());
    }
    return map;
  }

  factory VmwareVsphereConfig.fromMap(Map<String, dynamic> map) {
    return VmwareVsphereConfig(
      datastore: map['datastore'] == null ? null : map['datastore'] as String,
      hostGroups: map['hostGroups'] == null
          ? null
          : (map['hostGroups'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : Input.decodeList<VmwareVsphereTag>(
              map['tags'],
              (value) => VmwareVsphereTag.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_node_pool_config_vsphere_config_tag.dart';

class VMwareNodePoolConfigVsphereConfig {
  /// The name of the vCenter datastore. Inherited from the user cluster.
  final String? datastore;

  /// Vsphere host groups to apply to all VMs in the node pool
  final List<String>? hostGroups;

  /// Tags to apply to VMs.
  /// Structure is documented below.
  final List<VMwareNodePoolConfigVsphereConfigTag>? tags;

  /// Creates a new [VMwareNodePoolConfigVsphereConfig].
  /// [datastore] The name of the vCenter datastore. Inherited from the user cluster.
  /// [hostGroups] Vsphere host groups to apply to all VMs in the node pool
  /// [tags] Tags to apply to VMs.
  VMwareNodePoolConfigVsphereConfig({
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
      map['tags'] = pulumi.Input.encodeList<
          VMwareNodePoolConfigVsphereConfigTag,
          Map<String, dynamic>>(tagsValue, (value) => value.toMap());
    }
    return map;
  }

  factory VMwareNodePoolConfigVsphereConfig.fromMap(Map<String, dynamic> map) {
    return VMwareNodePoolConfigVsphereConfig(
      datastore: map['datastore'] == null ? null : map['datastore'] as String,
      hostGroups: map['hostGroups'] == null
          ? null
          : (map['hostGroups'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : pulumi.Input.decodeList<VMwareNodePoolConfigVsphereConfigTag>(
              map['tags'],
              (value) => VMwareNodePoolConfigVsphereConfigTag.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

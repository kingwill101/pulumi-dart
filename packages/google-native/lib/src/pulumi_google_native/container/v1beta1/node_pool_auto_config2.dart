// ignore_for_file: unused_element, unnecessary_cast

import 'network_tags2.dart';
import 'resource_manager_tags2.dart';

/// node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters
class NodePoolAutoConfig2 {
  /// The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster creation. Each tag within the list must comply with RFC1035.
  final NetworkTags2? networkTags;

  /// Resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies.
  final ResourceManagerTags2? resourceManagerTags;

  NodePoolAutoConfig2({
    this.networkTags,
    this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final networkTagsValue = networkTags;
    if (networkTagsValue != null) {
      map['networkTags'] = networkTagsValue.toMap();
    }
    final resourceManagerTagsValue = resourceManagerTags;
    if (resourceManagerTagsValue != null) {
      map['resourceManagerTags'] = resourceManagerTagsValue.toMap();
    }
    return map;
  }

  factory NodePoolAutoConfig2.fromMap(Map<String, dynamic> map) {
    return NodePoolAutoConfig2(
      networkTags: map['networkTags'] == null
          ? null
          : NetworkTags2.fromMap(
              (map['networkTags'] as Map).cast<String, dynamic>()),
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : ResourceManagerTags2.fromMap(
              (map['resourceManagerTags'] as Map).cast<String, dynamic>()),
    );
  }
}

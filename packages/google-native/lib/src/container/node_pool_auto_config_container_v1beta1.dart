// ignore_for_file: unused_element, unnecessary_cast

import 'network_tags_container_v1beta1.dart';
import 'resource_manager_tags_container_v1beta1.dart';

/// node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters
class NodePoolAutoConfigContainerV1beta1 {
  /// The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster creation. Each tag within the list must comply with RFC1035.
  final NetworkTagsContainerV1beta1? networkTags;

  /// Resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies.
  final ResourceManagerTagsContainerV1beta1? resourceManagerTags;

  /// Creates a new [NodePoolAutoConfigContainerV1beta1].
  /// [networkTags] The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster creation. Each tag within the list must comply with RFC1035.
  /// [resourceManagerTags] Resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies.
  NodePoolAutoConfigContainerV1beta1({
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

  factory NodePoolAutoConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodePoolAutoConfigContainerV1beta1(
      networkTags: map['networkTags'] == null
          ? null
          : NetworkTagsContainerV1beta1.fromMap(
              (map['networkTags'] as Map).cast<String, dynamic>()),
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : ResourceManagerTagsContainerV1beta1.fromMap(
              (map['resourceManagerTags'] as Map).cast<String, dynamic>()),
    );
  }
}

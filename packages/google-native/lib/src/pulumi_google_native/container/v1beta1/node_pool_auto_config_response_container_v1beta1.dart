// ignore_for_file: unused_element, unnecessary_cast

import 'network_tags_response_container_v1beta1.dart';
import 'resource_manager_tags_response_container_v1beta1.dart';

/// node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters
class NodePoolAutoConfigResponseContainerV1beta1 {
  /// The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster creation. Each tag within the list must comply with RFC1035.
  final NetworkTagsResponseContainerV1beta1 networkTags;

  /// Resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies.
  final ResourceManagerTagsResponseContainerV1beta1 resourceManagerTags;

  NodePoolAutoConfigResponseContainerV1beta1({
    required this.networkTags,
    required this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkTags'] = networkTags.toMap();
    map['resourceManagerTags'] = resourceManagerTags.toMap();
    return map;
  }

  factory NodePoolAutoConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return NodePoolAutoConfigResponseContainerV1beta1(
      networkTags: NetworkTagsResponseContainerV1beta1.fromMap(
          (map['networkTags'] as Map).cast<String, dynamic>()),
      resourceManagerTags: ResourceManagerTagsResponseContainerV1beta1.fromMap(
          (map['resourceManagerTags'] as Map).cast<String, dynamic>()),
    );
  }
}

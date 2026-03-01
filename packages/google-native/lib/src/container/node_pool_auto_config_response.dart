// ignore_for_file: unused_element, unnecessary_cast

import 'network_tags_response.dart';
import 'resource_manager_tags_response.dart';

/// Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
class NodePoolAutoConfigResponse {
  /// The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster creation. Each tag within the list must comply with RFC1035.
  final NetworkTagsResponse networkTags;

  /// Resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies.
  final ResourceManagerTagsResponse resourceManagerTags;

  /// Creates a new [NodePoolAutoConfigResponse].
  /// [networkTags] The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster creation. Each tag within the list must comply with RFC1035.
  /// [resourceManagerTags] Resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies.
  NodePoolAutoConfigResponse({
    required this.networkTags,
    required this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkTags': networkTags.toMap(),
      'resourceManagerTags': resourceManagerTags.toMap(),
    };
  }

  factory NodePoolAutoConfigResponse.fromMap(Map<String, dynamic> map) {
    return NodePoolAutoConfigResponse(
      networkTags: NetworkTagsResponse.fromMap(
        (map['networkTags'] as Map).cast<String, dynamic>(),
      ),
      resourceManagerTags: ResourceManagerTagsResponse.fromMap(
        (map['resourceManagerTags'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}

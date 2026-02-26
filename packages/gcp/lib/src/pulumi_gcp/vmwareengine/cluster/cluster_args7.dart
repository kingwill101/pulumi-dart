// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_autoscaling_settings/cluster_autoscaling_settings.dart';
import '../cluster_node_type_config/cluster_node_type_config.dart';

/// The set of arguments for Cluster.
class ClusterArgs7 {
  /// Configuration of the autoscaling applied to this cluster
  /// Structure is documented below.
  final Input<ClusterAutoscalingSettings>? autoscalingSettings;

  /// The ID of the Cluster.
  final Input<String>? name;

  /// The map of cluster node types in this cluster,
  /// where the key is canonical identifier of the node type (corresponds to the NodeType).
  /// Structure is documented below.
  final Input<List<ClusterNodeTypeConfig>>? nodeTypeConfigs;

  /// The resource name of the private cloud to create a new cluster in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  final Input<String> parent;

  ClusterArgs7({
    this.autoscalingSettings,
    this.name,
    this.nodeTypeConfigs,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingSettingsValue = autoscalingSettings;
    if (autoscalingSettingsValue != null) {
      map['autoscalingSettings'] = Input.mapOptionalInputValue<
              ClusterAutoscalingSettings, Map<String, dynamic>>(
          autoscalingSettingsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nodeTypeConfigsValue = nodeTypeConfigs;
    if (nodeTypeConfigsValue != null) {
      map['nodeTypeConfigs'] = Input.mapOptionalInputValue<
              List<ClusterNodeTypeConfig>, List<Map<String, dynamic>>>(
          nodeTypeConfigsValue,
          (value) =>
              Input.encodeList<ClusterNodeTypeConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['parent'] = parent;
    return map;
  }

  factory ClusterArgs7.fromMap(Map<String, dynamic> map) {
    return ClusterArgs7(
      autoscalingSettings: Input.asOptionalInput<ClusterAutoscalingSettings>(
          map['autoscalingSettings']),
      name: Input.asOptionalInput<String>(map['name']),
      nodeTypeConfigs: Input.asOptionalInput<List<ClusterNodeTypeConfig>>(
          map['nodeTypeConfigs']),
      parent: Input.asInput<String>(map['parent']),
    );
  }
}

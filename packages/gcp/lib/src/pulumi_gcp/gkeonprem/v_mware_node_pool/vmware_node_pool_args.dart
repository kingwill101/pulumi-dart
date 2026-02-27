// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vmware_node_pool_config/vmware_node_pool_config.dart';
import '../vmware_node_pool_node_pool_autoscaling/vmware_node_pool_node_pool_autoscaling.dart';

/// The set of arguments for VMwareNodePool.
class VMwareNodePoolArgs {
  /// Annotations on the node Pool.
  /// This field has the same restrictions as Kubernetes annotations.
  /// The total size of all keys and values combined is limited to 256k.
  /// Key can have 2 segments: prefix (optional) and name (required),
  /// separated by a slash (/).
  /// Prefix must be a DNS subdomain.
  /// Name must be 63 characters or less, begin and end with alphanumerics,
  /// with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// The node configuration of the node pool.
  /// Structure is documented below.
  final Input<VMwareNodePoolConfig> config;

  /// The display name for the node pool.
  final Input<String>? displayName;

  /// The location of the resource.
  final Input<String> location;

  /// The vmware node pool name.
  final Input<String>? name;

  /// Node Pool autoscaling config for the node pool.
  /// Structure is documented below.
  final Input<VMwareNodePoolNodePoolAutoscaling>? nodePoolAutoscaling;

  /// Anthos version for the node pool. Defaults to the user cluster version.
  final Input<String>? onPremVersion;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The cluster this node pool belongs to.
  final Input<String> vmwareCluster;

  VMwareNodePoolArgs({
    this.annotations,
    required this.config,
    this.displayName,
    required this.location,
    this.name,
    this.nodePoolAutoscaling,
    this.onPremVersion,
    this.project,
    required this.vmwareCluster,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['config'] =
        Input.mapInputValue<VMwareNodePoolConfig, Map<String, dynamic>>(
            config, (value) => value.toMap());
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nodePoolAutoscalingValue = nodePoolAutoscaling;
    if (nodePoolAutoscalingValue != null) {
      map['nodePoolAutoscaling'] = Input.mapOptionalInputValue<
              VMwareNodePoolNodePoolAutoscaling, Map<String, dynamic>>(
          nodePoolAutoscalingValue, (value) => value.toMap());
    }
    final onPremVersionValue = onPremVersion;
    if (onPremVersionValue != null) {
      map['onPremVersion'] = onPremVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['vmwareCluster'] = vmwareCluster;
    return map;
  }

  factory VMwareNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return VMwareNodePoolArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      config: Input.asInput<VMwareNodePoolConfig>(map['config']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      nodePoolAutoscaling:
          Input.asOptionalInput<VMwareNodePoolNodePoolAutoscaling>(
              map['nodePoolAutoscaling']),
      onPremVersion: Input.asOptionalInput<String>(map['onPremVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      vmwareCluster: Input.asInput<String>(map['vmwareCluster']),
    );
  }
}

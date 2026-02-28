// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_node_pool_config.dart';
import 'vmware_node_pool_node_pool_autoscaling.dart';

/// {@template pulumi_gkeonprem_v_mware_node_pool_vmware_node_pool_args_doc}
/// The set of arguments for VMwareNodePool.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v_mware_node_pool_vmware_node_pool_args_doc}
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
  final pulumi.Input<Map<String, String>>? annotations;

  /// The node configuration of the node pool.
  /// Structure is documented below.
  final pulumi.Input<VMwareNodePoolConfig> config;

  /// The display name for the node pool.
  final pulumi.Input<String>? displayName;

  /// The location of the resource.
  final pulumi.Input<String> location;

  /// The vmware node pool name.
  final pulumi.Input<String>? name;

  /// Node Pool autoscaling config for the node pool.
  /// Structure is documented below.
  final pulumi.Input<VMwareNodePoolNodePoolAutoscaling>? nodePoolAutoscaling;

  /// Anthos version for the node pool. Defaults to the user cluster version.
  final pulumi.Input<String>? onPremVersion;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The cluster this node pool belongs to.
  final pulumi.Input<String> vmwareCluster;

  /// Creates a new [VMwareNodePoolArgs].
  /// [annotations] Annotations on the node Pool.
  /// [config] The node configuration of the node pool.
  /// [displayName] The display name for the node pool.
  /// [location] The location of the resource.
  /// [name] The vmware node pool name.
  /// [nodePoolAutoscaling] Node Pool autoscaling config for the node pool.
  /// [onPremVersion] Anthos version for the node pool. Defaults to the user cluster version.
  /// [project] The ID of the project in which the resource belongs.
  /// [vmwareCluster] The cluster this node pool belongs to.
  VMwareNodePoolArgs({
    Map<String, String>? annotations,
    required VMwareNodePoolConfig config,
    String? displayName,
    required String location,
    String? name,
    VMwareNodePoolNodePoolAutoscaling? nodePoolAutoscaling,
    String? onPremVersion,
    String? project,
    required String vmwareCluster,
  })  : annotations =
            pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
        config = pulumi.Input.asInput<VMwareNodePoolConfig>(config),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        location = pulumi.Input.asInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        nodePoolAutoscaling =
            pulumi.Input.asOptionalInput<VMwareNodePoolNodePoolAutoscaling>(
                nodePoolAutoscaling),
        onPremVersion = pulumi.Input.asOptionalInput<String>(onPremVersion),
        project = pulumi.Input.asOptionalInput<String>(project),
        vmwareCluster = pulumi.Input.asInput<String>(vmwareCluster);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['config'] =
        pulumi.Input.mapInputValue<VMwareNodePoolConfig, Map<String, dynamic>>(
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
      map['nodePoolAutoscaling'] = pulumi.Input.mapOptionalInputValue<
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
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      config: VMwareNodePoolConfig.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nodePoolAutoscaling: map['nodePoolAutoscaling'] == null
          ? null
          : VMwareNodePoolNodePoolAutoscaling.fromMap(
              (map['nodePoolAutoscaling'] as Map).cast<String, dynamic>()),
      onPremVersion:
          map['onPremVersion'] == null ? null : map['onPremVersion'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      vmwareCluster: map['vmwareCluster'] as String,
    );
  }
}

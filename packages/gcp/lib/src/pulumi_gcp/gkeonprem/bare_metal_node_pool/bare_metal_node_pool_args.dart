// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bare_metal_node_pool_node_pool_config/bare_metal_node_pool_node_pool_config.dart';

/// The set of arguments for BareMetalNodePool.
class BareMetalNodePoolArgs {
  /// Annotations on the Bare Metal Node Pool.
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

  /// The cluster this node pool belongs to.
  final Input<String> bareMetalCluster;

  /// The display name for the Bare Metal Node Pool.
  final Input<String>? displayName;

  /// The location of the resource.
  final Input<String> location;

  /// The bare metal node pool name.
  final Input<String>? name;

  /// Node pool configuration.
  /// Structure is documented below.
  final Input<BareMetalNodePoolNodePoolConfig> nodePoolConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  BareMetalNodePoolArgs({
    this.annotations,
    required this.bareMetalCluster,
    this.displayName,
    required this.location,
    this.name,
    required this.nodePoolConfig,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['bareMetalCluster'] = bareMetalCluster;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['nodePoolConfig'] = Input.mapInputValue<BareMetalNodePoolNodePoolConfig,
        Map<String, dynamic>>(nodePoolConfig, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory BareMetalNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return BareMetalNodePoolArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      bareMetalCluster: Input.asInput<String>(map['bareMetalCluster']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      nodePoolConfig:
          Input.asInput<BareMetalNodePoolNodePoolConfig>(map['nodePoolConfig']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_config_replica/instance_config_replica.dart';

/// The set of arguments for InstanceConfig.
class InstanceConfigArgs {
  /// Base configuration name, e.g. nam3, based on which this configuration is created.
  /// Only set for user managed configurations.
  /// baseConfig must refer to a configuration of type GOOGLE_MANAGED in the same project as this configuration.
  final pulumi.Input<String>? baseConfig;

  /// The name of this instance configuration as it appears in UIs.
  final pulumi.Input<String> displayName;

  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// A unique identifier for the instance configuration. Values are of the
  /// form projects/<project>/instanceConfigs/[a-z][-a-z0-9]*
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The geographic placement of nodes in this instance configuration and their replication properties.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceConfigReplica>> replicas;

  InstanceConfigArgs({
    this.baseConfig,
    required this.displayName,
    this.labels,
    this.name,
    this.project,
    required this.replicas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final baseConfigValue = baseConfig;
    if (baseConfigValue != null) {
      map['baseConfig'] = baseConfigValue;
    }
    map['displayName'] = displayName;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['replicas'] = pulumi.Input.mapInputValue<List<InstanceConfigReplica>,
            List<Map<String, dynamic>>>(
        replicas,
        (value) => pulumi.Input.encodeList<InstanceConfigReplica,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory InstanceConfigArgs.fromMap(Map<String, dynamic> map) {
    return InstanceConfigArgs(
      baseConfig: pulumi.Input.asOptionalInput<String>(map['baseConfig']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      replicas:
          pulumi.Input.asInput<List<InstanceConfigReplica>>(map['replicas']),
    );
  }
}

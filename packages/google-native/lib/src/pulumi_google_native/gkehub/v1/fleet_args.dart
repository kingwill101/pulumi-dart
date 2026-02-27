// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_cluster_config.dart';

/// The set of arguments for Fleet.
class FleetArgs {
  /// Optional. The default cluster configurations to apply across the fleet.
  final pulumi.Input<DefaultClusterConfig>? defaultClusterConfig;

  /// Optional. A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `Production Fleet`
  final pulumi.Input<String>? displayName;

  /// Optional. Labels for this Fleet.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  FleetArgs({
    this.defaultClusterConfig,
    this.displayName,
    this.labels,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultClusterConfigValue = defaultClusterConfig;
    if (defaultClusterConfigValue != null) {
      map['defaultClusterConfig'] = pulumi.Input.mapOptionalInputValue<
              DefaultClusterConfig, Map<String, dynamic>>(
          defaultClusterConfigValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory FleetArgs.fromMap(Map<String, dynamic> map) {
    return FleetArgs(
      defaultClusterConfig: pulumi.Input.asOptionalInput<DefaultClusterConfig>(
          map['defaultClusterConfig']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'default_cluster_config3.dart';

/// The set of arguments for Fleet.
class FleetArgs3 {
  /// Optional. The default cluster configurations to apply across the fleet.
  final Input<DefaultClusterConfig3>? defaultClusterConfig;

  /// Optional. A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `Production Fleet`
  final Input<String>? displayName;

  /// Optional. Labels for this Fleet.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  FleetArgs3({
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
      map['defaultClusterConfig'] = Input.mapOptionalInputValue<
              DefaultClusterConfig3, Map<String, dynamic>>(
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

  factory FleetArgs3.fromMap(Map<String, dynamic> map) {
    return FleetArgs3(
      defaultClusterConfig: Input.asOptionalInput<DefaultClusterConfig3>(
          map['defaultClusterConfig']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}

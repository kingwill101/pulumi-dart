// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../fleet_default_cluster_config/fleet_default_cluster_config.dart';

/// The set of arguments for Fleet.
class FleetArgs {
  /// The default cluster configurations to apply across the fleet.
  /// Structure is documented below.
  final Input<FleetDefaultClusterConfig>? defaultClusterConfig;

  /// A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.
  /// Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point.
  final Input<String>? displayName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  FleetArgs({
    this.defaultClusterConfig,
    this.displayName,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultClusterConfigValue = defaultClusterConfig;
    if (defaultClusterConfigValue != null) {
      map['defaultClusterConfig'] = Input.mapOptionalInputValue<
              FleetDefaultClusterConfig, Map<String, dynamic>>(
          defaultClusterConfigValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory FleetArgs.fromMap(Map<String, dynamic> map) {
    return FleetArgs(
      defaultClusterConfig: Input.asOptionalInput<FleetDefaultClusterConfig>(
          map['defaultClusterConfig']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}

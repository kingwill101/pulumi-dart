// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_default_cluster_config.dart';

/// {@template pulumi_gkehub_fleet_fleet_args_doc}
/// The set of arguments for Fleet.
/// {@endtemplate}
/// {@macro pulumi_gkehub_fleet_fleet_args_doc}
class FleetArgs {
  /// The default cluster configurations to apply across the fleet.
  /// Structure is documented below.
  final pulumi.Input<FleetDefaultClusterConfig>? defaultClusterConfig;

  /// A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.
  /// Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point.
  final pulumi.Input<String>? displayName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [FleetArgs].
  /// [defaultClusterConfig] The default cluster configurations to apply across the fleet.
  /// [displayName] A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.
  /// [project] The ID of the project in which the resource belongs.
  FleetArgs({
    FleetDefaultClusterConfig? defaultClusterConfig,
    String? displayName,
    String? project,
  })  : defaultClusterConfig =
            pulumi.Input.asOptionalInput<FleetDefaultClusterConfig>(
                defaultClusterConfig),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultClusterConfigValue = defaultClusterConfig;
    if (defaultClusterConfigValue != null) {
      map['defaultClusterConfig'] = pulumi.Input.mapOptionalInputValue<
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
      defaultClusterConfig: map['defaultClusterConfig'] == null
          ? null
          : FleetDefaultClusterConfig.fromMap(
              (map['defaultClusterConfig'] as Map).cast<String, dynamic>()),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

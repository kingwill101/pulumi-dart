// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../feature_fleet_default_member_config/feature_fleet_default_member_config.dart';
import '../feature_spec/feature_spec.dart';

/// The set of arguments for Feature.
class FeatureArgs {
  /// Optional. Fleet Default Membership Configuration.
  /// Structure is documented below.
  final pulumi.Input<FeatureFleetDefaultMemberConfig>? fleetDefaultMemberConfig;

  /// GCP labels for this Feature.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// The full, unique name of this Feature resource
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused.
  /// Structure is documented below.
  final pulumi.Input<FeatureSpec>? spec;

  FeatureArgs({
    this.fleetDefaultMemberConfig,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fleetDefaultMemberConfigValue = fleetDefaultMemberConfig;
    if (fleetDefaultMemberConfigValue != null) {
      map['fleetDefaultMemberConfig'] = pulumi.Input.mapOptionalInputValue<
              FeatureFleetDefaultMemberConfig, Map<String, dynamic>>(
          fleetDefaultMemberConfigValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final specValue = spec;
    if (specValue != null) {
      map['spec'] =
          pulumi.Input.mapOptionalInputValue<FeatureSpec, Map<String, dynamic>>(
              specValue, (value) => value.toMap());
    }
    return map;
  }

  factory FeatureArgs.fromMap(Map<String, dynamic> map) {
    return FeatureArgs(
      fleetDefaultMemberConfig:
          pulumi.Input.asOptionalInput<FeatureFleetDefaultMemberConfig>(
              map['fleetDefaultMemberConfig']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      spec: pulumi.Input.asOptionalInput<FeatureSpec>(map['spec']),
    );
  }
}

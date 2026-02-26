// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../feature_fleet_default_member_config/feature_fleet_default_member_config.dart';
import '../feature_spec/feature_spec.dart';

/// The set of arguments for Feature.
class FeatureArgs {
  /// Optional. Fleet Default Membership Configuration.
  /// Structure is documented below.
  final Input<FeatureFleetDefaultMemberConfig>? fleetDefaultMemberConfig;

  /// GCP labels for this Feature.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location for the resource
  final Input<String> location;

  /// The full, unique name of this Feature resource
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused.
  /// Structure is documented below.
  final Input<FeatureSpec>? spec;

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
      map['fleetDefaultMemberConfig'] = Input.mapOptionalInputValue<
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
          Input.mapOptionalInputValue<FeatureSpec, Map<String, dynamic>>(
              specValue, (value) => value.toMap());
    }
    return map;
  }

  factory FeatureArgs.fromMap(Map<String, dynamic> map) {
    return FeatureArgs(
      fleetDefaultMemberConfig:
          Input.asOptionalInput<FeatureFleetDefaultMemberConfig>(
              map['fleetDefaultMemberConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      spec: Input.asOptionalInput<FeatureSpec>(map['spec']),
    );
  }
}

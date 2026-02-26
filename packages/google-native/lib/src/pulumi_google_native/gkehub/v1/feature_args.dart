// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'common_feature_spec.dart';
import 'common_fleet_default_member_config_spec.dart';

/// The set of arguments for Feature.
class FeatureArgs {
  /// The ID of the feature to create.
  final Input<String>? featureId;

  /// Optional. Feature configuration applicable to all memberships of the fleet.
  final Input<CommonFleetDefaultMemberConfigSpec>? fleetDefaultMemberConfig;

  /// Labels for this Feature.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Optional. Membership-specific configuration for this Feature. If this Feature does not support any per-Membership configuration, this field may be unused. The keys indicate which Membership the configuration is for, in the form: `projects/{p}/locations/{l}/memberships/{m}` Where {p} is the project, {l} is a valid location and {m} is a valid Membership in this project at that location. {p} WILL match the Feature's project. {p} will always be returned as the project number, but the project ID is also accepted during input. If the same Membership is specified in the map twice (using the project ID form, and the project number form), exactly ONE of the entries will be saved, with no guarantees as to which. For this reason, it is recommended the same format be used for all entries when mutating a Feature.
  final Input<Map<String, String>>? membershipSpecs;
  final Input<String>? project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Optional. Scope-specific configuration for this Feature. If this Feature does not support any per-Scope configuration, this field may be unused. The keys indicate which Scope the configuration is for, in the form: `projects/{p}/locations/global/scopes/{s}` Where {p} is the project, {s} is a valid Scope in this project. {p} WILL match the Feature's project. {p} will always be returned as the project number, but the project ID is also accepted during input. If the same Scope is specified in the map twice (using the project ID form, and the project number form), exactly ONE of the entries will be saved, with no guarantees as to which. For this reason, it is recommended the same format be used for all entries when mutating a Feature.
  final Input<Map<String, String>>? scopeSpecs;

  /// Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused.
  final Input<CommonFeatureSpec>? spec;

  FeatureArgs({
    this.featureId,
    this.fleetDefaultMemberConfig,
    this.labels,
    this.location,
    this.membershipSpecs,
    this.project,
    this.requestId,
    this.scopeSpecs,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final featureIdValue = featureId;
    if (featureIdValue != null) {
      map['featureId'] = featureIdValue;
    }
    final fleetDefaultMemberConfigValue = fleetDefaultMemberConfig;
    if (fleetDefaultMemberConfigValue != null) {
      map['fleetDefaultMemberConfig'] = Input.mapOptionalInputValue<
              CommonFleetDefaultMemberConfigSpec, Map<String, dynamic>>(
          fleetDefaultMemberConfigValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final membershipSpecsValue = membershipSpecs;
    if (membershipSpecsValue != null) {
      map['membershipSpecs'] = membershipSpecsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final scopeSpecsValue = scopeSpecs;
    if (scopeSpecsValue != null) {
      map['scopeSpecs'] = scopeSpecsValue;
    }
    final specValue = spec;
    if (specValue != null) {
      map['spec'] =
          Input.mapOptionalInputValue<CommonFeatureSpec, Map<String, dynamic>>(
              specValue, (value) => value.toMap());
    }
    return map;
  }

  factory FeatureArgs.fromMap(Map<String, dynamic> map) {
    return FeatureArgs(
      featureId: Input.asOptionalInput<String>(map['featureId']),
      fleetDefaultMemberConfig:
          Input.asOptionalInput<CommonFleetDefaultMemberConfigSpec>(
              map['fleetDefaultMemberConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      membershipSpecs:
          Input.asOptionalInput<Map<String, String>>(map['membershipSpecs']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      scopeSpecs: Input.asOptionalInput<Map<String, String>>(map['scopeSpecs']),
      spec: Input.asOptionalInput<CommonFeatureSpec>(map['spec']),
    );
  }
}

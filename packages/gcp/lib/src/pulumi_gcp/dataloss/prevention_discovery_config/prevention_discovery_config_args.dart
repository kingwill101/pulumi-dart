// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../prevention_discovery_config_action/prevention_discovery_config_action.dart';
import '../prevention_discovery_config_org_config/prevention_discovery_config_org_config.dart';
import '../prevention_discovery_config_other_cloud_starting_location/prevention_discovery_config_other_cloud_starting_location.dart';
import '../prevention_discovery_config_target/prevention_discovery_config_target.dart';

/// The set of arguments for PreventionDiscoveryConfig.
class PreventionDiscoveryConfigArgs {
  /// Actions to execute at the completion of scanning
  /// Structure is documented below.
  final Input<List<PreventionDiscoveryConfigAction>>? actions;

  /// Display Name (max 1000 Chars)
  final Input<String>? displayName;

  /// Detection logic for profile generation
  final Input<List<String>>? inspectTemplates;

  /// Location to create the discovery config in.
  final Input<String> location;

  /// A nested object resource.
  /// Structure is documented below.
  final Input<PreventionDiscoveryConfigOrgConfig>? orgConfig;

  /// A nested object resource.
  /// Structure is documented below.
  final Input<PreventionDiscoveryConfigOtherCloudStartingLocation>?
      otherCloudStartingLocation;

  /// The parent of the discovery config in any of the following formats:
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  final Input<String> parent;

  /// Required. A status for this configuration
  /// Possible values are: `RUNNING`, `PAUSED`.
  final Input<String>? status;

  /// Target to match against for determining what to scan and how frequently
  /// Structure is documented below.
  final Input<List<PreventionDiscoveryConfigTarget>>? targets;

  PreventionDiscoveryConfigArgs({
    this.actions,
    this.displayName,
    this.inspectTemplates,
    required this.location,
    this.orgConfig,
    this.otherCloudStartingLocation,
    required this.parent,
    this.status,
    this.targets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionsValue = actions;
    if (actionsValue != null) {
      map['actions'] = Input.mapOptionalInputValue<
              List<PreventionDiscoveryConfigAction>,
              List<Map<String, dynamic>>>(
          actionsValue,
          (value) => Input.encodeList<PreventionDiscoveryConfigAction,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final inspectTemplatesValue = inspectTemplates;
    if (inspectTemplatesValue != null) {
      map['inspectTemplates'] = inspectTemplatesValue;
    }
    map['location'] = location;
    final orgConfigValue = orgConfig;
    if (orgConfigValue != null) {
      map['orgConfig'] = Input.mapOptionalInputValue<
          PreventionDiscoveryConfigOrgConfig,
          Map<String, dynamic>>(orgConfigValue, (value) => value.toMap());
    }
    final otherCloudStartingLocationValue = otherCloudStartingLocation;
    if (otherCloudStartingLocationValue != null) {
      map['otherCloudStartingLocation'] = Input.mapOptionalInputValue<
              PreventionDiscoveryConfigOtherCloudStartingLocation,
              Map<String, dynamic>>(
          otherCloudStartingLocationValue, (value) => value.toMap());
    }
    map['parent'] = parent;
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final targetsValue = targets;
    if (targetsValue != null) {
      map['targets'] = Input.mapOptionalInputValue<
              List<PreventionDiscoveryConfigTarget>,
              List<Map<String, dynamic>>>(
          targetsValue,
          (value) => Input.encodeList<PreventionDiscoveryConfigTarget,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory PreventionDiscoveryConfigArgs.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigArgs(
      actions: Input.asOptionalInput<List<PreventionDiscoveryConfigAction>>(
          map['actions']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      inspectTemplates:
          Input.asOptionalInput<List<String>>(map['inspectTemplates']),
      location: Input.asInput<String>(map['location']),
      orgConfig: Input.asOptionalInput<PreventionDiscoveryConfigOrgConfig>(
          map['orgConfig']),
      otherCloudStartingLocation: Input.asOptionalInput<
              PreventionDiscoveryConfigOtherCloudStartingLocation>(
          map['otherCloudStartingLocation']),
      parent: Input.asInput<String>(map['parent']),
      status: Input.asOptionalInput<String>(map['status']),
      targets: Input.asOptionalInput<List<PreventionDiscoveryConfigTarget>>(
          map['targets']),
    );
  }
}

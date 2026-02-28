// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_action.dart';
import 'prevention_discovery_config_org_config.dart';
import 'prevention_discovery_config_other_cloud_starting_location.dart';
import 'prevention_discovery_config_target.dart';

/// {@template pulumi_dataloss_prevention_discovery_config_prevention_discovery_config_args_doc}
/// The set of arguments for PreventionDiscoveryConfig.
/// {@endtemplate}
/// {@macro pulumi_dataloss_prevention_discovery_config_prevention_discovery_config_args_doc}
class PreventionDiscoveryConfigArgs {
  /// Actions to execute at the completion of scanning
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDiscoveryConfigAction>>? actions;

  /// Display Name (max 1000 Chars)
  final pulumi.Input<String>? displayName;

  /// Detection logic for profile generation
  final pulumi.Input<List<String>>? inspectTemplates;

  /// Location to create the discovery config in.
  final pulumi.Input<String> location;

  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigOrgConfig>? orgConfig;

  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigOtherCloudStartingLocation>?
      otherCloudStartingLocation;

  /// The parent of the discovery config in any of the following formats:
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  final pulumi.Input<String> parent;

  /// Required. A status for this configuration
  /// Possible values are: `RUNNING`, `PAUSED`.
  final pulumi.Input<String>? status;

  /// Target to match against for determining what to scan and how frequently
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDiscoveryConfigTarget>>? targets;

  /// Creates a new [PreventionDiscoveryConfigArgs].
  /// [actions] Actions to execute at the completion of scanning
  /// [displayName] Display Name (max 1000 Chars)
  /// [inspectTemplates] Detection logic for profile generation
  /// [location] Location to create the discovery config in.
  /// [orgConfig] A nested object resource.
  /// [otherCloudStartingLocation] A nested object resource.
  /// [parent] The parent of the discovery config in any of the following formats:
  /// [status] Required. A status for this configuration
  /// [targets] Target to match against for determining what to scan and how frequently
  PreventionDiscoveryConfigArgs({
    List<PreventionDiscoveryConfigAction>? actions,
    String? displayName,
    List<String>? inspectTemplates,
    required String location,
    PreventionDiscoveryConfigOrgConfig? orgConfig,
    PreventionDiscoveryConfigOtherCloudStartingLocation?
        otherCloudStartingLocation,
    required String parent,
    String? status,
    List<PreventionDiscoveryConfigTarget>? targets,
  })  : actions =
            pulumi.Input.asOptionalInput<List<PreventionDiscoveryConfigAction>>(
                actions),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        inspectTemplates =
            pulumi.Input.asOptionalInput<List<String>>(inspectTemplates),
        location = pulumi.Input.asInput<String>(location),
        orgConfig =
            pulumi.Input.asOptionalInput<PreventionDiscoveryConfigOrgConfig>(
                orgConfig),
        otherCloudStartingLocation = pulumi.Input.asOptionalInput<
                PreventionDiscoveryConfigOtherCloudStartingLocation>(
            otherCloudStartingLocation),
        parent = pulumi.Input.asInput<String>(parent),
        status = pulumi.Input.asOptionalInput<String>(status),
        targets =
            pulumi.Input.asOptionalInput<List<PreventionDiscoveryConfigTarget>>(
                targets);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionsValue = actions;
    if (actionsValue != null) {
      map['actions'] = pulumi.Input.mapOptionalInputValue<
              List<PreventionDiscoveryConfigAction>,
              List<Map<String, dynamic>>>(
          actionsValue,
          (value) => pulumi.Input.encodeList<PreventionDiscoveryConfigAction,
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
      map['orgConfig'] = pulumi.Input.mapOptionalInputValue<
          PreventionDiscoveryConfigOrgConfig,
          Map<String, dynamic>>(orgConfigValue, (value) => value.toMap());
    }
    final otherCloudStartingLocationValue = otherCloudStartingLocation;
    if (otherCloudStartingLocationValue != null) {
      map['otherCloudStartingLocation'] = pulumi.Input.mapOptionalInputValue<
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
      map['targets'] = pulumi.Input.mapOptionalInputValue<
              List<PreventionDiscoveryConfigTarget>,
              List<Map<String, dynamic>>>(
          targetsValue,
          (value) => pulumi.Input.encodeList<PreventionDiscoveryConfigTarget,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory PreventionDiscoveryConfigArgs.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigArgs(
      actions: map['actions'] == null
          ? null
          : pulumi.Input.decodeList<PreventionDiscoveryConfigAction>(
              map['actions'],
              (value) => PreventionDiscoveryConfigAction.fromMap(
                  (value as Map).cast<String, dynamic>())),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      inspectTemplates: map['inspectTemplates'] == null
          ? null
          : (map['inspectTemplates'] as List).cast<String>(),
      location: map['location'] as String,
      orgConfig: map['orgConfig'] == null
          ? null
          : PreventionDiscoveryConfigOrgConfig.fromMap(
              (map['orgConfig'] as Map).cast<String, dynamic>()),
      otherCloudStartingLocation: map['otherCloudStartingLocation'] == null
          ? null
          : PreventionDiscoveryConfigOtherCloudStartingLocation.fromMap(
              (map['otherCloudStartingLocation'] as Map)
                  .cast<String, dynamic>()),
      parent: map['parent'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      targets: map['targets'] == null
          ? null
          : pulumi.Input.decodeList<PreventionDiscoveryConfigTarget>(
              map['targets'],
              (value) => PreventionDiscoveryConfigTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

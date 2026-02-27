// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_data_profile_action.dart';
import 'google_privacy_dlp_v2_discovery_target.dart';
import 'google_privacy_dlp_v2_org_config.dart';
import 'organization_discovery_config_status.dart';

/// The set of arguments for OrganizationDiscoveryConfig.
class OrganizationDiscoveryConfigArgs {
  /// Actions to execute at the completion of scanning.
  final Input<List<GooglePrivacyDlpV2DataProfileAction>>? actions;

  /// The config ID can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final Input<String>? configId;

  /// Display name (max 100 chars)
  final Input<String>? displayName;

  /// Detection logic for profile generation. Not all template features are used by Discovery. FindingLimits, include_quote and exclude_info_types have no impact on Discovery. Multiple templates may be provided if there is data in multiple regions. At most one template must be specified per-region (including "global"). Each region is scanned using the applicable template. If no region-specific template is specified, but a "global" template is specified, it will be copied to that region and used instead. If no global or region-specific template is provided for a region with data, that region's data will not be scanned. For more information, see https://cloud.google.com/dlp/docs/data-profiles#data-residency.
  final Input<List<String>>? inspectTemplates;
  final Input<String>? location;

  /// Unique resource name for the DiscoveryConfig, assigned by the service when the DiscoveryConfig is created, for example `projects/dlp-test-project/locations/global/discoveryConfigs/53234423`.
  final Input<String>? name;

  /// Only set when the parent is an org.
  final Input<GooglePrivacyDlpV2OrgConfig>? orgConfig;
  final Input<String> organizationId;

  /// A status for this configuration.
  final Input<OrganizationDiscoveryConfigStatus> status;

  /// Target to match against for determining what to scan and how frequently.
  final Input<List<GooglePrivacyDlpV2DiscoveryTarget>>? targets;

  OrganizationDiscoveryConfigArgs({
    this.actions,
    this.configId,
    this.displayName,
    this.inspectTemplates,
    this.location,
    this.name,
    this.orgConfig,
    required this.organizationId,
    required this.status,
    this.targets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionsValue = actions;
    if (actionsValue != null) {
      map['actions'] = Input.mapOptionalInputValue<
              List<GooglePrivacyDlpV2DataProfileAction>,
              List<Map<String, dynamic>>>(
          actionsValue,
          (value) => Input.encodeList<GooglePrivacyDlpV2DataProfileAction,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final configIdValue = configId;
    if (configIdValue != null) {
      map['configId'] = configIdValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final inspectTemplatesValue = inspectTemplates;
    if (inspectTemplatesValue != null) {
      map['inspectTemplates'] = inspectTemplatesValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final orgConfigValue = orgConfig;
    if (orgConfigValue != null) {
      map['orgConfig'] = Input.mapOptionalInputValue<
          GooglePrivacyDlpV2OrgConfig,
          Map<String, dynamic>>(orgConfigValue, (value) => value.toMap());
    }
    map['organizationId'] = organizationId;
    map['status'] =
        Input.mapInputValue<OrganizationDiscoveryConfigStatus, String>(
            status, (value) => value.value);
    final targetsValue = targets;
    if (targetsValue != null) {
      map['targets'] = Input.mapOptionalInputValue<
              List<GooglePrivacyDlpV2DiscoveryTarget>,
              List<Map<String, dynamic>>>(
          targetsValue,
          (value) => Input.encodeList<GooglePrivacyDlpV2DiscoveryTarget,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory OrganizationDiscoveryConfigArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationDiscoveryConfigArgs(
      actions: Input.asOptionalInput<List<GooglePrivacyDlpV2DataProfileAction>>(
          map['actions']),
      configId: Input.asOptionalInput<String>(map['configId']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      inspectTemplates:
          Input.asOptionalInput<List<String>>(map['inspectTemplates']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      orgConfig:
          Input.asOptionalInput<GooglePrivacyDlpV2OrgConfig>(map['orgConfig']),
      organizationId: Input.asInput<String>(map['organizationId']),
      status: Input.asInput<OrganizationDiscoveryConfigStatus>(map['status']),
      targets: Input.asOptionalInput<List<GooglePrivacyDlpV2DiscoveryTarget>>(
          map['targets']),
    );
  }
}

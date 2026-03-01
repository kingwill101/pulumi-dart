// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovery_config_status.dart';
import 'google_privacy_dlp_v2_data_profile_action.dart';
import 'google_privacy_dlp_v2_discovery_target.dart';
import 'google_privacy_dlp_v2_org_config.dart';

/// {@template pulumi_dlp_v2_discovery_config_args_doc}
/// The set of arguments for DiscoveryConfig.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_discovery_config_args_doc}
class DiscoveryConfigArgs {
  /// Actions to execute at the completion of scanning.
  final pulumi.Input<List<GooglePrivacyDlpV2DataProfileAction>>? actions;

  /// The config ID can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? configId;

  /// Display name (max 100 chars)
  final pulumi.Input<String>? displayName;

  /// Detection logic for profile generation. Not all template features are used by Discovery. FindingLimits, include_quote and exclude_info_types have no impact on Discovery. Multiple templates may be provided if there is data in multiple regions. At most one template must be specified per-region (including "global"). Each region is scanned using the applicable template. If no region-specific template is specified, but a "global" template is specified, it will be copied to that region and used instead. If no global or region-specific template is provided for a region with data, that region's data will not be scanned. For more information, see https://cloud.google.com/dlp/docs/data-profiles#data-residency.
  final pulumi.Input<List<String>>? inspectTemplates;
  final pulumi.Input<String>? location;

  /// Unique resource name for the DiscoveryConfig, assigned by the service when the DiscoveryConfig is created, for example `projects/dlp-test-project/locations/global/discoveryConfigs/53234423`.
  final pulumi.Input<String>? name;

  /// Only set when the parent is an org.
  final pulumi.Input<GooglePrivacyDlpV2OrgConfig>? orgConfig;
  final pulumi.Input<String>? project;

  /// A status for this configuration.
  final pulumi.Input<DiscoveryConfigStatus> status;

  /// Target to match against for determining what to scan and how frequently.
  final pulumi.Input<List<GooglePrivacyDlpV2DiscoveryTarget>>? targets;

  /// Creates a new [DiscoveryConfigArgs].
  /// [actions] Actions to execute at the completion of scanning.
  /// [configId] The config ID can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  /// [displayName] Display name (max 100 chars)
  /// [inspectTemplates] Detection logic for profile generation. Not all template features are used by Discovery. FindingLimits, include_quote and exclude_info_types have no impact on Discovery. Multiple templates may be provided if there is data in multiple regions. At most one template must be specified per-region (including "global"). Each region is scanned using the applicable template. If no region-specific template is specified, but a "global" template is specified, it will be copied to that region and used instead. If no global or region-specific template is provided for a region with data, that region's data will not be scanned. For more information, see https://cloud.google.com/dlp/docs/data-profiles#data-residency.
  /// [location] Optional.
  /// [name] Unique resource name for the DiscoveryConfig, assigned by the service when the DiscoveryConfig is created, for example `projects/dlp-test-project/locations/global/discoveryConfigs/53234423`.
  /// [orgConfig] Only set when the parent is an org.
  /// [project] Optional.
  /// [status] A status for this configuration.
  /// [targets] Target to match against for determining what to scan and how frequently.
  DiscoveryConfigArgs({
    List<GooglePrivacyDlpV2DataProfileAction>? actions,
    String? configId,
    String? displayName,
    List<String>? inspectTemplates,
    String? location,
    String? name,
    GooglePrivacyDlpV2OrgConfig? orgConfig,
    String? project,
    required DiscoveryConfigStatus status,
    List<GooglePrivacyDlpV2DiscoveryTarget>? targets,
  }) : actions =
           pulumi.Input.asOptionalInput<
             List<GooglePrivacyDlpV2DataProfileAction>
           >(actions),
       configId = pulumi.Input.asOptionalInput<String>(configId),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       inspectTemplates = pulumi.Input.asOptionalInput<List<String>>(
         inspectTemplates,
       ),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       orgConfig = pulumi.Input.asOptionalInput<GooglePrivacyDlpV2OrgConfig>(
         orgConfig,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       status = pulumi.Input.asInput<DiscoveryConfigStatus>(status),
       targets =
           pulumi.Input.asOptionalInput<
             List<GooglePrivacyDlpV2DiscoveryTarget>
           >(targets);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions':
          ?pulumi.Input.mapOptionalInputValue<
            List<GooglePrivacyDlpV2DataProfileAction>,
            List<Map<String, dynamic>>
          >(
            actions,
            (value) =>
                pulumi.Input.encodeList<
                  GooglePrivacyDlpV2DataProfileAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'configId': ?configId,
      'displayName': ?displayName,
      'inspectTemplates': ?inspectTemplates,
      'location': ?location,
      'name': ?name,
      'orgConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2OrgConfig,
            Map<String, dynamic>
          >(orgConfig, (value) => value.toMap()),
      'project': ?project,
      'status': pulumi.Input.mapInputValue<DiscoveryConfigStatus, String>(
        status,
        (value) => value.value,
      ),
      'targets':
          ?pulumi.Input.mapOptionalInputValue<
            List<GooglePrivacyDlpV2DiscoveryTarget>,
            List<Map<String, dynamic>>
          >(
            targets,
            (value) =>
                pulumi.Input.encodeList<
                  GooglePrivacyDlpV2DiscoveryTarget,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DiscoveryConfigArgs.fromMap(Map<String, dynamic> map) {
    return DiscoveryConfigArgs(
      actions: map['actions'] == null
          ? null
          : pulumi.Input.decodeList<GooglePrivacyDlpV2DataProfileAction>(
              map['actions'],
              (value) => GooglePrivacyDlpV2DataProfileAction.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      configId: map['configId'] == null ? null : map['configId'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      inspectTemplates: map['inspectTemplates'] == null
          ? null
          : (map['inspectTemplates'] as List).cast<String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      orgConfig: map['orgConfig'] == null
          ? null
          : GooglePrivacyDlpV2OrgConfig.fromMap(
              (map['orgConfig'] as Map).cast<String, dynamic>(),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      status: DiscoveryConfigStatus.fromValue(map['status'] as String),
      targets: map['targets'] == null
          ? null
          : pulumi.Input.decodeList<GooglePrivacyDlpV2DiscoveryTarget>(
              map['targets'],
              (value) => GooglePrivacyDlpV2DiscoveryTarget.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}

import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_data_profile_action_response.dart';
import 'google_privacy_dlp_v2_discovery_target_response.dart';
import 'google_privacy_dlp_v2_error_response.dart';
import 'google_privacy_dlp_v2_org_config_response.dart';
import 'organization_discovery_config_args.dart';

/// Creates a config for discovery to scan and profile storage.
/// Auto-naming is currently not supported for this resource.
class OrganizationDiscoveryConfig extends CustomResource {
  /// Actions to execute at the completion of scanning.
  late final Output<List<GooglePrivacyDlpV2DataProfileActionResponse>> actions;

  /// The creation timestamp of a DiscoveryConfig.
  late final Output<String> createTime;

  /// Display name (max 100 chars)
  late final Output<String> displayName;

  /// A stream of errors encountered when the config was activated. Repeated errors may result in the config automatically being paused. Output only field. Will return the last 100 errors. Whenever the config is modified this list will be cleared.
  late final Output<List<GooglePrivacyDlpV2ErrorResponse>> errors;

  /// Detection logic for profile generation. Not all template features are used by Discovery. FindingLimits, include_quote and exclude_info_types have no impact on Discovery. Multiple templates may be provided if there is data in multiple regions. At most one template must be specified per-region (including "global"). Each region is scanned using the applicable template. If no region-specific template is specified, but a "global" template is specified, it will be copied to that region and used instead. If no global or region-specific template is provided for a region with data, that region's data will not be scanned. For more information, see https://cloud.google.com/dlp/docs/data-profiles#data-residency.
  late final Output<List<String>> inspectTemplates;

  /// The timestamp of the last time this config was executed.
  late final Output<String> lastRunTime;
  late final Output<String> location;

  /// Unique resource name for the DiscoveryConfig, assigned by the service when the DiscoveryConfig is created, for example `projects/dlp-test-project/locations/global/discoveryConfigs/53234423`.
  late final Output<String> name;

  /// Only set when the parent is an org.
  late final Output<GooglePrivacyDlpV2OrgConfigResponse> orgConfig;
  late final Output<String> organizationId;

  /// A status for this configuration.
  late final Output<String> status;

  /// Target to match against for determining what to scan and how frequently.
  late final Output<List<GooglePrivacyDlpV2DiscoveryTargetResponse>> targets;

  /// The last update timestamp of a DiscoveryConfig.
  late final Output<String> updateTime;

  OrganizationDiscoveryConfig(
    String name, {
    OrganizationDiscoveryConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dlp/v2:OrganizationDiscoveryConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actions = Output.createUnknown<
        List<GooglePrivacyDlpV2DataProfileActionResponse>>();
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.errors = Output.createUnknown<List<GooglePrivacyDlpV2ErrorResponse>>();
    this.inspectTemplates = Output.createUnknown<List<String>>();
    this.lastRunTime = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.orgConfig =
        Output.createUnknown<GooglePrivacyDlpV2OrgConfigResponse>();
    this.organizationId = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.targets =
        Output.createUnknown<List<GooglePrivacyDlpV2DiscoveryTargetResponse>>();
    this.updateTime = Output.createUnknown<String>();
  }
}

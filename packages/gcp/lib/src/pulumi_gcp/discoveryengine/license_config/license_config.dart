import 'package:pulumi/pulumi.dart';
import '../license_config_end_date/license_config_end_date.dart';
import '../license_config_start_date/license_config_start_date.dart';
import 'license_config_args.dart';

/// License Configuration.
///
///
/// To get more information about LicenseConfig, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.licenseConfigs)
///
/// ## Example Usage
///
/// ### Discoveryengine Licenseconfig Basic
///
///
///
///
/// ## Import
///
/// LicenseConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/licenseConfigs/{{license_config_id}}`
///
/// * `{{project}}/{{location}}/{{license_config_id}}`
///
/// * `{{location}}/{{license_config_id}}`
///
/// When using the `pulumi import` command, LicenseConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/licenseConfig:LicenseConfig default projects/{{project}}/locations/{{location}}/licenseConfigs/{{license_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/licenseConfig:LicenseConfig default {{project}}/{{location}}/{{license_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/licenseConfig:LicenseConfig default {{location}}/{{license_config_id}}
/// ```
class LicenseConfig extends CustomResource {
  /// Whether the license config should be auto renewed when it reaches the end date.
  late final Output<bool?> autoRenew;

  /// The planned end date.
  /// Structure is documented below.
  late final Output<LicenseConfigEndDate?> endDate;

  /// Whether the license config is for free trial.
  late final Output<bool?> freeTrial;

  /// The unique id of the license config.
  late final Output<String> licenseConfigId;

  /// Number of licenses purchased.
  late final Output<int> licenseCount;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final Output<String> location;

  /// The unique full resource name of the license config. Values are of the format
  /// `projects/{project}/locations/{location}/licenseConfigs/{license_config}`.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The start date.
  /// Structure is documented below.
  late final Output<LicenseConfigStartDate> startDate;

  /// Subscription term.
  /// Possible values are: `SUBSCRIPTION_TERM_UNSPECIFIED`, `SUBSCRIPTION_TERM_ONE_MONTH`, `SUBSCRIPTION_TERM_ONE_YEAR`, `SUBSCRIPTION_TERM_THREE_YEARS`, `SUBSCRIPTION_TERM_THREE_MONTHS`, `SUBSCRIPTION_TERM_FOURTEEN_DAYS`, `SUBSCRIPTION_TERM_CUSTOM`.
  late final Output<String> subscriptionTerm;

  /// Subscription tier information for the license config.
  /// Possible values are: `SUBSCRIPTION_TIER_UNSPECIFIED`, `SUBSCRIPTION_TIER_SEARCH`, `SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT`, `SUBSCRIPTION_TIER_NOTEBOOK_LM`, `SUBSCRIPTION_TIER_FRONTLINE_WORKER`, `SUBSCRIPTION_TIER_AGENTSPACE_STARTER`, `SUBSCRIPTION_TIER_AGENTSPACE_BUSINESS`, `SUBSCRIPTION_TIER_ENTERPRISE`, `SUBSCRIPTION_TIER_EDU`, `SUBSCRIPTION_TIER_EDU_PRO`.
  late final Output<String> subscriptionTier;

  LicenseConfig(
    String name, {
    LicenseConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/licenseConfig:LicenseConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.endDate = registerOutput<LicenseConfigEndDate?>('endDate');
    this.freeTrial = registerOutput<bool?>('freeTrial');
    this.licenseConfigId = registerOutput<String>('licenseConfigId');
    this.licenseCount = registerOutput<int>('licenseCount');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.startDate = registerOutput<LicenseConfigStartDate>('startDate');
    this.subscriptionTerm = registerOutput<String>('subscriptionTerm');
    this.subscriptionTier = registerOutput<String>('subscriptionTier');
  }
}

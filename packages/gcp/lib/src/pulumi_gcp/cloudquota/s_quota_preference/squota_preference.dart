import 'package:pulumi/pulumi.dart';
import '../squota_preference_quota_config/squota_preference_quota_config.dart';
import 'squota_preference_args.dart';

/// QuotaPreference represents the preferred quota configuration specified for a project, folder or organization. There is only one QuotaPreference resource for a quota value targeting a unique set of dimensions.
///
///
/// To get more information about QuotaPreference, see:
///
/// * [API documentation](https://cloud.google.com/docs/quotas/reference/rest/v1/projects.locations.quotaPreferences)
/// * How-to Guides
/// * [Cloud Quotas Overview](https://cloud.google.com/docs/quotas/overview)
///
/// ## Example Usage
///
/// ### Cloudquotas Quota Preference Basic
///
///
///
///
/// ## Import
///
/// QuotaPreference can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/global/quotaPreferences/{{name}}`
///
/// When using the `pulumi import` command, QuotaPreference can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudquota/sQuotaPreference:SQuotaPreference default {{parent}}/locations/global/quotaPreferences/{{name}}
/// ```
class SQuotaPreference extends CustomResource {
  /// An email address that can be used for quota related communication between the Google Cloud and the user in case the Google Cloud needs further information to make a decision on whether the user preferred quota can be granted.
  /// The Google account for the email address must have quota update permission for the project, folder or organization this quota preference is for.
  late final Output<String?> contactEmail;

  /// Create time stamp.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  late final Output<String> createTime;

  /// The dimensions that this quota preference applies to. The key of the map entry is the name of a dimension, such as "region", "zone", "network_id", and the value of the map entry is the dimension value. If a dimension is missing from the map of dimensions, the quota preference applies to all the dimension values except for those that have other quota preferences configured for the specific value.
  /// NOTE: QuotaPreferences can only be applied across all values of "user" and "resource" dimension. Do not set values for "user" or "resource" in the dimension map.
  /// Example: `{"provider": "Foo Inc"}` where "provider" is a service specific dimension.
  late final Output<Map<String, String>> dimensions;

  /// The current etag of the quota preference. If an etag is provided on update and does not match the current server's etag of the quota preference, the request will be blocked and an ABORTED error will be returned. See https://google.aip.dev/134#etags for more details on etags.
  late final Output<String> etag;

  /// The list of quota safety checks to be ignored.
  /// Default value is `QUOTA_SAFETY_CHECK_UNSPECIFIED`.
  /// Possible values are: `QUOTA_SAFETY_CHECK_UNSPECIFIED`, `QUOTA_DECREASE_BELOW_USAGE`, `QUOTA_DECREASE_PERCENTAGE_TOO_HIGH`.
  late final Output<String?> ignoreSafetyChecks;

  /// The reason / justification for this quota preference.
  late final Output<String?> justification;

  /// The resource name of the quota preference. Required except in the CREATE requests.
  late final Output<String> name;

  /// The parent of the quota preference. Allowed parents are "projects/[project-id / number]" or "folders/[folder-id / number]" or "organizations/[org-id / number]".
  late final Output<String> parent;

  /// The preferred quota configuration.
  /// Structure is documented below.
  late final Output<SQuotaPreferenceQuotaConfig> quotaConfig;

  /// The id of the quota to which the quota preference is applied. A quota id is unique in the service.
  /// Example: `CPUS-per-project-region`.
  late final Output<String> quotaId;

  /// Is the quota preference pending Google Cloud approval and fulfillment.
  late final Output<bool> reconciling;

  /// The name of the service to which the quota preference is applied.
  late final Output<String> service;

  /// Update time stamp.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  late final Output<String> updateTime;

  SQuotaPreference(
    String name, {
    SQuotaPreferenceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudquota/sQuotaPreference:SQuotaPreference',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.contactEmail = registerOutput<String?>('contactEmail');
    this.createTime = registerOutput<String>('createTime');
    this.dimensions = registerOutput<Map<String, String>>('dimensions');
    this.etag = registerOutput<String>('etag');
    this.ignoreSafetyChecks = registerOutput<String?>('ignoreSafetyChecks');
    this.justification = registerOutput<String?>('justification');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.quotaConfig =
        registerOutput<SQuotaPreferenceQuotaConfig>('quotaConfig');
    this.quotaId = registerOutput<String>('quotaId');
    this.reconciling = registerOutput<bool>('reconciling');
    this.service = registerOutput<String>('service');
    this.updateTime = registerOutput<String>('updateTime');
  }
}

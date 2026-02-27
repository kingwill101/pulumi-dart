import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_quota_rule_args.dart';

/// QuotaRule specifies the maximum capacity a user or group can use within a volume. They can be used for creating default and individual quota rules.
///
///
/// To get more information about VolumeQuotaRule, see:
///
/// * [API documentation](https://cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.volumes.quotaRules)
/// * How-to Guides
/// * [Documentation](https://cloud.google.com/netapp/volumes/docs/configure-and-use/volumes/overview#volume_user_and_group_quotas)
///
/// ## Example Usage
///
/// ### Netapp Volume Quota Rule Basic
///
///
///
///
/// ## Import
///
/// VolumeQuotaRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/volumes/{{volume_name}}/quotaRules/{{name}}`
///
/// * `{{project}}/{{location}}/{{volume_name}}/{{name}}`
///
/// * `{{location}}/{{volume_name}}/{{name}}`
///
/// When using the `pulumi import` command, VolumeQuotaRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/volumeQuotaRule:VolumeQuotaRule default projects/{{project}}/locations/{{location}}/volumes/{{volume_name}}/quotaRules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/volumeQuotaRule:VolumeQuotaRule default {{project}}/{{location}}/{{volume_name}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/volumeQuotaRule:VolumeQuotaRule default {{location}}/{{volume_name}}/{{name}}
/// ```
class VolumeQuotaRule extends pulumi.CustomResource {
  /// Create time of the quota rule. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  late final pulumi.Output<String> createTime;

  /// Description for the quota rule.
  late final pulumi.Output<String?> description;

  /// The maximum allowed capacity in MiB.
  late final pulumi.Output<int> diskLimitMib;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Labels as key value pairs of the quota rule. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Loction of the quotaRule. QuotaRules are child resources of volumes and live in the same location.
  late final pulumi.Output<String?> location;

  /// The resource name of the quotaRule.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The state of the quota rule. Possible Values : [STATE_UNSPECIFIED, CREATING, UPDATING, READY, DELETING, ERROR]
  late final pulumi.Output<String> state;

  /// State details of the quota rule
  late final pulumi.Output<String> stateDetails;

  /// The quota rule applies to the specified user or group.
  /// Valid targets for volumes with NFS protocol enabled:
  /// - UNIX UID for individual user quota
  /// - UNIX GID for individual group quota
  /// Valid targets for volumes with SMB protocol enabled:
  /// - Windows SID for individual user quota
  /// Leave empty for default quotas
  late final pulumi.Output<String?> target;

  /// Types of Quota Rule.
  /// Possible values are: `INDIVIDUAL_USER_QUOTA`, `INDIVIDUAL_GROUP_QUOTA`, `DEFAULT_USER_QUOTA`, `DEFAULT_GROUP_QUOTA`.
  late final pulumi.Output<String> type;

  /// Name of the volume to create the quotaRule in.
  late final pulumi.Output<String> volumeName;

  VolumeQuotaRule(
    String name, {
    VolumeQuotaRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/volumeQuotaRule:VolumeQuotaRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.diskLimitMib = registerOutput<int>('diskLimitMib');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.stateDetails = registerOutput<String>('stateDetails');
    this.target = registerOutput<String?>('target');
    this.type = registerOutput<String>('type');
    this.volumeName = registerOutput<String>('volumeName');
  }
}

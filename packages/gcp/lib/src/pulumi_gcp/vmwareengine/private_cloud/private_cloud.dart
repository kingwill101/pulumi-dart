import 'package:pulumi/pulumi.dart' as pulumi;
import '../private_cloud_hcx/private_cloud_hcx.dart';
import '../private_cloud_management_cluster/private_cloud_management_cluster.dart';
import '../private_cloud_network_config/private_cloud_network_config.dart';
import '../private_cloud_nsx/private_cloud_nsx.dart';
import '../private_cloud_vcenter/private_cloud_vcenter.dart';
import 'private_cloud_args.dart';

/// Represents a private cloud resource. Private clouds are zonal resources.
///
///
/// To get more information about PrivateCloud, see:
///
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds)
///
/// ## Example Usage
///
/// ### Vmware Engine Private Cloud Basic
///
///
///
/// ### Vmware Engine Private Cloud Full
///
///
///
///
/// ## Import
///
/// PrivateCloud can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/privateClouds/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, PrivateCloud can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/privateCloud:PrivateCloud default projects/{{project}}/locations/{{location}}/privateClouds/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/privateCloud:PrivateCloud default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/privateCloud:PrivateCloud default {{location}}/{{name}}
/// ```
class PrivateCloud extends pulumi.CustomResource {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// Time when the resource was scheduled for deletion.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> deleteTime;

  /// The number of hours to delay this request. You can set this value to an hour between 0 to 8, where setting it to 0 starts the deletion request immediately. If no value is set, a default value is set at the API Level.
  late final pulumi.Output<int?> deletionDelayHours;

  /// User-provided description for this private cloud.
  late final pulumi.Output<String?> description;

  /// Time when the resource will be irreversibly deleted.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> expireTime;

  /// Details about a HCX Cloud Manager appliance.
  /// Structure is documented below.
  late final pulumi.Output<List<PrivateCloudHcx>> hcxes;

  /// The location where the PrivateCloud should reside.
  late final pulumi.Output<String> location;

  /// The management cluster for this private cloud. This used for creating and managing the default cluster.
  /// Structure is documented below.
  late final pulumi.Output<PrivateCloudManagementCluster> managementCluster;

  /// The ID of the PrivateCloud.
  late final pulumi.Output<String> name;

  /// Network configuration in the consumer project with which the peering has to be done.
  /// Structure is documented below.
  late final pulumi.Output<PrivateCloudNetworkConfig> networkConfig;

  /// Details about a NSX Manager appliance.
  /// Structure is documented below.
  late final pulumi.Output<List<PrivateCloudNsx>> nsxes;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// While set true, deletion_delay_hours value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the deletion_delay_hours field. It can be used both alone and together with deletion_delay_hours.
  late final pulumi.Output<bool?> sendDeletionDelayHoursIfZero;

  /// State of the appliance.
  /// Possible values are: `ACTIVE`, `CREATING`.
  late final pulumi.Output<String> state;

  /// Initial type of the private cloud.
  /// Possible values are: `STANDARD`, `TIME_LIMITED`, `STRETCHED`.
  late final pulumi.Output<String?> type;

  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;

  /// Last update time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Details about a vCenter Server management appliance.
  /// Structure is documented below.
  late final pulumi.Output<List<PrivateCloudVcenter>> vcenters;

  PrivateCloud(
    String name, {
    PrivateCloudArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vmwareengine/privateCloud:PrivateCloud',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.deletionDelayHours = registerOutput<int?>('deletionDelayHours');
    this.description = registerOutput<String?>('description');
    this.expireTime = registerOutput<String>('expireTime');
    this.hcxes = registerOutput<List<PrivateCloudHcx>>('hcxes');
    this.location = registerOutput<String>('location');
    this.managementCluster =
        registerOutput<PrivateCloudManagementCluster>('managementCluster');
    this.name = registerOutput<String>('name');
    this.networkConfig =
        registerOutput<PrivateCloudNetworkConfig>('networkConfig');
    this.nsxes = registerOutput<List<PrivateCloudNsx>>('nsxes');
    this.project = registerOutput<String>('project');
    this.sendDeletionDelayHoursIfZero =
        registerOutput<bool?>('sendDeletionDelayHoursIfZero');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String?>('type');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.vcenters = registerOutput<List<PrivateCloudVcenter>>('vcenters');
  }
}

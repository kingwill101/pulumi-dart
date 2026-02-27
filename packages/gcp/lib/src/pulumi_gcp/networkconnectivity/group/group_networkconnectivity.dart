import 'package:pulumi/pulumi.dart' as pulumi;
import '../group_auto_accept/group_auto_accept.dart';
import 'group_networkconnectivity_args.dart';

/// The NetworkConnectivity Group resource
///
///
/// To get more information about Group, see:
///
/// * [API documentation](https://cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1beta/projects.locations.global.hubs.groups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/overview)
///
/// ## Example Usage
///
/// ### Network Connectivity Group Basic
///
///
///
///
/// ## Import
///
/// Group can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/hubs/{{hub}}/groups/{{name}}`
///
/// * `{{project}}/{{hub}}/{{name}}`
///
/// * `{{hub}}/{{name}}`
///
/// When using the `pulumi import` command, Group can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/group:Group default projects/{{project}}/locations/global/hubs/{{hub}}/groups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/group:Group default {{project}}/{{hub}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/group:Group default {{hub}}/{{name}}
/// ```
class GroupNetworkconnectivity extends pulumi.CustomResource {
  /// Optional. The auto-accept setting for this group.
  /// Structure is documented below.
  late final pulumi.Output<GroupAutoAccept?> autoAccept;

  /// Output only. The time the hub was created.
  late final pulumi.Output<String> createTime;

  /// An optional description of the group.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The name of the hub. Hub names must be unique. They use the following form: projects/{projectNumber}/locations/global/hubs/{hubId}
  late final pulumi.Output<String> hub;

  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The name of the group. Group names must be unique.
  /// Possible values are: `default`, `center`, `edge`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Output only. The name of the route table that corresponds to this group. They use the following form: `projects/{projectNumber}/locations/global/hubs/{hubId}/routeTables/{route_table_id}`
  late final pulumi.Output<String> routeTable;

  /// Output only. The current lifecycle state of this hub.
  late final pulumi.Output<String> state;

  /// Output only. The Google-generated UUID for the group. This value is unique across all group resources. If a group is deleted and another with the same name is created, the new route table is assigned a different uniqueId.
  late final pulumi.Output<String> uid;

  /// Output only. The time the hub was last updated.
  late final pulumi.Output<String> updateTime;

  GroupNetworkconnectivity(
    String name, {
    GroupNetworkconnectivityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoAccept = registerOutput<GroupAutoAccept?>('autoAccept');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.hub = registerOutput<String>('hub');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.routeTable = registerOutput<String>('routeTable');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}

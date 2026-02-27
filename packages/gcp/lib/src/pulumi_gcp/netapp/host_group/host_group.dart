import 'package:pulumi/pulumi.dart';
import 'host_group_args.dart';

/// Hostgroups define the hosts (aka initiators) that can access the specific Google Cloud Netapp Volumes.
/// Hostgroup is a regional resource and independent of the volumes or any other resource
///
///
/// To get more information about HostGroup, see:
///
/// * [API documentation](https://docs.cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.hostGroups)
/// * How-to Guides
/// * [Documentation](https://docs.cloud.google.com/netapp/volumes/docs/configure-and-use/host-groups/overview)
///
/// ## Example Usage
///
/// ### Netapp Host Group
///
///
///
///
/// ## Import
///
/// HostGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/hostGroups/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, HostGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/hostGroup:HostGroup default projects/{{project}}/locations/{{location}}/hostGroups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/hostGroup:HostGroup default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/hostGroup:HostGroup default {{location}}/{{name}}
/// ```
class HostGroup extends CustomResource {
  /// Create time of the host group. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  late final Output<String> createTime;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The list of hosts associated with the host group
  late final Output<List<String>> hosts;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Location (region) of the Host Group.
  late final Output<String> location;

  /// The resource name of the Host Group. Needs to be unique per location.
  late final Output<String> name;

  /// The OS type of the host group. It indicates the type of operating system
  /// used by all of the hosts in the HostGroup. All hosts in a HostGroup must be
  /// of the same OS type. This can be set only when creating a HostGroup.
  /// Possible values are: `LINUX`, `WINDOWS`, `ESXI`.
  late final Output<String> osType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The state of the Host Group.
  late final Output<String> state;

  /// Type of the host group.
  /// Possible values are: `ISCSI_INITIATOR`.
  late final Output<String> type;

  HostGroup(
    String name, {
    HostGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/hostGroup:HostGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.hosts = registerOutput<List<String>>('hosts');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.osType = registerOutput<String>('osType');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
  }
}

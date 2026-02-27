import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_group_named_port/instance_group_named_port.dart';
import 'instance_group_args.dart';

/// Creates a group of dissimilar Compute Engine virtual machine instances.
/// For more information, see [the official documentation](https://cloud.google.com/compute/docs/instance-groups/#unmanaged_instance_groups)
/// and [API](https://cloud.google.com/compute/docs/reference/latest/instanceGroups)
///
///
/// ## Example Usage
///
/// ### Empty Instance Group
///
///
///
/// ### Example Usage - With instances and named ports
///
///
///
/// ## Import
///
/// Instance groups can be imported using the `zone` and `name` with an optional `project`, e.g.
///
/// * `projects/{{project_id}}/zones/{{zone}}/instanceGroups/{{instance_group_id}}`
///
/// * `{{project_id}}/{{zone}}/{{instance_group_id}}`
///
/// * `{{zone}}/{{instance_group_id}}`
///
/// When using the `pulumi import` command, instance groups can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroup:InstanceGroup default {{zone}}/{{instance_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroup:InstanceGroup default {{project_id}}/{{zone}}/{{instance_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroup:InstanceGroup default projects/{{project_id}}/zones/{{zone}}/instanceGroups/{{instance_group_id}}
/// ```
class InstanceGroup extends pulumi.CustomResource {
  /// An optional textual description of the instance
  /// group.
  late final pulumi.Output<String?> description;

  /// The list of instances in the group, in `self_link` format.
  /// When adding instances they must all be in the same network and zone as the instance group.
  late final pulumi.Output<List<String>> instances;

  /// The name of the instance group. Must be 1-63
  /// characters long and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Supported characters
  /// include lowercase letters, numbers, and hyphens.
  late final pulumi.Output<String> name;

  /// The named port configuration. See the section below
  /// for details on configuration. Structure is documented below.
  late final pulumi.Output<List<InstanceGroupNamedPort>?> namedPorts;

  /// The URL of the network the instance group is in. If
  /// this is different from the network where the instances are in, the creation
  /// fails. Defaults to the network where the instances are in (if neither
  /// `network` nor `instances` is specified, this field will be blank).
  late final pulumi.Output<String> network;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// The number of instances in the group.
  late final pulumi.Output<int> size;

  /// The zone that this instance group should be created in.
  ///
  /// - - -
  late final pulumi.Output<String> zone;

  InstanceGroup(
    String name, {
    InstanceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceGroup:InstanceGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.instances = registerOutput<List<String>>('instances');
    this.name = registerOutput<String>('name');
    this.namedPorts =
        registerOutput<List<InstanceGroupNamedPort>?>('namedPorts');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.size = registerOutput<int>('size');
    this.zone = registerOutput<String>('zone');
  }
}

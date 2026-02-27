import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_named_port_args.dart';

/// Mange the named ports setting for a managed instance group without
/// managing the group as whole. This resource is primarily intended for use
/// with GKE-generated groups that shouldn't otherwise be managed by other
/// tools.
///
///
/// To get more information about InstanceGroupNamedPort, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroup)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/instance-groups/)
///
/// ## Example Usage
///
/// ### Instance Group Named Port Gke
///
///
///
///
/// ## Import
///
/// InstanceGroupNamedPort can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/instanceGroups/{{group}}/{{port}}/{{name}}`
///
/// * `{{project}}/{{zone}}/{{group}}/{{port}}/{{name}}`
///
/// * `{{zone}}/{{group}}/{{port}}/{{name}}`
///
/// * `{{group}}/{{port}}/{{name}}`
///
/// When using the `pulumi import` command, InstanceGroupNamedPort can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupNamedPort:InstanceGroupNamedPort default projects/{{project}}/zones/{{zone}}/instanceGroups/{{group}}/{{port}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupNamedPort:InstanceGroupNamedPort default {{project}}/{{zone}}/{{group}}/{{port}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupNamedPort:InstanceGroupNamedPort default {{zone}}/{{group}}/{{port}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupNamedPort:InstanceGroupNamedPort default {{group}}/{{port}}/{{name}}
/// ```
class InstanceGroupNamedPortCompute extends pulumi.CustomResource {
  /// The name of the instance group.
  late final pulumi.Output<String> group;

  /// The name for this named port. The name must be 1-63 characters
  /// long, and comply with RFC1035.
  late final pulumi.Output<String> name;

  /// The port number, which can be a value between 1 and 65535.
  late final pulumi.Output<int> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The zone of the instance group.
  late final pulumi.Output<String> zone;

  InstanceGroupNamedPortCompute(
    String name, {
    InstanceGroupNamedPortArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceGroupNamedPort:InstanceGroupNamedPort',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.group = registerOutput<String>('group');
    this.name = registerOutput<String>('name');
    this.port = registerOutput<int>('port');
    this.project = registerOutput<String>('project');
    this.zone = registerOutput<String>('zone');
  }
}

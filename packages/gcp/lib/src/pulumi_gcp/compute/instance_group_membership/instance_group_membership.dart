import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_membership_args.dart';

/// Represents the Instance membership to the Instance Group.
///
/// > **NOTE** You can use this resource instead of the `instances` field in the
/// `gcp.compute.InstanceGroup`, however it's not recommended to use it alongside this field.
/// It might cause inconsistencies, as they can end up competing over control.
///
/// > **NOTE** This resource has been added to avoid a situation, where after
/// Instance is recreated, it's removed from Instance Group and it's needed to
/// perform `apply` twice. To avoid situations like this, please use this resource
/// with the lifecycle `replace_triggered_by` method, with the passed Instance's ID.
///
///
/// To get more information about InstanceGroupMembership, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups)
/// * How-to Guides
/// * [Add instances](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups/addInstances)
/// * [List instances](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups/listInstances)
/// * [Remove instances](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups/removeInstances)
///
/// ## Example Usage
///
/// ### Instance Group Membership
///
///
///
///
/// ## Import
///
/// InstanceGroupMembership can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/instanceGroups/{{instance_group}}/{{instance}}`
///
/// * `{{project}}/{{zone}}/{{instance_group}}/{{instance}}`
///
/// * `{{zone}}/{{instance_group}}/{{instance}}`
///
/// * `{{instance_group}}/{{instance}}`
///
/// When using the `pulumi import` command, InstanceGroupMembership can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupMembership:InstanceGroupMembership default projects/{{project}}/zones/{{zone}}/instanceGroups/{{instance_group}}/{{instance}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupMembership:InstanceGroupMembership default {{project}}/{{zone}}/{{instance_group}}/{{instance}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupMembership:InstanceGroupMembership default {{zone}}/{{instance_group}}/{{instance}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupMembership:InstanceGroupMembership default {{instance_group}}/{{instance}}
/// ```
class InstanceGroupMembership extends pulumi.CustomResource {
  /// An instance being added to the InstanceGroup
  late final pulumi.Output<String> instance;

  /// Represents an Instance Group resource name that the instance belongs to.
  late final pulumi.Output<String> instanceGroup;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// A reference to the zone where the instance group resides.
  late final pulumi.Output<String?> zone;

  InstanceGroupMembership(
    String name, {
    InstanceGroupMembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceGroupMembership:InstanceGroupMembership',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instance = registerOutput<String>('instance');
    this.instanceGroup = registerOutput<String>('instanceGroup');
    this.project = registerOutput<String>('project');
    this.zone = registerOutput<String?>('zone');
  }
}

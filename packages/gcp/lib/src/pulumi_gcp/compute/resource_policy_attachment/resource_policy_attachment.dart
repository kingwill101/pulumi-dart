import 'package:pulumi/pulumi.dart';
import 'resource_policy_attachment_args.dart';

/// Adds existing resource policies to a compute instance. You can only add one policy
/// which will be applied to this instance for scheduling start/stop operations.
///
/// This resource can be used instead of setting the resource_policy directly in the
/// compute instance resource to avoid dependency issues when using instance-level IAM
/// permissions.
///
///
///
/// ## Example Usage
///
/// ### Compute Resource Policy Attachment Basic
///
///
///
///
/// ## Import
///
/// ResourcePolicyAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/instances/{{instance}}/{{name}}`
///
/// * `{{project}}/{{zone}}/{{instance}}/{{name}}`
///
/// * `{{zone}}/{{instance}}/{{name}}`
///
/// * `{{instance}}/{{name}}`
///
/// When using the `pulumi import` command, ResourcePolicyAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/resourcePolicyAttachment:ResourcePolicyAttachment default projects/{{project}}/zones/{{zone}}/instances/{{instance}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/resourcePolicyAttachment:ResourcePolicyAttachment default {{project}}/{{zone}}/{{instance}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/resourcePolicyAttachment:ResourcePolicyAttachment default {{zone}}/{{instance}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/resourcePolicyAttachment:ResourcePolicyAttachment default {{instance}}/{{name}}
/// ```
class ResourcePolicyAttachment extends CustomResource {
  /// The name of the instance in which the resource policies are attached to.
  late final Output<String> instance;

  /// The resource policy to be attached to the instance for scheduling start/stop
  /// operations. Do not specify the self link.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// A reference to the zone where the instance resides.
  late final Output<String> zone;

  ResourcePolicyAttachment(
    String name, {
    ResourcePolicyAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/resourcePolicyAttachment:ResourcePolicyAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.instance = registerOutput<String>('instance');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.zone = registerOutput<String>('zone');
  }
}

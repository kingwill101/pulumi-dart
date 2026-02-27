import 'package:pulumi/pulumi.dart';
import '../virtual_node_spec/virtual_node_spec.dart';
import 'virtual_node_args.dart';

/// Provides an AWS App Mesh virtual node resource.
///
/// ## Breaking Changes
///
/// Because of backward incompatible API changes (read [here](https://github.com/awslabs/aws-app-mesh-examples/issues/92)), `aws.appmesh.VirtualNode` resource definitions created with provider versions earlier than v2.3.0 will need to be modified:
///
/// * Rename the `service_name` attribute of the `dns` object to `hostname`.
///
/// * Replace the `backends` attribute of the `spec` object with one or more `backend` configuration blocks,
/// setting `virtual_service_name` to the name of the service.
///
/// The state associated with existing resources will automatically be migrated.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### AWS Cloud Map Service Discovery
///
///
///
/// ### Listener Health Check
///
///
///
/// ### Logging
///
///
///
/// ## Import
///
/// Using `pulumi import`, import App Mesh virtual nodes using `mesh_name` together with the virtual node's `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appmesh/virtualNode:VirtualNode serviceb1 simpleapp/serviceBv1
/// ```
class VirtualNode extends CustomResource {
  /// ARN of the virtual node.
  late final Output<String> arn;

  /// Creation date of the virtual node.
  late final Output<String> createdDate;

  /// Last update date of the virtual node.
  late final Output<String> lastUpdatedDate;

  /// Name of the service mesh in which to create the virtual node. Must be between 1 and 255 characters in length.
  late final Output<String> meshName;

  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  late final Output<String> meshOwner;

  /// Name to use for the virtual node. Must be between 1 and 255 characters in length.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Resource owner's AWS account ID.
  late final Output<String> resourceOwner;

  /// Virtual node specification to apply.
  late final Output<VirtualNodeSpec> spec;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  VirtualNode(
    String name, {
    VirtualNodeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/virtualNode:VirtualNode',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdDate = registerOutput<String>('createdDate');
    this.lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    this.meshName = registerOutput<String>('meshName');
    this.meshOwner = registerOutput<String>('meshOwner');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.resourceOwner = registerOutput<String>('resourceOwner');
    this.spec = registerOutput<VirtualNodeSpec>('spec');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}

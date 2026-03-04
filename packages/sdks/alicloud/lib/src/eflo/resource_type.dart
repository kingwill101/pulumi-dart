import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_args.dart';
import 'resource_machine_types.dart';
import 'resource_state.dart';
import 'resource_user_access_param.dart';

/// ## Import
///
/// Eflo Resource can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eflo/resource:Resource example <id>
/// ```
class ResourceType extends pulumi.CustomResource {
  /// Used to provide a description or comment on the compute cluster.
  late final pulumi.Output<String?> clusterDesc;

  /// Used to uniquely identify a computing cluster.
  late final pulumi.Output<String> clusterId;

  /// Represents the name of the compute cluster, usually including the model number.
  late final pulumi.Output<String> clusterName;

  /// Generally refers to the type or instance type of a computing resource. See `machine_types` below.
  late final pulumi.Output<ResourceMachineTypes> machineTypes;

  /// The ID of the Resource.
  late final pulumi.Output<String> resourceId;

  /// Used to define the access parameters for the user. See `user_access_param` below.
  late final pulumi.Output<ResourceUserAccessParam> userAccessParam;

  /// Creates a new [ResourceType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceType]. {@macro pulumi_eflo_resource_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceType(
    String name, {
    ResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eflo/resource:Resource',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterDesc = registerOutput<String?>('clusterDesc');
    clusterId = registerOutput<String>('clusterId');
    clusterName = registerOutput<String>('clusterName');
    machineTypes = registerOutput<ResourceMachineTypes>('machineTypes');
    resourceId = registerOutput<String>('resourceId');
    userAccessParam = registerOutput<ResourceUserAccessParam>(
      'userAccessParam',
    );
  }

  /// Gets an existing [ResourceType] resource's state with the given [name] and [id].
  static ResourceType get(
    String name,
    pulumi.Input<String> id, {
    ResourceState? state,
  }) {
    return ResourceType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourceType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eflo/resource:Resource',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterDesc = registerOutput<String?>('clusterDesc');
    clusterId = registerOutput<String>('clusterId');
    clusterName = registerOutput<String>('clusterName');
    machineTypes = registerOutput<ResourceMachineTypes>('machineTypes');
    resourceId = registerOutput<String>('resourceId');
    userAccessParam = registerOutput<ResourceUserAccessParam>(
      'userAccessParam',
    );
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';

/// ## Import
///
/// EAIS Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eais/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// EAIS instance category, valid values: `eais`, `jupyter`, `ei`, default is `eais`.
  late final pulumi.Output<String> category;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Setting environment variables in eais instance on Initialization See `environment_var` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> environmentVars;
  /// Whether to force the deletion when the instance status does not meet the deletion conditions.
  late final pulumi.Output<bool?> force;
  /// EAIS instance image.
  late final pulumi.Output<String?> image;
  /// Name of the instance
  late final pulumi.Output<String> instanceName;
  /// EAIS instance type
  late final pulumi.Output<String> instanceType;
  /// Region ID
  late final pulumi.Output<String> regionId;
  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;
  /// Security group ID
  late final pulumi.Output<String> securityGroupId;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Switch ID.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_eais_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eais/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    category = registerOutput<String>('category');
    createTime = registerOutput<String>('createTime');
    environmentVars = registerOutput<List<Map<String, dynamic>>?>('environmentVars');
    force = registerOutput<bool?>('force');
    image = registerOutput<String?>('image');
    instanceName = registerOutput<String>('instanceName');
    instanceType = registerOutput<String>('instanceType');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityGroupId = registerOutput<String>('securityGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eais/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    category = registerOutput<String>('category');
    createTime = registerOutput<String>('createTime');
    environmentVars = registerOutput<List<Map<String, dynamic>>?>('environmentVars');
    force = registerOutput<bool?>('force');
    image = registerOutput<String?>('image');
    instanceName = registerOutput<String>('instanceName');
    instanceType = registerOutput<String>('instanceType');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityGroupId = registerOutput<String>('securityGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vswitchId = registerOutput<String>('vswitchId');
  }
}

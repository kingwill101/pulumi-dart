import 'package:pulumi/pulumi.dart' as pulumi;
import 'vvp_instance_args.dart';
import 'vvp_instance_resource_spec.dart';
import 'vvp_instance_state.dart';
import 'vvp_instance_storage.dart';

/// ## Import
///
/// Realtime Compute Vvp Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:realtimecompute/vvpInstance:VvpInstance example <id>
/// ```
class VvpInstance extends pulumi.CustomResource {
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;

  /// The number of subscription periods. If the payment type is PRE, this parameter is required.
  late final pulumi.Output<int?> duration;

  /// The payment type of the resource.
  late final pulumi.Output<String> paymentType;

  /// The subscription period. If the payment type is PRE, this parameter is required.
  late final pulumi.Output<String?> pricingCycle;

  /// The resource group to which the newly purchased instance belongs.
  late final pulumi.Output<String> resourceGroupId;

  /// (Available since v1.264.0) The ID of the K8s cluster.
  late final pulumi.Output<String> resourceId;

  /// Resource specifications. See `resource_spec` below.
  late final pulumi.Output<VvpInstanceResourceSpec> resourceSpec;

  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// Store information. See `storage` below.
  late final pulumi.Output<VvpInstanceStorage> storage;

  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The VPC ID of the user.
  late final pulumi.Output<String> vpcId;

  /// Virtual Switch ID.
  late final pulumi.Output<List<String>> vswitchIds;

  /// The name of the workspace.
  late final pulumi.Output<String> vvpInstanceName;

  /// The zone ID of the resource.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [VvpInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VvpInstance]. {@macro pulumi_realtimecompute_vvp_instance_vvp_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VvpInstance(
    String name, {
    VvpInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:realtimecompute/vvpInstance:VvpInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    duration = registerOutput<int?>('duration');
    paymentType = registerOutput<String>('paymentType');
    pricingCycle = registerOutput<String?>('pricingCycle');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    resourceId = registerOutput<String>('resourceId');
    resourceSpec = registerOutput<VvpInstanceResourceSpec>(
      'resourceSpec',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VvpInstanceResourceSpec.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<String>('status');
    storage = registerOutput<VvpInstanceStorage>(
      'storage',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VvpInstanceStorage.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
    vswitchIds = registerOutput<List<String>>('vswitchIds');
    vvpInstanceName = registerOutput<String>('vvpInstanceName');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [VvpInstance] resource's state with the given [name] and [id].
  static VvpInstance get(
    String name,
    pulumi.Input<String> id, {
    VvpInstanceState? state,
  }) {
    return VvpInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VvpInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:realtimecompute/vvpInstance:VvpInstance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    duration = registerOutput<int?>('duration');
    paymentType = registerOutput<String>('paymentType');
    pricingCycle = registerOutput<String?>('pricingCycle');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    resourceId = registerOutput<String>('resourceId');
    resourceSpec = registerOutput<VvpInstanceResourceSpec>(
      'resourceSpec',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VvpInstanceResourceSpec.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<String>('status');
    storage = registerOutput<VvpInstanceStorage>(
      'storage',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VvpInstanceStorage.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
    vswitchIds = registerOutput<List<String>>('vswitchIds');
    vvpInstanceName = registerOutput<String>('vvpInstanceName');
    zoneId = registerOutput<String>('zoneId');
  }
}

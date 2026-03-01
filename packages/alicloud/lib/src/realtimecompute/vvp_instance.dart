import 'package:pulumi/pulumi.dart' as pulumi;
import 'vvp_instance_args.dart';
import 'vvp_instance_resource_spec.dart';
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
    this.createTime = registerOutput<String>('createTime');
    this.duration = registerOutput<int?>('duration');
    this.paymentType = registerOutput<String>('paymentType');
    this.pricingCycle = registerOutput<String?>('pricingCycle');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.resourceId = registerOutput<String>('resourceId');
    this.resourceSpec = registerOutput<VvpInstanceResourceSpec>('resourceSpec');
    this.status = registerOutput<String>('status');
    this.storage = registerOutput<VvpInstanceStorage>('storage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchIds = registerOutput<List<String>>('vswitchIds');
    this.vvpInstanceName = registerOutput<String>('vvpInstanceName');
    this.zoneId = registerOutput<String>('zoneId');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_args.dart';
import 'dedicated_host_state.dart';

/// ## Import
///
/// Ecs dedicated host can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/dedicatedHost:DedicatedHost default dh-2zedmxxxx
/// ```
class DedicatedHost extends pulumi.CustomResource {
  /// The policy used to migrate the instances from the dedicated host when the dedicated host fails or needs to be repaired online. Valid values: `Migrate`, `Stop`.
  late final pulumi.Output<String?> actionOnMaintenance;
  /// Specifies whether to add the dedicated host to the resource pool for automatic deployment. If you do not specify the DedicatedHostId parameter when you create an instance on a dedicated host, Alibaba Cloud automatically selects a dedicated host from the resource pool to host the instance. Valid values: `on`, `off`. Default: `on`.
  late final pulumi.Output<String?> autoPlacement;
  /// The automatic release time of the dedicated host. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC+0.
  late final pulumi.Output<String> autoReleaseTime;
  /// Specifies whether to automatically renew the subscription dedicated host.
  late final pulumi.Output<bool?> autoRenew;
  /// The auto-renewal period of the dedicated host. Unit: months. Valid values: `1`, `2`, `3`, `6`, and `12`. takes effect and is required only when the AutoRenew parameter is set to true.
  late final pulumi.Output<int?> autoRenewPeriod;
  /// CPU oversold ratio. Only custom specifications g6s, c6s, r6s support setting the CPU oversold ratio.
  late final pulumi.Output<double?> cpuOverCommitRatio;
  /// The dedicated host cluster ID to which the dedicated host belongs.
  late final pulumi.Output<String?> dedicatedHostClusterId;
  /// The name of the dedicated host. The name must be 2 to 128 characters in length. It must start with a letter but cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  late final pulumi.Output<String?> dedicatedHostName;
  /// The type of the dedicated host. You can call the [DescribeDedicatedHostTypes](https://www.alibabacloud.com/help/doc-detail/134240.htm) operation to obtain the most recent list of dedicated host types.
  late final pulumi.Output<String> dedicatedHostType;
  /// The description of the dedicated host. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  late final pulumi.Output<String?> description;
  /// Specifies whether to return the billing details of the order when the billing method is changed from subscription to pay-as-you-go. Default: `false`.
  late final pulumi.Output<bool?> detailFee;
  /// Specifies whether to only validate the request. Default: `false`.
  late final pulumi.Output<bool?> dryRun;
  /// The subscription period of the dedicated host. The Period parameter takes effect and is required only when the ChargeType parameter is set to PrePaid.
  late final pulumi.Output<String> expiredTime;
  /// Specify the minimum purchase quantity of a dedicated host.
  late final pulumi.Output<int?> minQuantity;
  /// dedicated host network parameters. contains the following attributes:
  late final pulumi.Output<List<Map<String, dynamic>>?> networkAttributes;
  /// The billing method of the dedicated host. Valid values: `PrePaid`, `PostPaid`. Default: `PostPaid`.
  late final pulumi.Output<String> paymentType;
  /// The ID of the resource group to which the dedicated host belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// The unit of the subscription period of the dedicated host.
  late final pulumi.Output<String> saleCycle;
  /// The status of the dedicated host.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The zone ID of the dedicated host. This parameter is empty by default. If you do not specify this parameter, the system automatically selects a zone.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [DedicatedHost].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedHost]. {@macro pulumi_ecs_dedicated_host_dedicated_host_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedHost(
    String name, {
    DedicatedHostArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/dedicatedHost:DedicatedHost',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actionOnMaintenance = registerOutput<String?>('actionOnMaintenance');
    autoPlacement = registerOutput<String?>('autoPlacement');
    autoReleaseTime = registerOutput<String>('autoReleaseTime');
    autoRenew = registerOutput<bool?>('autoRenew');
    autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    cpuOverCommitRatio = registerOutput<double?>('cpuOverCommitRatio');
    dedicatedHostClusterId = registerOutput<String?>('dedicatedHostClusterId');
    dedicatedHostName = registerOutput<String?>('dedicatedHostName');
    dedicatedHostType = registerOutput<String>('dedicatedHostType');
    description = registerOutput<String?>('description');
    detailFee = registerOutput<bool?>('detailFee');
    dryRun = registerOutput<bool?>('dryRun');
    expiredTime = registerOutput<String>('expiredTime');
    minQuantity = registerOutput<int?>('minQuantity');
    networkAttributes = registerOutput<List<Map<String, dynamic>>?>('networkAttributes');
    paymentType = registerOutput<String>('paymentType');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    saleCycle = registerOutput<String>('saleCycle');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [DedicatedHost] resource's state with the given [name] and [id].
  static DedicatedHost get(
    String name,
    pulumi.Input<String> id, {
    DedicatedHostState? state,
  }) {
    return DedicatedHost._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DedicatedHost._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/dedicatedHost:DedicatedHost',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actionOnMaintenance = registerOutput<String?>('actionOnMaintenance');
    autoPlacement = registerOutput<String?>('autoPlacement');
    autoReleaseTime = registerOutput<String>('autoReleaseTime');
    autoRenew = registerOutput<bool?>('autoRenew');
    autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    cpuOverCommitRatio = registerOutput<double?>('cpuOverCommitRatio');
    dedicatedHostClusterId = registerOutput<String?>('dedicatedHostClusterId');
    dedicatedHostName = registerOutput<String?>('dedicatedHostName');
    dedicatedHostType = registerOutput<String>('dedicatedHostType');
    description = registerOutput<String?>('description');
    detailFee = registerOutput<bool?>('detailFee');
    dryRun = registerOutput<bool?>('dryRun');
    expiredTime = registerOutput<String>('expiredTime');
    minQuantity = registerOutput<int?>('minQuantity');
    networkAttributes = registerOutput<List<Map<String, dynamic>>?>('networkAttributes');
    paymentType = registerOutput<String>('paymentType');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    saleCycle = registerOutput<String>('saleCycle');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    zoneId = registerOutput<String>('zoneId');
  }
}

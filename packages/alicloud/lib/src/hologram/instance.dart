import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_endpoint.dart';

/// ## Import
///
/// Hologram Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:hologram/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// Whether to pay automatically. The default value is true. Value:
  /// - true: automatic payment
  /// - false: only generate orders, not pay
  /// > **NOTE:**  The default value is true. If the balance of your payment method is insufficient, you can set the parameter AutoPay to false, and an unpaid order will be generated. You can log in to the user Center to pay by yourself.
  late final pulumi.Output<bool?> autoPay;
  /// Instance low-frequency storage space. Unit: GB.
  /// > **NOTE:**  PayAsYouGo (PostPaid) instances ignore this parameter.
  late final pulumi.Output<int?> coldStorageSize;
  /// Instance specifications. Value:
  /// - 8 cores 32 GB (number of compute nodes: 1)
  /// - 16 cores 64 GB (number of compute nodes: 1)
  /// - 32 core 128 GB (number of compute nodes: 2)
  /// - 64 core 256 GB (number of compute nodes: 4)
  /// - 96 core 384 GB (number of computing nodes: 6)
  /// - 128 core 512 GB (number of compute nodes: 8)
  /// > **NOTE:** Just fill in the audit number. Please submit a work order application for purchasing 1024 or above specifications. Shared instance types do not need to specify specifications. The specification of - 8 core 32GB (number of computing nodes: 1) is only for experience use and cannot be used for production.
  late final pulumi.Output<int> cpu;
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;
  /// The buying cycle. Buy for 2 months. If the Payment type is PayAsYouGo (PostPaid), you do not need to specify it.
  late final pulumi.Output<int?> duration;
  /// Specifies whether to enable SSL encryption. Default Value: `false`. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> enableSsl;
  /// List of domain names. See `endpoints` below.
  late final pulumi.Output<List<InstanceEndpoint>> endpoints;
  /// Number of gateway nodes.
  late final pulumi.Output<int?> gatewayCount;
  /// Initialize the database and split multiple database names ",".
  late final pulumi.Output<String?> initialDatabases;
  /// The name of the resource.
  late final pulumi.Output<String> instanceName;
  /// The instance type. Value:
  /// - Standard: Universal.
  /// - Follower: Read-only slave instance.
  /// - Warehouse: calculation group type.
  /// - Shared: Shared.
  /// - Serverless: (Available since v1.259.0) Serverless.
  late final pulumi.Output<String> instanceType;
  /// The ID of the primary instance.
  late final pulumi.Output<String?> leaderInstanceId;
  /// The payment type of the resource.
  late final pulumi.Output<String> paymentType;
  /// Billing cycle. Value:
  /// - Month: monthly billing
  /// - Hour: hourly billing
  /// > **NOTE:**  Subscription instances (PrePaid) only supports Month. PayAsYouGo instances (PostPaid) only supports Hour. The Shared type is automatically set to Hour without specifying it.
  late final pulumi.Output<String?> pricingCycle;
  /// (Available since v1.259.0) The region ID.
  late final pulumi.Output<String> regionId;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// Change matching type. Value:
  /// - UPGRADE: UPGRADE
  /// - DOWNGRADE: Downgrading
  /// > **NOTE:** The upgrade specification cannot be less than the original specification. A blank field indicates that the original specification remains unchanged. On this basis, at least one specification is larger than the original specification. The downgrading specification cannot be greater than the original specification. A blank field indicates that the original specification remains unchanged. On this basis, at least one specification is smaller than the original specification.
  late final pulumi.Output<String?> scaleType;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// The standard storage space of the instance. Unit: GB.
  /// > **NOTE:**  PayAsYouGo instances (PostPaid) ignore this parameter.
  late final pulumi.Output<int?> storageSize;
  /// Instance tag.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The zone Id. Refer to "Instructions for Use".
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_hologram_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hologram/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoPay = registerOutput<bool?>('autoPay');
    this.coldStorageSize = registerOutput<int?>('coldStorageSize');
    this.cpu = registerOutput<int>('cpu');
    this.createTime = registerOutput<String>('createTime');
    this.duration = registerOutput<int?>('duration');
    this.enableSsl = registerOutput<bool?>('enableSsl');
    this.endpoints = registerOutput<List<InstanceEndpoint>>('endpoints');
    this.gatewayCount = registerOutput<int?>('gatewayCount');
    this.initialDatabases = registerOutput<String?>('initialDatabases');
    this.instanceName = registerOutput<String>('instanceName');
    this.instanceType = registerOutput<String>('instanceType');
    this.leaderInstanceId = registerOutput<String?>('leaderInstanceId');
    this.paymentType = registerOutput<String>('paymentType');
    this.pricingCycle = registerOutput<String?>('pricingCycle');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.scaleType = registerOutput<String?>('scaleType');
    this.status = registerOutput<String>('status');
    this.storageSize = registerOutput<int?>('storageSize');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.zoneId = registerOutput<String>('zoneId');
  }
}

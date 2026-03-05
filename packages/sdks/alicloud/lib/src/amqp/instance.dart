import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';

/// ## Import
///
/// Amqp Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:amqp/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// Renewal method. Automatic renewal: true; Manual renewal: false. When RenewalStatus has a value, the value of RenewalStatus shall prevail.
  late final pulumi.Output<bool?> autoRenew;
  /// OrderCreateTime.
  late final pulumi.Output<int> createTime;
  /// The deployment architecture for Serverless instances. Valid values:
  late final pulumi.Output<String> edition;
  /// The instance name.
  late final pulumi.Output<String> instanceName;
  /// Instance type. Valid values:
  /// - professional: professional Edition
  /// - enterprise: enterprise Edition
  /// - vip: Platinum Edition.
  /// - serverless: Serverless Edition.
  /// &gt; **NOTE:** There should not set the `instance_type` parameter when creating a serverless instance. Only need to set `payment_type = "PayAsYouGo"` and `serverless_charge_type = "onDemand"`.
  late final pulumi.Output<String> instanceType;
  /// The maximum number of connections, according to the value given on the purchase page of the cloud message queue RabbitMQ version console.
  late final pulumi.Output<int> maxConnections;
  /// Peak TPS traffic of the public network, which must be a multiple of 128, unit: times per second.
  late final pulumi.Output<String> maxEipTps;
  /// Configure the private network TPS traffic peak, please set the value according to the cloud message queue RabbitMQ version of the console purchase page given.
  late final pulumi.Output<String> maxTps;
  /// This parameter must be provided while you change the instance specification. Type of instance lifting and lowering:
  /// - Upgrade: Upgrade
  /// - Downgrade: Downgrading.
  late final pulumi.Output<String?> modifyType;
  /// The Payment type. Valid value:
  /// - Subscription: Pre-paid.
  /// - PayAsYouGo: Post-paid, and for serverless Edition.
  late final pulumi.Output<String> paymentType;
  /// Prepayment cycle, unit: periodCycle. This parameter is valid when PaymentType is set to Subscription.
  late final pulumi.Output<int?> period;
  /// Prepaid cycle units. Value: Month, Year.
  late final pulumi.Output<String?> periodCycle;
  /// The provisioned TPS capacity for reserved + elastic instances.
  late final pulumi.Output<int?> provisionedCapacity;
  /// Configure the maximum number of queues. The value range is as follows:  Professional version:[50,1000], minimum modification step size is 5  Enterprise Edition:[200,6000], minimum modification step size is 100  Platinum version:[10000,80000], minimum modification step size is 100.
  late final pulumi.Output<String> queueCapacity;
  /// The number of automatic renewal cycles.
  late final pulumi.Output<int> renewalDuration;
  /// Auto-Renewal Cycle Unit Values Include: Month: Month. Year: Years.
  late final pulumi.Output<String> renewalDurationUnit;
  /// The renewal status. Value: AutoRenewal: automatic renewal. ManualRenewal: manual renewal. NotRenewal: no renewal.
  late final pulumi.Output<String> renewalStatus;
  /// The billing type of the serverless instance. Value: onDemand.
  late final pulumi.Output<String?> serverlessChargeType;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// Configure the message storage space. Unit: GB. The value is as follows:  Professional Edition and Enterprise Edition: Fixed to 0. Description A value of 0 indicates that the Professional Edition and Enterprise Edition instances do not charge storage fees, but do not have storage space. Platinum version example: m × 100, where the value range of m is [7,28].
  late final pulumi.Output<String> storageSize;
  /// Whether to support public network.
  late final pulumi.Output<bool?> supportEip;
  /// Whether to activate the message trace function. The values are as follows:  true: Enable message trace function false: message trace function is not enabled Description The Platinum Edition instance provides the 15-day message trace function free of charge. The trace function can only be enabled and the trace storage duration can only be set to 15 days. For instances of other specifications, you can enable or disable the trace function.
  late final pulumi.Output<bool?> supportTracing;
  /// Configure the storage duration of message traces. Unit: Days. The value is as follows:  3:3 days 7:7 days 15:15 days This parameter is valid when SupportTracing is true.
  late final pulumi.Output<int> tracingStorageTime;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_amqp_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:amqp/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoRenew = registerOutput<bool?>('autoRenew');
    createTime = registerOutput<int>('createTime');
    edition = registerOutput<String>('edition');
    instanceName = registerOutput<String>('instanceName');
    instanceType = registerOutput<String>('instanceType');
    maxConnections = registerOutput<int>('maxConnections');
    maxEipTps = registerOutput<String>('maxEipTps');
    maxTps = registerOutput<String>('maxTps');
    modifyType = registerOutput<String?>('modifyType');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    periodCycle = registerOutput<String?>('periodCycle');
    provisionedCapacity = registerOutput<int?>('provisionedCapacity');
    queueCapacity = registerOutput<String>('queueCapacity');
    renewalDuration = registerOutput<int>('renewalDuration');
    renewalDurationUnit = registerOutput<String>('renewalDurationUnit');
    renewalStatus = registerOutput<String>('renewalStatus');
    serverlessChargeType = registerOutput<String?>('serverlessChargeType');
    status = registerOutput<String>('status');
    storageSize = registerOutput<String>('storageSize');
    supportEip = registerOutput<bool?>('supportEip');
    supportTracing = registerOutput<bool?>('supportTracing');
    tracingStorageTime = registerOutput<int>('tracingStorageTime');
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
          'alicloud:amqp/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoRenew = registerOutput<bool?>('autoRenew');
    createTime = registerOutput<int>('createTime');
    edition = registerOutput<String>('edition');
    instanceName = registerOutput<String>('instanceName');
    instanceType = registerOutput<String>('instanceType');
    maxConnections = registerOutput<int>('maxConnections');
    maxEipTps = registerOutput<String>('maxEipTps');
    maxTps = registerOutput<String>('maxTps');
    modifyType = registerOutput<String?>('modifyType');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    periodCycle = registerOutput<String?>('periodCycle');
    provisionedCapacity = registerOutput<int?>('provisionedCapacity');
    queueCapacity = registerOutput<String>('queueCapacity');
    renewalDuration = registerOutput<int>('renewalDuration');
    renewalDurationUnit = registerOutput<String>('renewalDurationUnit');
    renewalStatus = registerOutput<String>('renewalStatus');
    serverlessChargeType = registerOutput<String?>('serverlessChargeType');
    status = registerOutput<String>('status');
    storageSize = registerOutput<String>('storageSize');
    supportEip = registerOutput<bool?>('supportEip');
    supportTracing = registerOutput<bool?>('supportTracing');
    tracingStorageTime = registerOutput<int>('tracingStorageTime');
  }
}

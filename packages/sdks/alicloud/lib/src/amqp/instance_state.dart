// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Renewal method. Automatic renewal: true; Manual renewal: false. When RenewalStatus has a value, the value of RenewalStatus shall prevail.
  final pulumi.Input<bool>? autoRenew;
  /// OrderCreateTime.
  final pulumi.Input<int>? createTime;
  /// The deployment architecture for Serverless instances. Valid values:
  final pulumi.Input<String>? edition;
  /// The instance name.
  final pulumi.Input<String>? instanceName;
  /// Instance type. Valid values:
  /// - professional: professional Edition
  /// - enterprise: enterprise Edition
  /// - vip: Platinum Edition.
  /// - serverless: Serverless Edition.
  /// > **NOTE:** There should not set the `instance_type` parameter when creating a serverless instance. Only need to set `payment_type = "PayAsYouGo"` and `serverless_charge_type = "onDemand"`.
  final pulumi.Input<String>? instanceType;
  /// The maximum number of connections, according to the value given on the purchase page of the cloud message queue RabbitMQ version console.
  final pulumi.Input<int>? maxConnections;
  /// Peak TPS traffic of the public network, which must be a multiple of 128, unit: times per second.
  final pulumi.Input<String>? maxEipTps;
  /// Configure the private network TPS traffic peak, please set the value according to the cloud message queue RabbitMQ version of the console purchase page given.
  final pulumi.Input<String>? maxTps;
  /// This parameter must be provided while you change the instance specification. Type of instance lifting and lowering:
  /// - Upgrade: Upgrade
  /// - Downgrade: Downgrading.
  final pulumi.Input<String>? modifyType;
  /// The Payment type. Valid value:
  /// - Subscription: Pre-paid.
  /// - PayAsYouGo: Post-paid, and for serverless Edition.
  final pulumi.Input<String>? paymentType;
  /// Prepayment cycle, unit: periodCycle. This parameter is valid when PaymentType is set to Subscription.
  final pulumi.Input<int>? period;
  /// Prepaid cycle units. Value: Month, Year.
  final pulumi.Input<String>? periodCycle;
  /// The provisioned TPS capacity for reserved + elastic instances.
  final pulumi.Input<int>? provisionedCapacity;
  /// Configure the maximum number of queues. The value range is as follows:  Professional version:[50,1000], minimum modification step size is 5  Enterprise Edition:[200,6000], minimum modification step size is 100  Platinum version:[10000,80000], minimum modification step size is 100.
  final pulumi.Input<String>? queueCapacity;
  /// The number of automatic renewal cycles.
  final pulumi.Input<int>? renewalDuration;
  /// Auto-Renewal Cycle Unit Values Include: Month: Month. Year: Years.
  final pulumi.Input<String>? renewalDurationUnit;
  /// The renewal status. Value: AutoRenewal: automatic renewal. ManualRenewal: manual renewal. NotRenewal: no renewal.
  final pulumi.Input<String>? renewalStatus;
  /// The billing type of the serverless instance. Value: onDemand.
  final pulumi.Input<String>? serverlessChargeType;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// Configure the message storage space. Unit: GB. The value is as follows:  Professional Edition and Enterprise Edition: Fixed to 0. Description A value of 0 indicates that the Professional Edition and Enterprise Edition instances do not charge storage fees, but do not have storage space. Platinum version example: m × 100, where the value range of m is [7,28].
  final pulumi.Input<String>? storageSize;
  /// Whether to support public network.
  final pulumi.Input<bool>? supportEip;
  /// Whether to activate the message trace function. The values are as follows:  true: Enable message trace function false: message trace function is not enabled Description The Platinum Edition instance provides the 15-day message trace function free of charge. The trace function can only be enabled and the trace storage duration can only be set to 15 days. For instances of other specifications, you can enable or disable the trace function.
  final pulumi.Input<bool>? supportTracing;
  /// Configure the storage duration of message traces. Unit: Days. The value is as follows:  3:3 days 7:7 days 15:15 days This parameter is valid when SupportTracing is true.
  final pulumi.Input<int>? tracingStorageTime;

  /// Creates a new [InstanceState].
  /// [autoRenew] Renewal method. Automatic renewal: true; Manual renewal: false. When RenewalStatus has a value, the value of RenewalStatus shall prevail.
  /// [createTime] OrderCreateTime.
  /// [edition] The deployment architecture for Serverless instances. Valid values:
  /// [instanceName] The instance name.
  /// [instanceType] Instance type. Valid values:
  /// [maxConnections] The maximum number of connections, according to the value given on the purchase page of the cloud message queue RabbitMQ version console.
  /// [maxEipTps] Peak TPS traffic of the public network, which must be a multiple of 128, unit: times per second.
  /// [maxTps] Configure the private network TPS traffic peak, please set the value according to the cloud message queue RabbitMQ version of the console purchase page given.
  /// [modifyType] This parameter must be provided while you change the instance specification. Type of instance lifting and lowering:
  /// [paymentType] The Payment type. Valid value:
  /// [period] Prepayment cycle, unit: periodCycle. This parameter is valid when PaymentType is set to Subscription.
  /// [periodCycle] Prepaid cycle units. Value: Month, Year.
  /// [provisionedCapacity] The provisioned TPS capacity for reserved + elastic instances.
  /// [queueCapacity] Configure the maximum number of queues. The value range is as follows:  Professional version:[50,1000], minimum modification step size is 5  Enterprise Edition:[200,6000], minimum modification step size is 100  Platinum version:[10000,80000], minimum modification step size is 100.
  /// [renewalDuration] The number of automatic renewal cycles.
  /// [renewalDurationUnit] Auto-Renewal Cycle Unit Values Include: Month: Month. Year: Years.
  /// [renewalStatus] The renewal status. Value: AutoRenewal: automatic renewal. ManualRenewal: manual renewal. NotRenewal: no renewal.
  /// [serverlessChargeType] The billing type of the serverless instance. Value: onDemand.
  /// [status] The status of the resource.
  /// [storageSize] Configure the message storage space. Unit: GB. The value is as follows:  Professional Edition and Enterprise Edition: Fixed to 0. Description A value of 0 indicates that the Professional Edition and Enterprise Edition instances do not charge storage fees, but do not have storage space. Platinum version example: m × 100, where the value range of m is [7,28].
  /// [supportEip] Whether to support public network.
  /// [supportTracing] Whether to activate the message trace function. The values are as follows:  true: Enable message trace function false: message trace function is not enabled Description The Platinum Edition instance provides the 15-day message trace function free of charge. The trace function can only be enabled and the trace storage duration can only be set to 15 days. For instances of other specifications, you can enable or disable the trace function.
  /// [tracingStorageTime] Configure the storage duration of message traces. Unit: Days. The value is as follows:  3:3 days 7:7 days 15:15 days This parameter is valid when SupportTracing is true.
  InstanceState({
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? edition,
    pulumi.Output<String>? instanceName,
    pulumi.Output<String>? instanceType,
    pulumi.Output<int>? maxConnections,
    pulumi.Output<String>? maxEipTps,
    pulumi.Output<String>? maxTps,
    pulumi.Output<String>? modifyType,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? periodCycle,
    pulumi.Output<int>? provisionedCapacity,
    pulumi.Output<String>? queueCapacity,
    pulumi.Output<int>? renewalDuration,
    pulumi.Output<String>? renewalDurationUnit,
    pulumi.Output<String>? renewalStatus,
    pulumi.Output<String>? serverlessChargeType,
    pulumi.Output<String>? status,
    pulumi.Output<String>? storageSize,
    pulumi.Output<bool>? supportEip,
    pulumi.Output<bool>? supportTracing,
    pulumi.Output<int>? tracingStorageTime,
  }) :
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      edition = pulumi.Input.asOptionalInput<String>(edition),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      maxConnections = pulumi.Input.asOptionalInput<int>(maxConnections),
      maxEipTps = pulumi.Input.asOptionalInput<String>(maxEipTps),
      maxTps = pulumi.Input.asOptionalInput<String>(maxTps),
      modifyType = pulumi.Input.asOptionalInput<String>(modifyType),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      periodCycle = pulumi.Input.asOptionalInput<String>(periodCycle),
      provisionedCapacity = pulumi.Input.asOptionalInput<int>(provisionedCapacity),
      queueCapacity = pulumi.Input.asOptionalInput<String>(queueCapacity),
      renewalDuration = pulumi.Input.asOptionalInput<int>(renewalDuration),
      renewalDurationUnit = pulumi.Input.asOptionalInput<String>(renewalDurationUnit),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      serverlessChargeType = pulumi.Input.asOptionalInput<String>(serverlessChargeType),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageSize = pulumi.Input.asOptionalInput<String>(storageSize),
      supportEip = pulumi.Input.asOptionalInput<bool>(supportEip),
      supportTracing = pulumi.Input.asOptionalInput<bool>(supportTracing),
      tracingStorageTime = pulumi.Input.asOptionalInput<int>(tracingStorageTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'createTime': ?createTime,
      'edition': ?edition,
      'instanceName': ?instanceName,
      'instanceType': ?instanceType,
      'maxConnections': ?maxConnections,
      'maxEipTps': ?maxEipTps,
      'maxTps': ?maxTps,
      'modifyType': ?modifyType,
      'paymentType': ?paymentType,
      'period': ?period,
      'periodCycle': ?periodCycle,
      'provisionedCapacity': ?provisionedCapacity,
      'queueCapacity': ?queueCapacity,
      'renewalDuration': ?renewalDuration,
      'renewalDurationUnit': ?renewalDurationUnit,
      'renewalStatus': ?renewalStatus,
      'serverlessChargeType': ?serverlessChargeType,
      'status': ?status,
      'storageSize': ?storageSize,
      'supportEip': ?supportEip,
      'supportTracing': ?supportTracing,
      'tracingStorageTime': ?tracingStorageTime,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      edition: map['edition'] == null ? null : pulumi.Output.create<String>(map['edition'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      maxConnections: map['maxConnections'] == null ? null : pulumi.Output.create<int>(map['maxConnections'] as int),
      maxEipTps: map['maxEipTps'] == null ? null : pulumi.Output.create<String>(map['maxEipTps'] as String),
      maxTps: map['maxTps'] == null ? null : pulumi.Output.create<String>(map['maxTps'] as String),
      modifyType: map['modifyType'] == null ? null : pulumi.Output.create<String>(map['modifyType'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      periodCycle: map['periodCycle'] == null ? null : pulumi.Output.create<String>(map['periodCycle'] as String),
      provisionedCapacity: map['provisionedCapacity'] == null ? null : pulumi.Output.create<int>(map['provisionedCapacity'] as int),
      queueCapacity: map['queueCapacity'] == null ? null : pulumi.Output.create<String>(map['queueCapacity'] as String),
      renewalDuration: map['renewalDuration'] == null ? null : pulumi.Output.create<int>(map['renewalDuration'] as int),
      renewalDurationUnit: map['renewalDurationUnit'] == null ? null : pulumi.Output.create<String>(map['renewalDurationUnit'] as String),
      renewalStatus: map['renewalStatus'] == null ? null : pulumi.Output.create<String>(map['renewalStatus'] as String),
      serverlessChargeType: map['serverlessChargeType'] == null ? null : pulumi.Output.create<String>(map['serverlessChargeType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageSize: map['storageSize'] == null ? null : pulumi.Output.create<String>(map['storageSize'] as String),
      supportEip: map['supportEip'] == null ? null : pulumi.Output.create<bool>(map['supportEip'] as bool),
      supportTracing: map['supportTracing'] == null ? null : pulumi.Output.create<bool>(map['supportTracing'] as bool),
      tracingStorageTime: map['tracingStorageTime'] == null ? null : pulumi.Output.create<int>(map['tracingStorageTime'] as int),
    );
  }
}


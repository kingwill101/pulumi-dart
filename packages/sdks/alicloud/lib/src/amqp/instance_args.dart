// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_amqp_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_amqp_instance_instance_args_doc}
class InstanceArgs {
  /// Renewal method. Automatic renewal: true; Manual renewal: false. When RenewalStatus has a value, the value of RenewalStatus shall prevail.
  final pulumi.Input<bool>? autoRenew;
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
  final pulumi.Input<String> paymentType;
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
  /// Configure the message storage space. Unit: GB. The value is as follows:  Professional Edition and Enterprise Edition: Fixed to 0. Description A value of 0 indicates that the Professional Edition and Enterprise Edition instances do not charge storage fees, but do not have storage space. Platinum version example: m × 100, where the value range of m is [7,28].
  final pulumi.Input<String>? storageSize;
  /// Whether to support public network.
  final pulumi.Input<bool>? supportEip;
  /// Whether to activate the message trace function. The values are as follows:  true: Enable message trace function false: message trace function is not enabled Description The Platinum Edition instance provides the 15-day message trace function free of charge. The trace function can only be enabled and the trace storage duration can only be set to 15 days. For instances of other specifications, you can enable or disable the trace function.
  final pulumi.Input<bool>? supportTracing;
  /// Configure the storage duration of message traces. Unit: Days. The value is as follows:  3:3 days 7:7 days 15:15 days This parameter is valid when SupportTracing is true.
  final pulumi.Input<int>? tracingStorageTime;

  /// Creates a new [InstanceArgs].
  /// [autoRenew] Renewal method. Automatic renewal: true; Manual renewal: false. When RenewalStatus has a value, the value of RenewalStatus shall prevail.
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
  /// [storageSize] Configure the message storage space. Unit: GB. The value is as follows:  Professional Edition and Enterprise Edition: Fixed to 0. Description A value of 0 indicates that the Professional Edition and Enterprise Edition instances do not charge storage fees, but do not have storage space. Platinum version example: m × 100, where the value range of m is [7,28].
  /// [supportEip] Whether to support public network.
  /// [supportTracing] Whether to activate the message trace function. The values are as follows:  true: Enable message trace function false: message trace function is not enabled Description The Platinum Edition instance provides the 15-day message trace function free of charge. The trace function can only be enabled and the trace storage duration can only be set to 15 days. For instances of other specifications, you can enable or disable the trace function.
  /// [tracingStorageTime] Configure the storage duration of message traces. Unit: Days. The value is as follows:  3:3 days 7:7 days 15:15 days This parameter is valid when SupportTracing is true.
  InstanceArgs({
    this.autoRenew,
    this.edition,
    this.instanceName,
    this.instanceType,
    this.maxConnections,
    this.maxEipTps,
    this.maxTps,
    this.modifyType,
    required this.paymentType,
    this.period,
    this.periodCycle,
    this.provisionedCapacity,
    this.queueCapacity,
    this.renewalDuration,
    this.renewalDurationUnit,
    this.renewalStatus,
    this.serverlessChargeType,
    this.storageSize,
    this.supportEip,
    this.supportTracing,
    this.tracingStorageTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'edition': ?edition,
      'instanceName': ?instanceName,
      'instanceType': ?instanceType,
      'maxConnections': ?maxConnections,
      'maxEipTps': ?maxEipTps,
      'maxTps': ?maxTps,
      'modifyType': ?modifyType,
      'paymentType': paymentType,
      'period': ?period,
      'periodCycle': ?periodCycle,
      'provisionedCapacity': ?provisionedCapacity,
      'queueCapacity': ?queueCapacity,
      'renewalDuration': ?renewalDuration,
      'renewalDurationUnit': ?renewalDurationUnit,
      'renewalStatus': ?renewalStatus,
      'serverlessChargeType': ?serverlessChargeType,
      'storageSize': ?storageSize,
      'supportEip': ?supportEip,
      'supportTracing': ?supportTracing,
      'tracingStorageTime': ?tracingStorageTime,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew']! as bool).input(),
      edition: map['edition'] == null ? null : (map['edition']! as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName']! as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      maxConnections: map['maxConnections'] == null ? null : (map['maxConnections']! as int).input(),
      maxEipTps: map['maxEipTps'] == null ? null : (map['maxEipTps']! as String).input(),
      maxTps: map['maxTps'] == null ? null : (map['maxTps']! as String).input(),
      modifyType: map['modifyType'] == null ? null : (map['modifyType']! as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      periodCycle: map['periodCycle'] == null ? null : (map['periodCycle']! as String).input(),
      provisionedCapacity: map['provisionedCapacity'] == null ? null : (map['provisionedCapacity']! as int).input(),
      queueCapacity: map['queueCapacity'] == null ? null : (map['queueCapacity']! as String).input(),
      renewalDuration: map['renewalDuration'] == null ? null : (map['renewalDuration']! as int).input(),
      renewalDurationUnit: map['renewalDurationUnit'] == null ? null : (map['renewalDurationUnit']! as String).input(),
      renewalStatus: map['renewalStatus'] == null ? null : (map['renewalStatus']! as String).input(),
      serverlessChargeType: map['serverlessChargeType'] == null ? null : (map['serverlessChargeType']! as String).input(),
      storageSize: map['storageSize'] == null ? null : (map['storageSize']! as String).input(),
      supportEip: map['supportEip'] == null ? null : (map['supportEip']! as bool).input(),
      supportTracing: map['supportTracing'] == null ? null : (map['supportTracing']! as bool).input(),
      tracingStorageTime: map['tracingStorageTime'] == null ? null : (map['tracingStorageTime']! as int).input(),
    );
  }
}


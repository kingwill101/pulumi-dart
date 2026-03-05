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
  /// &gt; **NOTE:** There should not set the `instance_type` parameter when creating a serverless instance. Only need to set `payment_type = "PayAsYouGo"` and `serverless_charge_type = "onDemand"`.
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
    this.autoRenew,
    this.createTime,
    this.edition,
    this.instanceName,
    this.instanceType,
    this.maxConnections,
    this.maxEipTps,
    this.maxTps,
    this.modifyType,
    this.paymentType,
    this.period,
    this.periodCycle,
    this.provisionedCapacity,
    this.queueCapacity,
    this.renewalDuration,
    this.renewalDurationUnit,
    this.renewalStatus,
    this.serverlessChargeType,
    this.status,
    this.storageSize,
    this.supportEip,
    this.supportTracing,
    this.tracingStorageTime,
  });

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
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxConnections: (() { final guardedValue = map['maxConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxEipTps: (() { final guardedValue = map['maxEipTps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxTps: (() { final guardedValue = map['maxTps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifyType: (() { final guardedValue = map['modifyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      periodCycle: (() { final guardedValue = map['periodCycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedCapacity: (() { final guardedValue = map['provisionedCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      queueCapacity: (() { final guardedValue = map['queueCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalDuration: (() { final guardedValue = map['renewalDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      renewalDurationUnit: (() { final guardedValue = map['renewalDurationUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalStatus: (() { final guardedValue = map['renewalStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverlessChargeType: (() { final guardedValue = map['serverlessChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageSize: (() { final guardedValue = map['storageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportEip: (() { final guardedValue = map['supportEip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      supportTracing: (() { final guardedValue = map['supportTracing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tracingStorageTime: (() { final guardedValue = map['tracingStorageTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}


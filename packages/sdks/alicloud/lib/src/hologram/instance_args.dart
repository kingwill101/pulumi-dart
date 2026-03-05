// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_endpoint.dart';

/// {@template pulumi_hologram_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_hologram_instance_instance_args_doc}
class InstanceArgs {
  /// Whether to pay automatically. The default value is true. Value:
  /// - true: automatic payment
  /// - false: only generate orders, not pay
  /// &gt; **NOTE:**  The default value is true. If the balance of your payment method is insufficient, you can set the parameter AutoPay to false, and an unpaid order will be generated. You can log in to the user Center to pay by yourself.
  final pulumi.Input<bool>? autoPay;
  /// Instance low-frequency storage space. Unit: GB.
  /// &gt; **NOTE:**  PayAsYouGo (PostPaid) instances ignore this parameter.
  final pulumi.Input<int>? coldStorageSize;
  /// Instance specifications. Value:
  /// - 8 cores 32 GB (number of compute nodes: 1)
  /// - 16 cores 64 GB (number of compute nodes: 1)
  /// - 32 core 128 GB (number of compute nodes: 2)
  /// - 64 core 256 GB (number of compute nodes: 4)
  /// - 96 core 384 GB (number of computing nodes: 6)
  /// - 128 core 512 GB (number of compute nodes: 8)
  /// &gt; **NOTE:** Just fill in the audit number. Please submit a work order application for purchasing 1024 or above specifications. Shared instance types do not need to specify specifications. The specification of - 8 core 32GB (number of computing nodes: 1) is only for experience use and cannot be used for production.
  final pulumi.Input<int>? cpu;
  /// The buying cycle. Buy for 2 months. If the Payment type is PayAsYouGo (PostPaid), you do not need to specify it.
  final pulumi.Input<int>? duration;
  /// Specifies whether to enable SSL encryption. Default Value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? enableSsl;
  /// List of domain names. See `endpoints` below.
  final pulumi.Input<List<InstanceEndpoint>>? endpoints;
  /// Number of gateway nodes.
  final pulumi.Input<int>? gatewayCount;
  /// Initialize the database and split multiple database names ",".
  final pulumi.Input<String>? initialDatabases;
  /// The name of the resource.
  final pulumi.Input<String> instanceName;
  /// The instance type. Value:
  /// - Standard: Universal.
  /// - Follower: Read-only slave instance.
  /// - Warehouse: calculation group type.
  /// - Shared: Shared.
  /// - Serverless: (Available since v1.259.0) Serverless.
  final pulumi.Input<String> instanceType;
  /// The ID of the primary instance.
  final pulumi.Input<String>? leaderInstanceId;
  /// The payment type of the resource.
  final pulumi.Input<String> paymentType;
  /// Billing cycle. Value:
  /// - Month: monthly billing
  /// - Hour: hourly billing
  /// &gt; **NOTE:**  Subscription instances (PrePaid) only supports Month. PayAsYouGo instances (PostPaid) only supports Hour. The Shared type is automatically set to Hour without specifying it.
  final pulumi.Input<String>? pricingCycle;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// Change matching type. Value:
  /// - UPGRADE: UPGRADE
  /// - DOWNGRADE: Downgrading
  /// &gt; **NOTE:** The upgrade specification cannot be less than the original specification. A blank field indicates that the original specification remains unchanged. On this basis, at least one specification is larger than the original specification. The downgrading specification cannot be greater than the original specification. A blank field indicates that the original specification remains unchanged. On this basis, at least one specification is smaller than the original specification.
  final pulumi.Input<String>? scaleType;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// The standard storage space of the instance. Unit: GB.
  /// &gt; **NOTE:**  PayAsYouGo instances (PostPaid) ignore this parameter.
  final pulumi.Input<int>? storageSize;
  /// Instance tag.
  final pulumi.Input<Map<String, String>>? tags;
  /// The zone Id. Refer to "Instructions for Use".
  final pulumi.Input<String> zoneId;

  /// Creates a new [InstanceArgs].
  /// [autoPay] Whether to pay automatically. The default value is true. Value:
  /// [coldStorageSize] Instance low-frequency storage space. Unit: GB.
  /// [cpu] Instance specifications. Value:
  /// [duration] The buying cycle. Buy for 2 months. If the Payment type is PayAsYouGo (PostPaid), you do not need to specify it.
  /// [enableSsl] Specifies whether to enable SSL encryption. Default Value: `false`. Valid values: `true`, `false`.
  /// [endpoints] List of domain names. See `endpoints` below.
  /// [gatewayCount] Number of gateway nodes.
  /// [initialDatabases] Initialize the database and split multiple database names ",".
  /// [instanceName] The name of the resource.
  /// [instanceType] The instance type. Value:
  /// [leaderInstanceId] The ID of the primary instance.
  /// [paymentType] The payment type of the resource.
  /// [pricingCycle] Billing cycle. Value:
  /// [resourceGroupId] The ID of the resource group.
  /// [scaleType] Change matching type. Value:
  /// [status] The status of the resource.
  /// [storageSize] The standard storage space of the instance. Unit: GB.
  /// [tags] Instance tag.
  /// [zoneId] The zone Id. Refer to "Instructions for Use".
  InstanceArgs({
    this.autoPay,
    this.coldStorageSize,
    this.cpu,
    this.duration,
    this.enableSsl,
    this.endpoints,
    this.gatewayCount,
    this.initialDatabases,
    required this.instanceName,
    required this.instanceType,
    this.leaderInstanceId,
    required this.paymentType,
    this.pricingCycle,
    this.resourceGroupId,
    this.scaleType,
    this.status,
    this.storageSize,
    this.tags,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPay': ?autoPay,
      'coldStorageSize': ?coldStorageSize,
      'cpu': ?cpu,
      'duration': ?duration,
      'enableSsl': ?enableSsl,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<InstanceEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<InstanceEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayCount': ?gatewayCount,
      'initialDatabases': ?initialDatabases,
      'instanceName': instanceName,
      'instanceType': instanceType,
      'leaderInstanceId': ?leaderInstanceId,
      'paymentType': paymentType,
      'pricingCycle': ?pricingCycle,
      'resourceGroupId': ?resourceGroupId,
      'scaleType': ?scaleType,
      'status': ?status,
      'storageSize': ?storageSize,
      'tags': ?tags,
      'zoneId': zoneId,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      autoPay: (() { final guardedValue = map['autoPay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      coldStorageSize: (() { final guardedValue = map['coldStorageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enableSsl: (() { final guardedValue = map['enableSsl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceEndpoint>(guardedValue, (value) => InstanceEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      gatewayCount: (() { final guardedValue = map['gatewayCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      initialDatabases: (() { final guardedValue = map['initialDatabases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      leaderInstanceId: (() { final guardedValue = map['leaderInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      pricingCycle: (() { final guardedValue = map['pricingCycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleType: (() { final guardedValue = map['scaleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageSize: (() { final guardedValue = map['storageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}


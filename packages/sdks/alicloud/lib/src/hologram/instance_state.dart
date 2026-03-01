// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_endpoint.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Whether to pay automatically. The default value is true. Value:
  /// - true: automatic payment
  /// - false: only generate orders, not pay
  /// > **NOTE:**  The default value is true. If the balance of your payment method is insufficient, you can set the parameter AutoPay to false, and an unpaid order will be generated. You can log in to the user Center to pay by yourself.
  final pulumi.Input<bool>? autoPay;
  /// Instance low-frequency storage space. Unit: GB.
  /// > **NOTE:**  PayAsYouGo (PostPaid) instances ignore this parameter.
  final pulumi.Input<int>? coldStorageSize;
  /// Instance specifications. Value:
  /// - 8 cores 32 GB (number of compute nodes: 1)
  /// - 16 cores 64 GB (number of compute nodes: 1)
  /// - 32 core 128 GB (number of compute nodes: 2)
  /// - 64 core 256 GB (number of compute nodes: 4)
  /// - 96 core 384 GB (number of computing nodes: 6)
  /// - 128 core 512 GB (number of compute nodes: 8)
  /// > **NOTE:** Just fill in the audit number. Please submit a work order application for purchasing 1024 or above specifications. Shared instance types do not need to specify specifications. The specification of - 8 core 32GB (number of computing nodes: 1) is only for experience use and cannot be used for production.
  final pulumi.Input<int>? cpu;
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
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
  final pulumi.Input<String>? instanceName;
  /// The instance type. Value:
  /// - Standard: Universal.
  /// - Follower: Read-only slave instance.
  /// - Warehouse: calculation group type.
  /// - Shared: Shared.
  /// - Serverless: (Available since v1.259.0) Serverless.
  final pulumi.Input<String>? instanceType;
  /// The ID of the primary instance.
  final pulumi.Input<String>? leaderInstanceId;
  /// The payment type of the resource.
  final pulumi.Input<String>? paymentType;
  /// Billing cycle. Value:
  /// - Month: monthly billing
  /// - Hour: hourly billing
  /// > **NOTE:**  Subscription instances (PrePaid) only supports Month. PayAsYouGo instances (PostPaid) only supports Hour. The Shared type is automatically set to Hour without specifying it.
  final pulumi.Input<String>? pricingCycle;
  /// (Available since v1.259.0) The region ID.
  final pulumi.Input<String>? regionId;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// Change matching type. Value:
  /// - UPGRADE: UPGRADE
  /// - DOWNGRADE: Downgrading
  /// > **NOTE:** The upgrade specification cannot be less than the original specification. A blank field indicates that the original specification remains unchanged. On this basis, at least one specification is larger than the original specification. The downgrading specification cannot be greater than the original specification. A blank field indicates that the original specification remains unchanged. On this basis, at least one specification is smaller than the original specification.
  final pulumi.Input<String>? scaleType;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// The standard storage space of the instance. Unit: GB.
  /// > **NOTE:**  PayAsYouGo instances (PostPaid) ignore this parameter.
  final pulumi.Input<int>? storageSize;
  /// Instance tag.
  final pulumi.Input<Map<String, String>>? tags;
  /// The zone Id. Refer to "Instructions for Use".
  final pulumi.Input<String>? zoneId;

  /// Creates a new [InstanceState].
  /// [autoPay] Whether to pay automatically. The default value is true. Value:
  /// [coldStorageSize] Instance low-frequency storage space. Unit: GB.
  /// [cpu] Instance specifications. Value:
  /// [createTime] The creation time of the resource.
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
  /// [regionId] (Available since v1.259.0) The region ID.
  /// [resourceGroupId] The ID of the resource group.
  /// [scaleType] Change matching type. Value:
  /// [status] The status of the resource.
  /// [storageSize] The standard storage space of the instance. Unit: GB.
  /// [tags] Instance tag.
  /// [zoneId] The zone Id. Refer to "Instructions for Use".
  InstanceState({
    pulumi.Output<bool>? autoPay,
    pulumi.Output<int>? coldStorageSize,
    pulumi.Output<int>? cpu,
    pulumi.Output<String>? createTime,
    pulumi.Output<int>? duration,
    pulumi.Output<bool>? enableSsl,
    pulumi.Output<List<InstanceEndpoint>>? endpoints,
    pulumi.Output<int>? gatewayCount,
    pulumi.Output<String>? initialDatabases,
    pulumi.Output<String>? instanceName,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? leaderInstanceId,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? pricingCycle,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? scaleType,
    pulumi.Output<String>? status,
    pulumi.Output<int>? storageSize,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? zoneId,
  }) :
      autoPay = pulumi.Input.asOptionalInput<bool>(autoPay),
      coldStorageSize = pulumi.Input.asOptionalInput<int>(coldStorageSize),
      cpu = pulumi.Input.asOptionalInput<int>(cpu),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      duration = pulumi.Input.asOptionalInput<int>(duration),
      enableSsl = pulumi.Input.asOptionalInput<bool>(enableSsl),
      endpoints = pulumi.Input.asOptionalInput<List<InstanceEndpoint>>(endpoints),
      gatewayCount = pulumi.Input.asOptionalInput<int>(gatewayCount),
      initialDatabases = pulumi.Input.asOptionalInput<String>(initialDatabases),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      leaderInstanceId = pulumi.Input.asOptionalInput<String>(leaderInstanceId),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      pricingCycle = pulumi.Input.asOptionalInput<String>(pricingCycle),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      scaleType = pulumi.Input.asOptionalInput<String>(scaleType),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageSize = pulumi.Input.asOptionalInput<int>(storageSize),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPay': ?autoPay,
      'coldStorageSize': ?coldStorageSize,
      'cpu': ?cpu,
      'createTime': ?createTime,
      'duration': ?duration,
      'enableSsl': ?enableSsl,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<InstanceEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<InstanceEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayCount': ?gatewayCount,
      'initialDatabases': ?initialDatabases,
      'instanceName': ?instanceName,
      'instanceType': ?instanceType,
      'leaderInstanceId': ?leaderInstanceId,
      'paymentType': ?paymentType,
      'pricingCycle': ?pricingCycle,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'scaleType': ?scaleType,
      'status': ?status,
      'storageSize': ?storageSize,
      'tags': ?tags,
      'zoneId': ?zoneId,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      autoPay: map['autoPay'] == null ? null : pulumi.Output.create<bool>(map['autoPay'] as bool),
      coldStorageSize: map['coldStorageSize'] == null ? null : pulumi.Output.create<int>(map['coldStorageSize'] as int),
      cpu: map['cpu'] == null ? null : pulumi.Output.create<int>(map['cpu'] as int),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      duration: map['duration'] == null ? null : pulumi.Output.create<int>(map['duration'] as int),
      enableSsl: map['enableSsl'] == null ? null : pulumi.Output.create<bool>(map['enableSsl'] as bool),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<List<InstanceEndpoint>>(pulumi.Input.decodeList<InstanceEndpoint>(map['endpoints'], (value) => InstanceEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      gatewayCount: map['gatewayCount'] == null ? null : pulumi.Output.create<int>(map['gatewayCount'] as int),
      initialDatabases: map['initialDatabases'] == null ? null : pulumi.Output.create<String>(map['initialDatabases'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      leaderInstanceId: map['leaderInstanceId'] == null ? null : pulumi.Output.create<String>(map['leaderInstanceId'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      pricingCycle: map['pricingCycle'] == null ? null : pulumi.Output.create<String>(map['pricingCycle'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      scaleType: map['scaleType'] == null ? null : pulumi.Output.create<String>(map['scaleType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageSize: map['storageSize'] == null ? null : pulumi.Output.create<int>(map['storageSize'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}


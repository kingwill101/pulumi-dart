// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  /// Auto renew.
  final pulumi.Input<String> autoRenew;
  /// The cpu core number of instance.
  final pulumi.Input<String> cpuNumber;
  /// The disk type of instance. `cloud_ssd` refers to SSD disk, `cloud_efficiency` refers to efficiency disk,cloud_essd refers to ESSD PL1 disk.
  final pulumi.Input<String> diskCategory;
  /// The engine type of instance. Enumerative: `tsdb_tsdb` refers to TSDB, `tsdb_influxdb` refers to TSDB for InfluxDB️.
  final pulumi.Input<String> engineType;
  /// Instance expiration time.
  final pulumi.Input<int> expiredTime;
  /// The ID of the Instance.
  final pulumi.Input<String> id;
  /// The alias of the instance.
  final pulumi.Input<String> instanceAlias;
  /// The specification of the instance.
  final pulumi.Input<String> instanceClass;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// The storage capacity of the instance. Unit: GB. For example, the value 50 indicates 50 GB.
  final pulumi.Input<String> instanceStorage;
  /// The memory size of instance.
  final pulumi.Input<String> memorySize;
  /// Instance network type.
  final pulumi.Input<String> networkType;
  /// The billing method. Valid values: `PayAsYouGo` and `Subscription`. The `PayAsYouGo` value indicates the pay-as-you-go method, and the `Subscription` value indicates the subscription method.
  final pulumi.Input<String> paymentType;
  /// Instance status, enumerative: ACTIVATION,DELETED, CREATING,CLASS_CHANGING,LOCKED.
  final pulumi.Input<String> status;
  /// The vpc connection address of instance.
  final pulumi.Input<String> vpcConnectionAddress;
  /// The ID of the virtual private cloud (VPC) that is connected to the instance.
  final pulumi.Input<String> vpcId;
  /// The vswitch id.
  final pulumi.Input<String> vswitchId;
  /// The zone ID of the instance.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetInstancesInstance].
  /// [autoRenew] Auto renew.
  /// [cpuNumber] The cpu core number of instance.
  /// [diskCategory] The disk type of instance. `cloud_ssd` refers to SSD disk, `cloud_efficiency` refers to efficiency disk,cloud_essd refers to ESSD PL1 disk.
  /// [engineType] The engine type of instance. Enumerative: `tsdb_tsdb` refers to TSDB, `tsdb_influxdb` refers to TSDB for InfluxDB️.
  /// [expiredTime] Instance expiration time.
  /// [id] The ID of the Instance.
  /// [instanceAlias] The alias of the instance.
  /// [instanceClass] The specification of the instance.
  /// [instanceId] The ID of the instance.
  /// [instanceStorage] The storage capacity of the instance. Unit: GB. For example, the value 50 indicates 50 GB.
  /// [memorySize] The memory size of instance.
  /// [networkType] Instance network type.
  /// [paymentType] The billing method. Valid values: `PayAsYouGo` and `Subscription`. The `PayAsYouGo` value indicates the pay-as-you-go method, and the `Subscription` value indicates the subscription method.
  /// [status] Instance status, enumerative: ACTIVATION,DELETED, CREATING,CLASS_CHANGING,LOCKED.
  /// [vpcConnectionAddress] The vpc connection address of instance.
  /// [vpcId] The ID of the virtual private cloud (VPC) that is connected to the instance.
  /// [vswitchId] The vswitch id.
  /// [zoneId] The zone ID of the instance.
  GetInstancesInstance({
    required this.autoRenew,
    required this.cpuNumber,
    required this.diskCategory,
    required this.engineType,
    required this.expiredTime,
    required this.id,
    required this.instanceAlias,
    required this.instanceClass,
    required this.instanceId,
    required this.instanceStorage,
    required this.memorySize,
    required this.networkType,
    required this.paymentType,
    required this.status,
    required this.vpcConnectionAddress,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': autoRenew,
      'cpuNumber': cpuNumber,
      'diskCategory': diskCategory,
      'engineType': engineType,
      'expiredTime': expiredTime,
      'id': id,
      'instanceAlias': instanceAlias,
      'instanceClass': instanceClass,
      'instanceId': instanceId,
      'instanceStorage': instanceStorage,
      'memorySize': memorySize,
      'networkType': networkType,
      'paymentType': paymentType,
      'status': status,
      'vpcConnectionAddress': vpcConnectionAddress,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      autoRenew: pulumi.Input.fromValue(map['autoRenew'] as String),
      cpuNumber: pulumi.Input.fromValue(map['cpuNumber'] as String),
      diskCategory: pulumi.Input.fromValue(map['diskCategory'] as String),
      engineType: pulumi.Input.fromValue(map['engineType'] as String),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceAlias: pulumi.Input.fromValue(map['instanceAlias'] as String),
      instanceClass: pulumi.Input.fromValue(map['instanceClass'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceStorage: pulumi.Input.fromValue(map['instanceStorage'] as String),
      memorySize: pulumi.Input.fromValue(map['memorySize'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      vpcConnectionAddress: pulumi.Input.fromValue(map['vpcConnectionAddress'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}


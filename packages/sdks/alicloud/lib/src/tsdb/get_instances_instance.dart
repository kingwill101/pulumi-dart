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
      autoRenew: (map['autoRenew'] as String).input(),
      cpuNumber: (map['cpuNumber'] as String).input(),
      diskCategory: (map['diskCategory'] as String).input(),
      engineType: (map['engineType'] as String).input(),
      expiredTime: (map['expiredTime'] as int).input(),
      id: (map['id'] as String).input(),
      instanceAlias: (map['instanceAlias'] as String).input(),
      instanceClass: (map['instanceClass'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceStorage: (map['instanceStorage'] as String).input(),
      memorySize: (map['memorySize'] as String).input(),
      networkType: (map['networkType'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      status: (map['status'] as String).input(),
      vpcConnectionAddress: (map['vpcConnectionAddress'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}


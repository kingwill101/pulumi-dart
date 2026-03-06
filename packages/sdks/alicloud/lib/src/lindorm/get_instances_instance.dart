// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  /// AutoRenew.
  final pulumi.Input<String> autoRenew;
  /// The cold storage capacity of the instance. Unit: GB.
  final pulumi.Input<int> coldStorage;
  /// The creation date of Instance.
  final pulumi.Input<String> createTime;
  /// The deletion protection of instance.
  final pulumi.Input<bool> deletionProection;
  /// The disk type of instance. Valid values: `capacity_cloud_storage`, `cloud_efficiency`, `cloud_essd`, `cloud_ssd`.
  final pulumi.Input<String> diskCategory;
  /// The usage of disk.
  final pulumi.Input<String> diskUsage;
  /// The threshold of disk.
  final pulumi.Input<String> diskWarningThreshold;
  /// The type of Instance engine .
  final pulumi.Input<int> engineType;
  /// The expiration time of Instance.
  final pulumi.Input<String> expiredTime;
  /// The count of file engine.
  final pulumi.Input<int> fileEngineNodeCount;
  /// The specification of file engine. Valid values: `lindorm.c.xlarge`.
  final pulumi.Input<String> fileEngineSpecification;
  /// The ID of the Instance.
  final pulumi.Input<String> id;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// The name of the instance.
  final pulumi.Input<String> instanceName;
  /// The storage capacity of the instance. Unit: GB. For example, the value 50 indicates 50 GB.
  final pulumi.Input<String> instanceStorage;
  /// The ip white list of instance.
  final pulumi.Input<List<String>> ipWhiteLists;
  /// The count of lindorm tunnel service.
  final pulumi.Input<int> ltsNodeCount;
  /// The specification of lindorm tunnel service. Valid values: `lindorm.g.2xlarge`, `lindorm.g.xlarge`.
  final pulumi.Input<String> ltsNodeSpecification;
  /// Instance network type, enumerative.VPC.
  final pulumi.Input<String> networkType;
  /// The billing method. Valid values: `PayAsYouGo` and `Subscription`.
  final pulumi.Input<String> paymentType;
  /// The count of phoenix.
  final pulumi.Input<int> phoenixNodeCount;
  /// The specification of phoenix. Valid values: `lindorm.c.2xlarge`, `lindorm.c.4xlarge`, `lindorm.c.8xlarge`, `lindorm.c.xlarge`, `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`, `lindorm.g.xlarge`.
  final pulumi.Input<String> phoenixNodeSpecification;
  /// The owner id of resource.
  final pulumi.Input<String> resourceOwnerId;
  /// The count of search engine.
  final pulumi.Input<int> searchEngineNodeCount;
  /// The specification of search engine. Valid values: `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`, `lindorm.g.xlarge`.
  final pulumi.Input<String> searchEngineSpecification;
  /// The service type of Instance, Valid values:  `lindorm`, `serverless_lindorm`, `lindorm_standalone`.
  final pulumi.Input<String> serviceType;
  /// The status of Instance, enumerative: Valid values: `ACTIVATION`, `DELETED`, `CREATING`, `CLASS_CHANGING`, `LOCKED`, `INSTANCE_LEVEL_MODIFY`, `NET_MODIFYING`, `RESIZING`, `RESTARTING`, `MINOR_VERSION_TRANSING`.
  final pulumi.Input<String> status;
  /// The count of table engine.
  final pulumi.Input<int> tableEngineNodeCount;
  /// The specification of  table engine. Valid values: `lindorm.c.2xlarge`, `lindorm.c.4xlarge`, `lindorm.c.8xlarge`, `lindorm.c.xlarge`, `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`, `lindorm.g.xlarge`.
  final pulumi.Input<String> tableEngineSpecification;
  /// The count of time series engine.
  final pulumi.Input<int> timeSeriesEngineNodeCount;
  /// The specification of time series engine. Valid values: `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`, `lindorm.g.xlarge`.
  final pulumi.Input<String> timeSeriresEngineSpecification;
  /// The ID of the virtual private cloud (VPC) that is connected to the instance.
  final pulumi.Input<String> vpcId;
  /// The vswitch id.
  final pulumi.Input<String> vswitchId;
  /// The zone ID of the instance.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetInstancesInstance].
  /// [autoRenew] AutoRenew.
  /// [coldStorage] The cold storage capacity of the instance. Unit: GB.
  /// [createTime] The creation date of Instance.
  /// [deletionProection] The deletion protection of instance.
  /// [diskCategory] The disk type of instance. Valid values: `capacity_cloud_storage`, `cloud_efficiency`, `cloud_essd`, `cloud_ssd`.
  /// [diskUsage] The usage of disk.
  /// [diskWarningThreshold] The threshold of disk.
  /// [engineType] The type of Instance engine .
  /// [expiredTime] The expiration time of Instance.
  /// [fileEngineNodeCount] The count of file engine.
  /// [fileEngineSpecification] The specification of file engine. Valid values: `lindorm.c.xlarge`.
  /// [id] The ID of the Instance.
  /// [instanceId] The ID of the instance.
  /// [instanceName] The name of the instance.
  /// [instanceStorage] The storage capacity of the instance. Unit: GB. For example, the value 50 indicates 50 GB.
  /// [ipWhiteLists] The ip white list of instance.
  /// [ltsNodeCount] The count of lindorm tunnel service.
  /// [ltsNodeSpecification] The specification of lindorm tunnel service. Valid values: `lindorm.g.2xlarge`, `lindorm.g.xlarge`.
  /// [networkType] Instance network type, enumerative.VPC.
  /// [paymentType] The billing method. Valid values: `PayAsYouGo` and `Subscription`.
  /// [phoenixNodeCount] The count of phoenix.
  /// [phoenixNodeSpecification] The specification of phoenix. Valid values: `lindorm.c.2xlarge`, `lindorm.c.4xlarge`, `lindorm.c.8xlarge`, `lindorm.c.xlarge`, `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`, `lindorm.g.xlarge`.
  /// [resourceOwnerId] The owner id of resource.
  /// [searchEngineNodeCount] The count of search engine.
  /// [searchEngineSpecification] The specification of search engine. Valid values: `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`, `lindorm.g.xlarge`.
  /// [serviceType] The service type of Instance, Valid values:  `lindorm`, `serverless_lindorm`, `lindorm_standalone`.
  /// [status] The status of Instance, enumerative: Valid values: `ACTIVATION`, `DELETED`, `CREATING`, `CLASS_CHANGING`, `LOCKED`, `INSTANCE_LEVEL_MODIFY`, `NET_MODIFYING`, `RESIZING`, `RESTARTING`, `MINOR_VERSION_TRANSING`.
  /// [tableEngineNodeCount] The count of table engine.
  /// [tableEngineSpecification] The specification of  table engine. Valid values: `lindorm.c.2xlarge`, `lindorm.c.4xlarge`, `lindorm.c.8xlarge`, `lindorm.c.xlarge`, `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`, `lindorm.g.xlarge`.
  /// [timeSeriesEngineNodeCount] The count of time series engine.
  /// [timeSeriresEngineSpecification] The specification of time series engine. Valid values: `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`, `lindorm.g.xlarge`.
  /// [vpcId] The ID of the virtual private cloud (VPC) that is connected to the instance.
  /// [vswitchId] The vswitch id.
  /// [zoneId] The zone ID of the instance.
  const GetInstancesInstance({
    required this.autoRenew,
    required this.coldStorage,
    required this.createTime,
    required this.deletionProection,
    required this.diskCategory,
    required this.diskUsage,
    required this.diskWarningThreshold,
    required this.engineType,
    required this.expiredTime,
    required this.fileEngineNodeCount,
    required this.fileEngineSpecification,
    required this.id,
    required this.instanceId,
    required this.instanceName,
    required this.instanceStorage,
    required this.ipWhiteLists,
    required this.ltsNodeCount,
    required this.ltsNodeSpecification,
    required this.networkType,
    required this.paymentType,
    required this.phoenixNodeCount,
    required this.phoenixNodeSpecification,
    required this.resourceOwnerId,
    required this.searchEngineNodeCount,
    required this.searchEngineSpecification,
    required this.serviceType,
    required this.status,
    required this.tableEngineNodeCount,
    required this.tableEngineSpecification,
    required this.timeSeriesEngineNodeCount,
    required this.timeSeriresEngineSpecification,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': autoRenew,
      'coldStorage': coldStorage,
      'createTime': createTime,
      'deletionProection': deletionProection,
      'diskCategory': diskCategory,
      'diskUsage': diskUsage,
      'diskWarningThreshold': diskWarningThreshold,
      'engineType': engineType,
      'expiredTime': expiredTime,
      'fileEngineNodeCount': fileEngineNodeCount,
      'fileEngineSpecification': fileEngineSpecification,
      'id': id,
      'instanceId': instanceId,
      'instanceName': instanceName,
      'instanceStorage': instanceStorage,
      'ipWhiteLists': ipWhiteLists,
      'ltsNodeCount': ltsNodeCount,
      'ltsNodeSpecification': ltsNodeSpecification,
      'networkType': networkType,
      'paymentType': paymentType,
      'phoenixNodeCount': phoenixNodeCount,
      'phoenixNodeSpecification': phoenixNodeSpecification,
      'resourceOwnerId': resourceOwnerId,
      'searchEngineNodeCount': searchEngineNodeCount,
      'searchEngineSpecification': searchEngineSpecification,
      'serviceType': serviceType,
      'status': status,
      'tableEngineNodeCount': tableEngineNodeCount,
      'tableEngineSpecification': tableEngineSpecification,
      'timeSeriesEngineNodeCount': timeSeriesEngineNodeCount,
      'timeSeriresEngineSpecification': timeSeriresEngineSpecification,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      autoRenew: pulumi.Input.fromValue(map['autoRenew'] as String),
      coldStorage: pulumi.Input.fromValue(map['coldStorage'] as int),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deletionProection: pulumi.Input.fromValue(map['deletionProection'] as bool),
      diskCategory: pulumi.Input.fromValue(map['diskCategory'] as String),
      diskUsage: pulumi.Input.fromValue(map['diskUsage'] as String),
      diskWarningThreshold: pulumi.Input.fromValue(map['diskWarningThreshold'] as String),
      engineType: pulumi.Input.fromValue(map['engineType'] as int),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as String),
      fileEngineNodeCount: pulumi.Input.fromValue(map['fileEngineNodeCount'] as int),
      fileEngineSpecification: pulumi.Input.fromValue(map['fileEngineSpecification'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      instanceStorage: pulumi.Input.fromValue(map['instanceStorage'] as String),
      ipWhiteLists: pulumi.Input.fromValue((map['ipWhiteLists'] as List).cast<String>()),
      ltsNodeCount: pulumi.Input.fromValue(map['ltsNodeCount'] as int),
      ltsNodeSpecification: pulumi.Input.fromValue(map['ltsNodeSpecification'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      phoenixNodeCount: pulumi.Input.fromValue(map['phoenixNodeCount'] as int),
      phoenixNodeSpecification: pulumi.Input.fromValue(map['phoenixNodeSpecification'] as String),
      resourceOwnerId: pulumi.Input.fromValue(map['resourceOwnerId'] as String),
      searchEngineNodeCount: pulumi.Input.fromValue(map['searchEngineNodeCount'] as int),
      searchEngineSpecification: pulumi.Input.fromValue(map['searchEngineSpecification'] as String),
      serviceType: pulumi.Input.fromValue(map['serviceType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tableEngineNodeCount: pulumi.Input.fromValue(map['tableEngineNodeCount'] as int),
      tableEngineSpecification: pulumi.Input.fromValue(map['tableEngineSpecification'] as String),
      timeSeriesEngineNodeCount: pulumi.Input.fromValue(map['timeSeriesEngineNodeCount'] as int),
      timeSeriresEngineSpecification: pulumi.Input.fromValue(map['timeSeriresEngineSpecification'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}


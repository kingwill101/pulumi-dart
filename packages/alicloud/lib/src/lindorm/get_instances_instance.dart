// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  /// AutoRenew.
  final String autoRenew;
  /// The cold storage capacity of the instance. Unit: GB.
  final int coldStorage;
  /// The creation date of Instance.
  final String createTime;
  /// The deletion protection of instance.
  final bool deletionProection;
  /// The disk type of instance. Valid values: `capacity_cloud_storage`, `cloud_efficiency`, `cloud_essd`, `cloud_ssd`.
  final String diskCategory;
  /// The usage of disk.
  final String diskUsage;
  /// The threshold of disk.
  final String diskWarningThreshold;
  /// The type of Instance engine .
  final int engineType;
  /// The expiration time of Instance.
  final String expiredTime;
  /// The count of file engine.
  final int fileEngineNodeCount;
  /// The specification of file engine. Valid values: `lindorm.c.xlarge`.
  final String fileEngineSpecification;
  /// The ID of the Instance.
  final String id;
  /// The ID of the instance.
  final String instanceId;
  /// The name of the instance.
  final String instanceName;
  /// The storage capacity of the instance. Unit: GB. For example, the value 50 indicates 50 GB.
  final String instanceStorage;
  /// The ip white list of instance.
  final List<String> ipWhiteLists;
  /// The count of lindorm tunnel service.
  final int ltsNodeCount;
  /// The specification of lindorm tunnel service. Valid values: `lindorm.g.2xlarge`, `lindorm.g.xlarge`.
  final String ltsNodeSpecification;
  /// Instance network type, enumerative.VPC.
  final String networkType;
  /// The billing method. Valid values: `PayAsYouGo` and `Subscription`.
  final String paymentType;
  /// The count of phoenix.
  final int phoenixNodeCount;
  /// The specification of phoenix. Valid values: `lindorm.c.2xlarge`, `lindorm.c.4xlarge`, `lindorm.c.8xlarge`, `lindorm.c.xlarge`, `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`, `lindorm.g.xlarge`.
  final String phoenixNodeSpecification;
  /// The owner id of resource.
  final String resourceOwnerId;
  /// The count of search engine.
  final int searchEngineNodeCount;
  /// The specification of search engine. Valid values: `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`, `lindorm.g.xlarge`.
  final String searchEngineSpecification;
  /// The service type of Instance, Valid values:  `lindorm`, `serverless_lindorm`, `lindorm_standalone`.
  final String serviceType;
  /// The status of Instance, enumerative: Valid values: `ACTIVATION`, `DELETED`, `CREATING`, `CLASS_CHANGING`, `LOCKED`, `INSTANCE_LEVEL_MODIFY`, `NET_MODIFYING`, `RESIZING`, `RESTARTING`, `MINOR_VERSION_TRANSING`.
  final String status;
  /// The count of table engine.
  final int tableEngineNodeCount;
  /// The specification of  table engine. Valid values: `lindorm.c.2xlarge`, `lindorm.c.4xlarge`, `lindorm.c.8xlarge`, `lindorm.c.xlarge`, `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`, `lindorm.g.xlarge`.
  final String tableEngineSpecification;
  /// The count of time series engine.
  final int timeSeriesEngineNodeCount;
  /// The specification of time series engine. Valid values: `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`, `lindorm.g.xlarge`.
  final String timeSeriresEngineSpecification;
  /// The ID of the virtual private cloud (VPC) that is connected to the instance.
  final String vpcId;
  /// The vswitch id.
  final String vswitchId;
  /// The zone ID of the instance.
  final String zoneId;

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
  GetInstancesInstance({
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
      autoRenew: map['autoRenew'] as String,
      coldStorage: map['coldStorage'] as int,
      createTime: map['createTime'] as String,
      deletionProection: map['deletionProection'] as bool,
      diskCategory: map['diskCategory'] as String,
      diskUsage: map['diskUsage'] as String,
      diskWarningThreshold: map['diskWarningThreshold'] as String,
      engineType: map['engineType'] as int,
      expiredTime: map['expiredTime'] as String,
      fileEngineNodeCount: map['fileEngineNodeCount'] as int,
      fileEngineSpecification: map['fileEngineSpecification'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      instanceStorage: map['instanceStorage'] as String,
      ipWhiteLists: (map['ipWhiteLists'] as List).cast<String>(),
      ltsNodeCount: map['ltsNodeCount'] as int,
      ltsNodeSpecification: map['ltsNodeSpecification'] as String,
      networkType: map['networkType'] as String,
      paymentType: map['paymentType'] as String,
      phoenixNodeCount: map['phoenixNodeCount'] as int,
      phoenixNodeSpecification: map['phoenixNodeSpecification'] as String,
      resourceOwnerId: map['resourceOwnerId'] as String,
      searchEngineNodeCount: map['searchEngineNodeCount'] as int,
      searchEngineSpecification: map['searchEngineSpecification'] as String,
      serviceType: map['serviceType'] as String,
      status: map['status'] as String,
      tableEngineNodeCount: map['tableEngineNodeCount'] as int,
      tableEngineSpecification: map['tableEngineSpecification'] as String,
      timeSeriesEngineNodeCount: map['timeSeriesEngineNodeCount'] as int,
      timeSeriresEngineSpecification: map['timeSeriresEngineSpecification'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}


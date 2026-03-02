// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lindorm_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_lindorm_instance_instance_args_doc}
class InstanceArgs {
  /// The multi-availability zone instance, coordinating the virtual switch ID of the availability zone, the switch must be located under the availability zone corresponding to the ArbiterZoneId. This parameter is required if you need to create multiple availability zone instances.
  final pulumi.Input<String>? arbiterVswitchId;
  /// The multiple Availability Zone Instance, the availability zone ID of the coordinating availability zone. required if you need to create multiple availability zone instances.
  final pulumi.Input<String>? arbiterZoneId;
  /// The deployment architecture. If you do not fill in this parameter, the default is 1.0. to create multiple availability instances, fill in 2.0. if you need to create multiple availability instances, this parameter is required. Valid values: `1.0` to `2.0`.
  final pulumi.Input<String>? archVersion;
  /// Specifies whether to enable auto-renewal for the instance. Valid when the `payment_type` is `Subscription`. Default value: false. Valid values: true(enables auto-renewal), false(disables auto-renewal).
  final pulumi.Input<String>? autoRenew;
  /// The subscription duration that is supported by auto-renewal. Unit: months. Valid values: `1` to `12`. This parameter is required only if the AutoRenew parameter is set to true.
  final pulumi.Input<String>? autoRenewPeriod;
  /// The cold storage capacity of the instance. Unit: GB. Valid values: [800, 1000000].
  final pulumi.Input<int>? coldStorage;
  /// The multiple availability zone instances, CORE single node capacity. required if you want to create multiple availability zone instances. Valid values: `400` to `64000`.
  final pulumi.Input<int>? coreSingleStorage;
  /// The core spec. When `disk_category` is `local_ssd_pro` or `local_hdd_pro`, this filed is valid.
  /// - When `disk_category` is `local_ssd_pro`, the valid values is `lindorm.i2.xlarge`, `lindorm.i2.2xlarge`, `lindorm.i2.4xlarge`, `lindorm.i2.8xlarge`.
  /// - When `disk_category` is `local_hdd_pro`, the valid values is `lindorm.d2c.6xlarge`, `lindorm.d2c.12xlarge`, `lindorm.d2c.24xlarge`, `lindorm.d2s.5xlarge`, `lindorm.d2s.10xlarge`, `lindorm.d1.2xlarge`, `lindorm.d1.4xlarge`, `lindorm.d1.6xlarge`.
  final pulumi.Input<String>? coreSpec;
  /// The deletion protection of instance.
  final pulumi.Input<bool>? deletionProection;
  /// The disk type of instance. Valid values: `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud_essd_pl0`, `capacity_cloud_storage`, `local_ssd_pro`, `local_hdd_pro`. **NOTE:** From version 1.207.0, `disk_category` can be set to `cloud_essd_pl0`.
  final pulumi.Input<String> diskCategory;
  /// The duration of paid. Valid when the `payment_type` is `Subscription`.  When `pricing_cycle` set to `Month`, the valid value id `1` to `9`.  When `pricing_cycle` set to `Year`, the valid value id `1` to `3`.
  final pulumi.Input<String>? duration;
  /// The count of file engine.
  final pulumi.Input<int>? fileEngineNodeCount;
  /// The specification of file engine. Valid values: `lindorm.c.xlarge`.
  final pulumi.Input<String>? fileEngineSpecification;
  /// The name of the instance.
  final pulumi.Input<String>? instanceName;
  /// The storage capacity of the instance. Unit: GB. Valid values: [80, 10485760], and the value must be divisible by 80.
  final pulumi.Input<String>? instanceStorage;
  /// The ip white list of instance.
  final pulumi.Input<List<String>>? ipWhiteLists;
  /// The multi-available zone instance, log node disk type. required if you need to create multiple availability zone instances. Valid values: `cloud_efficiency`, `cloud_ssd`.
  final pulumi.Input<String>? logDiskCategory;
  /// The multiple Availability Zone Instance, number of log nodes. this parameter is required if you want to create multiple availability zone instances. Valid values: `4` to `400`.
  final pulumi.Input<int>? logNum;
  /// The multi-availability instance, log single-node disk capacity. This parameter is required if you want to create multiple availability zone instances. Valid values: `400` to `64000`.
  final pulumi.Input<int>? logSingleStorage;
  /// The multiple availability zone instances, log node specification. required if you need to create multiple availability zone instances. Valid values: `lindorm.sn1.large`, `lindorm.sn1.2xlarge`.
  final pulumi.Input<String>? logSpec;
  /// The count of lindorm tunnel service.
  final pulumi.Input<int>? ltsNodeCount;
  /// The specification of lindorm tunnel service. Valid values: `lindorm.g.2xlarge`, `lindorm.g.xlarge`.
  final pulumi.Input<String>? ltsNodeSpecification;
  /// The multi-zone combinations. Availability zone combinations are supported on the sale page. required if you need to create multiple availability zone instances. Valid values: `ap-southeast-5abc-aliyun`, `cn-hangzhou-ehi-aliyun`, `cn-beijing-acd-aliyun`, `ap-southeast-1-abc-aliyun`, `cn-zhangjiakou-abc-aliyun`, `cn-shanghai-efg-aliyun`, `cn-shanghai-abd-aliyun`, `cn-hangzhou-bef-aliyun`, `cn-hangzhou-bce-aliyun`, `cn-beijing-fgh-aliyun`, `cn-shenzhen-abc-aliyun`.
  final pulumi.Input<String>? multiZoneCombination;
  /// The billing method. Valid values: `PayAsYouGo` and `Subscription`.
  final pulumi.Input<String> paymentType;
  /// The pricing cycle. Valid when the `payment_type` is `Subscription`. Valid values: `Month` and `Year`.
  final pulumi.Input<String>? pricingCycle;
  /// Multi-available zone instances, the virtual switch ID of the primary available zone, must be under the available zone corresponding to the PrimaryZoneId. required if you need to create multiple availability zone instances.
  final pulumi.Input<String>? primaryVswitchId;
  /// Multi-availability zone instance with the availability zone ID of the main availability zone. required if you need to create multiple availability zone instances.
  final pulumi.Input<String>? primaryZoneId;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The count of search engine.
  final pulumi.Input<int>? searchEngineNodeCount;
  /// The specification of search engine. Valid values: `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`, `lindorm.g.xlarge`.
  final pulumi.Input<String>? searchEngineSpecification;
  /// The multiple availability zone instances, the virtual switch ID of the ready availability zone must be under the availability zone corresponding to the StandbyZoneId. required if you need to create multiple availability zone instances.
  final pulumi.Input<String>? standbyVswitchId;
  /// The multiple availability zone instances with availability zone IDs for the prepared availability zones. required if you need to create multiple availability zone instances.
  final pulumi.Input<String>? standbyZoneId;
  /// The number of LindormStream nodes in the instance.
  final pulumi.Input<int>? streamEngineNodeCount;
  /// The specification of the LindormStream nodes in the instance. Valid values: `lindorm.g.xlarge`, `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`.
  final pulumi.Input<String>? streamEngineSpecification;
  /// The count of table engine.
  final pulumi.Input<int>? tableEngineNodeCount;
  /// The specification of  table engine. Valid values: `lindorm.c.2xlarge`, `lindorm.c.4xlarge`, `lindorm.c.8xlarge`, `lindorm.g.xlarge`, `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`.
  final pulumi.Input<String>? tableEngineSpecification;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The count of time series engine.
  final pulumi.Input<int>? timeSeriesEngineNodeCount;
  /// The specification of time series engine. Valid values: `lindorm.g.xlarge`, `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`, `lindorm.r.8xlarge`.
  final pulumi.Input<String>? timeSeriesEngineSpecification;
  /// Field `time_serires_engine_specification` has been deprecated from provider version 1.182.0. New field `time_series_engine_specification` instead.
  final pulumi.Input<String>? timeSeriresEngineSpecification;
  /// The VPC ID of the instance.
  final pulumi.Input<String>? vpcId;
  /// The vswitch id.
  final pulumi.Input<String> vswitchId;
  /// The zone ID of the instance.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [InstanceArgs].
  /// [arbiterVswitchId] The multi-availability zone instance, coordinating the virtual switch ID of the availability zone, the switch must be located under the availability zone corresponding to the ArbiterZoneId. This parameter is required if you need to create multiple availability zone instances.
  /// [arbiterZoneId] The multiple Availability Zone Instance, the availability zone ID of the coordinating availability zone. required if you need to create multiple availability zone instances.
  /// [archVersion] The deployment architecture. If you do not fill in this parameter, the default is 1.0. to create multiple availability instances, fill in 2.0. if you need to create multiple availability instances, this parameter is required. Valid values: `1.0` to `2.0`.
  /// [autoRenew] Specifies whether to enable auto-renewal for the instance. Valid when the `payment_type` is `Subscription`. Default value: false. Valid values: true(enables auto-renewal), false(disables auto-renewal).
  /// [autoRenewPeriod] The subscription duration that is supported by auto-renewal. Unit: months. Valid values: `1` to `12`. This parameter is required only if the AutoRenew parameter is set to true.
  /// [coldStorage] The cold storage capacity of the instance. Unit: GB. Valid values: [800, 1000000].
  /// [coreSingleStorage] The multiple availability zone instances, CORE single node capacity. required if you want to create multiple availability zone instances. Valid values: `400` to `64000`.
  /// [coreSpec] The core spec. When `disk_category` is `local_ssd_pro` or `local_hdd_pro`, this filed is valid.
  /// [deletionProection] The deletion protection of instance.
  /// [diskCategory] The disk type of instance. Valid values: `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud_essd_pl0`, `capacity_cloud_storage`, `local_ssd_pro`, `local_hdd_pro`. **NOTE:** From version 1.207.0, `disk_category` can be set to `cloud_essd_pl0`.
  /// [duration] The duration of paid. Valid when the `payment_type` is `Subscription`.  When `pricing_cycle` set to `Month`, the valid value id `1` to `9`.  When `pricing_cycle` set to `Year`, the valid value id `1` to `3`.
  /// [fileEngineNodeCount] The count of file engine.
  /// [fileEngineSpecification] The specification of file engine. Valid values: `lindorm.c.xlarge`.
  /// [instanceName] The name of the instance.
  /// [instanceStorage] The storage capacity of the instance. Unit: GB. Valid values: [80, 10485760], and the value must be divisible by 80.
  /// [ipWhiteLists] The ip white list of instance.
  /// [logDiskCategory] The multi-available zone instance, log node disk type. required if you need to create multiple availability zone instances. Valid values: `cloud_efficiency`, `cloud_ssd`.
  /// [logNum] The multiple Availability Zone Instance, number of log nodes. this parameter is required if you want to create multiple availability zone instances. Valid values: `4` to `400`.
  /// [logSingleStorage] The multi-availability instance, log single-node disk capacity. This parameter is required if you want to create multiple availability zone instances. Valid values: `400` to `64000`.
  /// [logSpec] The multiple availability zone instances, log node specification. required if you need to create multiple availability zone instances. Valid values: `lindorm.sn1.large`, `lindorm.sn1.2xlarge`.
  /// [ltsNodeCount] The count of lindorm tunnel service.
  /// [ltsNodeSpecification] The specification of lindorm tunnel service. Valid values: `lindorm.g.2xlarge`, `lindorm.g.xlarge`.
  /// [multiZoneCombination] The multi-zone combinations. Availability zone combinations are supported on the sale page. required if you need to create multiple availability zone instances. Valid values: `ap-southeast-5abc-aliyun`, `cn-hangzhou-ehi-aliyun`, `cn-beijing-acd-aliyun`, `ap-southeast-1-abc-aliyun`, `cn-zhangjiakou-abc-aliyun`, `cn-shanghai-efg-aliyun`, `cn-shanghai-abd-aliyun`, `cn-hangzhou-bef-aliyun`, `cn-hangzhou-bce-aliyun`, `cn-beijing-fgh-aliyun`, `cn-shenzhen-abc-aliyun`.
  /// [paymentType] The billing method. Valid values: `PayAsYouGo` and `Subscription`.
  /// [pricingCycle] The pricing cycle. Valid when the `payment_type` is `Subscription`. Valid values: `Month` and `Year`.
  /// [primaryVswitchId] Multi-available zone instances, the virtual switch ID of the primary available zone, must be under the available zone corresponding to the PrimaryZoneId. required if you need to create multiple availability zone instances.
  /// [primaryZoneId] Multi-availability zone instance with the availability zone ID of the main availability zone. required if you need to create multiple availability zone instances.
  /// [resourceGroupId] The ID of the resource group.
  /// [searchEngineNodeCount] The count of search engine.
  /// [searchEngineSpecification] The specification of search engine. Valid values: `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`, `lindorm.g.xlarge`.
  /// [standbyVswitchId] The multiple availability zone instances, the virtual switch ID of the ready availability zone must be under the availability zone corresponding to the StandbyZoneId. required if you need to create multiple availability zone instances.
  /// [standbyZoneId] The multiple availability zone instances with availability zone IDs for the prepared availability zones. required if you need to create multiple availability zone instances.
  /// [streamEngineNodeCount] The number of LindormStream nodes in the instance.
  /// [streamEngineSpecification] The specification of the LindormStream nodes in the instance. Valid values: `lindorm.g.xlarge`, `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`.
  /// [tableEngineNodeCount] The count of table engine.
  /// [tableEngineSpecification] The specification of  table engine. Valid values: `lindorm.c.2xlarge`, `lindorm.c.4xlarge`, `lindorm.c.8xlarge`, `lindorm.g.xlarge`, `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [timeSeriesEngineNodeCount] The count of time series engine.
  /// [timeSeriesEngineSpecification] The specification of time series engine. Valid values: `lindorm.g.xlarge`, `lindorm.g.2xlarge`, `lindorm.g.4xlarge`, `lindorm.g.8xlarge`, `lindorm.r.8xlarge`.
  /// [timeSeriresEngineSpecification] Field `time_serires_engine_specification` has been deprecated from provider version 1.182.0. New field `time_series_engine_specification` instead.
  /// [vpcId] The VPC ID of the instance.
  /// [vswitchId] The vswitch id.
  /// [zoneId] The zone ID of the instance.
  InstanceArgs({
    this.arbiterVswitchId,
    this.arbiterZoneId,
    this.archVersion,
    this.autoRenew,
    this.autoRenewPeriod,
    this.coldStorage,
    this.coreSingleStorage,
    this.coreSpec,
    this.deletionProection,
    required this.diskCategory,
    this.duration,
    this.fileEngineNodeCount,
    this.fileEngineSpecification,
    this.instanceName,
    this.instanceStorage,
    this.ipWhiteLists,
    this.logDiskCategory,
    this.logNum,
    this.logSingleStorage,
    this.logSpec,
    this.ltsNodeCount,
    this.ltsNodeSpecification,
    this.multiZoneCombination,
    required this.paymentType,
    this.pricingCycle,
    this.primaryVswitchId,
    this.primaryZoneId,
    this.resourceGroupId,
    this.searchEngineNodeCount,
    this.searchEngineSpecification,
    this.standbyVswitchId,
    this.standbyZoneId,
    this.streamEngineNodeCount,
    this.streamEngineSpecification,
    this.tableEngineNodeCount,
    this.tableEngineSpecification,
    this.tags,
    this.timeSeriesEngineNodeCount,
    this.timeSeriesEngineSpecification,
    this.timeSeriresEngineSpecification,
    this.vpcId,
    required this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arbiterVswitchId': ?arbiterVswitchId,
      'arbiterZoneId': ?arbiterZoneId,
      'archVersion': ?archVersion,
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'coldStorage': ?coldStorage,
      'coreSingleStorage': ?coreSingleStorage,
      'coreSpec': ?coreSpec,
      'deletionProection': ?deletionProection,
      'diskCategory': diskCategory,
      'duration': ?duration,
      'fileEngineNodeCount': ?fileEngineNodeCount,
      'fileEngineSpecification': ?fileEngineSpecification,
      'instanceName': ?instanceName,
      'instanceStorage': ?instanceStorage,
      'ipWhiteLists': ?ipWhiteLists,
      'logDiskCategory': ?logDiskCategory,
      'logNum': ?logNum,
      'logSingleStorage': ?logSingleStorage,
      'logSpec': ?logSpec,
      'ltsNodeCount': ?ltsNodeCount,
      'ltsNodeSpecification': ?ltsNodeSpecification,
      'multiZoneCombination': ?multiZoneCombination,
      'paymentType': paymentType,
      'pricingCycle': ?pricingCycle,
      'primaryVswitchId': ?primaryVswitchId,
      'primaryZoneId': ?primaryZoneId,
      'resourceGroupId': ?resourceGroupId,
      'searchEngineNodeCount': ?searchEngineNodeCount,
      'searchEngineSpecification': ?searchEngineSpecification,
      'standbyVswitchId': ?standbyVswitchId,
      'standbyZoneId': ?standbyZoneId,
      'streamEngineNodeCount': ?streamEngineNodeCount,
      'streamEngineSpecification': ?streamEngineSpecification,
      'tableEngineNodeCount': ?tableEngineNodeCount,
      'tableEngineSpecification': ?tableEngineSpecification,
      'tags': ?tags,
      'timeSeriesEngineNodeCount': ?timeSeriesEngineNodeCount,
      'timeSeriesEngineSpecification': ?timeSeriesEngineSpecification,
      'timeSeriresEngineSpecification': ?timeSeriresEngineSpecification,
      'vpcId': ?vpcId,
      'vswitchId': vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      arbiterVswitchId: map['arbiterVswitchId'] == null ? null : (map['arbiterVswitchId']! as String).input(),
      arbiterZoneId: map['arbiterZoneId'] == null ? null : (map['arbiterZoneId']! as String).input(),
      archVersion: map['archVersion'] == null ? null : (map['archVersion']! as String).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew']! as String).input(),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : (map['autoRenewPeriod']! as String).input(),
      coldStorage: map['coldStorage'] == null ? null : (map['coldStorage']! as int).input(),
      coreSingleStorage: map['coreSingleStorage'] == null ? null : (map['coreSingleStorage']! as int).input(),
      coreSpec: map['coreSpec'] == null ? null : (map['coreSpec']! as String).input(),
      deletionProection: map['deletionProection'] == null ? null : (map['deletionProection']! as bool).input(),
      diskCategory: (map['diskCategory'] as String).input(),
      duration: map['duration'] == null ? null : (map['duration']! as String).input(),
      fileEngineNodeCount: map['fileEngineNodeCount'] == null ? null : (map['fileEngineNodeCount']! as int).input(),
      fileEngineSpecification: map['fileEngineSpecification'] == null ? null : (map['fileEngineSpecification']! as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName']! as String).input(),
      instanceStorage: map['instanceStorage'] == null ? null : (map['instanceStorage']! as String).input(),
      ipWhiteLists: map['ipWhiteLists'] == null ? null : ((map['ipWhiteLists']! as List).cast<String>()).input(),
      logDiskCategory: map['logDiskCategory'] == null ? null : (map['logDiskCategory']! as String).input(),
      logNum: map['logNum'] == null ? null : (map['logNum']! as int).input(),
      logSingleStorage: map['logSingleStorage'] == null ? null : (map['logSingleStorage']! as int).input(),
      logSpec: map['logSpec'] == null ? null : (map['logSpec']! as String).input(),
      ltsNodeCount: map['ltsNodeCount'] == null ? null : (map['ltsNodeCount']! as int).input(),
      ltsNodeSpecification: map['ltsNodeSpecification'] == null ? null : (map['ltsNodeSpecification']! as String).input(),
      multiZoneCombination: map['multiZoneCombination'] == null ? null : (map['multiZoneCombination']! as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      pricingCycle: map['pricingCycle'] == null ? null : (map['pricingCycle']! as String).input(),
      primaryVswitchId: map['primaryVswitchId'] == null ? null : (map['primaryVswitchId']! as String).input(),
      primaryZoneId: map['primaryZoneId'] == null ? null : (map['primaryZoneId']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      searchEngineNodeCount: map['searchEngineNodeCount'] == null ? null : (map['searchEngineNodeCount']! as int).input(),
      searchEngineSpecification: map['searchEngineSpecification'] == null ? null : (map['searchEngineSpecification']! as String).input(),
      standbyVswitchId: map['standbyVswitchId'] == null ? null : (map['standbyVswitchId']! as String).input(),
      standbyZoneId: map['standbyZoneId'] == null ? null : (map['standbyZoneId']! as String).input(),
      streamEngineNodeCount: map['streamEngineNodeCount'] == null ? null : (map['streamEngineNodeCount']! as int).input(),
      streamEngineSpecification: map['streamEngineSpecification'] == null ? null : (map['streamEngineSpecification']! as String).input(),
      tableEngineNodeCount: map['tableEngineNodeCount'] == null ? null : (map['tableEngineNodeCount']! as int).input(),
      tableEngineSpecification: map['tableEngineSpecification'] == null ? null : (map['tableEngineSpecification']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      timeSeriesEngineNodeCount: map['timeSeriesEngineNodeCount'] == null ? null : (map['timeSeriesEngineNodeCount']! as int).input(),
      timeSeriesEngineSpecification: map['timeSeriesEngineSpecification'] == null ? null : (map['timeSeriesEngineSpecification']! as String).input(),
      timeSeriresEngineSpecification: map['timeSeriresEngineSpecification'] == null ? null : (map['timeSeriresEngineSpecification']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}


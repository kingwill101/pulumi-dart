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
    pulumi.Output<String>? arbiterVswitchId,
    pulumi.Output<String>? arbiterZoneId,
    pulumi.Output<String>? archVersion,
    pulumi.Output<String>? autoRenew,
    pulumi.Output<String>? autoRenewPeriod,
    pulumi.Output<int>? coldStorage,
    pulumi.Output<int>? coreSingleStorage,
    pulumi.Output<String>? coreSpec,
    pulumi.Output<bool>? deletionProection,
    required pulumi.Output<String> diskCategory,
    pulumi.Output<String>? duration,
    pulumi.Output<int>? fileEngineNodeCount,
    pulumi.Output<String>? fileEngineSpecification,
    pulumi.Output<String>? instanceName,
    pulumi.Output<String>? instanceStorage,
    pulumi.Output<List<String>>? ipWhiteLists,
    pulumi.Output<String>? logDiskCategory,
    pulumi.Output<int>? logNum,
    pulumi.Output<int>? logSingleStorage,
    pulumi.Output<String>? logSpec,
    pulumi.Output<int>? ltsNodeCount,
    pulumi.Output<String>? ltsNodeSpecification,
    pulumi.Output<String>? multiZoneCombination,
    required pulumi.Output<String> paymentType,
    pulumi.Output<String>? pricingCycle,
    pulumi.Output<String>? primaryVswitchId,
    pulumi.Output<String>? primaryZoneId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<int>? searchEngineNodeCount,
    pulumi.Output<String>? searchEngineSpecification,
    pulumi.Output<String>? standbyVswitchId,
    pulumi.Output<String>? standbyZoneId,
    pulumi.Output<int>? streamEngineNodeCount,
    pulumi.Output<String>? streamEngineSpecification,
    pulumi.Output<int>? tableEngineNodeCount,
    pulumi.Output<String>? tableEngineSpecification,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? timeSeriesEngineNodeCount,
    pulumi.Output<String>? timeSeriesEngineSpecification,
    pulumi.Output<String>? timeSeriresEngineSpecification,
    pulumi.Output<String>? vpcId,
    required pulumi.Output<String> vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      arbiterVswitchId = pulumi.Input.asOptionalInput<String>(arbiterVswitchId),
      arbiterZoneId = pulumi.Input.asOptionalInput<String>(arbiterZoneId),
      archVersion = pulumi.Input.asOptionalInput<String>(archVersion),
      autoRenew = pulumi.Input.asOptionalInput<String>(autoRenew),
      autoRenewPeriod = pulumi.Input.asOptionalInput<String>(autoRenewPeriod),
      coldStorage = pulumi.Input.asOptionalInput<int>(coldStorage),
      coreSingleStorage = pulumi.Input.asOptionalInput<int>(coreSingleStorage),
      coreSpec = pulumi.Input.asOptionalInput<String>(coreSpec),
      deletionProection = pulumi.Input.asOptionalInput<bool>(deletionProection),
      diskCategory = pulumi.Input.asInput<String>(diskCategory),
      duration = pulumi.Input.asOptionalInput<String>(duration),
      fileEngineNodeCount = pulumi.Input.asOptionalInput<int>(fileEngineNodeCount),
      fileEngineSpecification = pulumi.Input.asOptionalInput<String>(fileEngineSpecification),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      instanceStorage = pulumi.Input.asOptionalInput<String>(instanceStorage),
      ipWhiteLists = pulumi.Input.asOptionalInput<List<String>>(ipWhiteLists),
      logDiskCategory = pulumi.Input.asOptionalInput<String>(logDiskCategory),
      logNum = pulumi.Input.asOptionalInput<int>(logNum),
      logSingleStorage = pulumi.Input.asOptionalInput<int>(logSingleStorage),
      logSpec = pulumi.Input.asOptionalInput<String>(logSpec),
      ltsNodeCount = pulumi.Input.asOptionalInput<int>(ltsNodeCount),
      ltsNodeSpecification = pulumi.Input.asOptionalInput<String>(ltsNodeSpecification),
      multiZoneCombination = pulumi.Input.asOptionalInput<String>(multiZoneCombination),
      paymentType = pulumi.Input.asInput<String>(paymentType),
      pricingCycle = pulumi.Input.asOptionalInput<String>(pricingCycle),
      primaryVswitchId = pulumi.Input.asOptionalInput<String>(primaryVswitchId),
      primaryZoneId = pulumi.Input.asOptionalInput<String>(primaryZoneId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      searchEngineNodeCount = pulumi.Input.asOptionalInput<int>(searchEngineNodeCount),
      searchEngineSpecification = pulumi.Input.asOptionalInput<String>(searchEngineSpecification),
      standbyVswitchId = pulumi.Input.asOptionalInput<String>(standbyVswitchId),
      standbyZoneId = pulumi.Input.asOptionalInput<String>(standbyZoneId),
      streamEngineNodeCount = pulumi.Input.asOptionalInput<int>(streamEngineNodeCount),
      streamEngineSpecification = pulumi.Input.asOptionalInput<String>(streamEngineSpecification),
      tableEngineNodeCount = pulumi.Input.asOptionalInput<int>(tableEngineNodeCount),
      tableEngineSpecification = pulumi.Input.asOptionalInput<String>(tableEngineSpecification),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeSeriesEngineNodeCount = pulumi.Input.asOptionalInput<int>(timeSeriesEngineNodeCount),
      timeSeriesEngineSpecification = pulumi.Input.asOptionalInput<String>(timeSeriesEngineSpecification),
      timeSeriresEngineSpecification = pulumi.Input.asOptionalInput<String>(timeSeriresEngineSpecification),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      arbiterVswitchId: map['arbiterVswitchId'] == null ? null : pulumi.Output.create<String>(map['arbiterVswitchId'] as String),
      arbiterZoneId: map['arbiterZoneId'] == null ? null : pulumi.Output.create<String>(map['arbiterZoneId'] as String),
      archVersion: map['archVersion'] == null ? null : pulumi.Output.create<String>(map['archVersion'] as String),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<String>(map['autoRenew'] as String),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : pulumi.Output.create<String>(map['autoRenewPeriod'] as String),
      coldStorage: map['coldStorage'] == null ? null : pulumi.Output.create<int>(map['coldStorage'] as int),
      coreSingleStorage: map['coreSingleStorage'] == null ? null : pulumi.Output.create<int>(map['coreSingleStorage'] as int),
      coreSpec: map['coreSpec'] == null ? null : pulumi.Output.create<String>(map['coreSpec'] as String),
      deletionProection: map['deletionProection'] == null ? null : pulumi.Output.create<bool>(map['deletionProection'] as bool),
      diskCategory: pulumi.Output.create<String>(map['diskCategory'] as String),
      duration: map['duration'] == null ? null : pulumi.Output.create<String>(map['duration'] as String),
      fileEngineNodeCount: map['fileEngineNodeCount'] == null ? null : pulumi.Output.create<int>(map['fileEngineNodeCount'] as int),
      fileEngineSpecification: map['fileEngineSpecification'] == null ? null : pulumi.Output.create<String>(map['fileEngineSpecification'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      instanceStorage: map['instanceStorage'] == null ? null : pulumi.Output.create<String>(map['instanceStorage'] as String),
      ipWhiteLists: map['ipWhiteLists'] == null ? null : pulumi.Output.create<List<String>>((map['ipWhiteLists'] as List).cast<String>()),
      logDiskCategory: map['logDiskCategory'] == null ? null : pulumi.Output.create<String>(map['logDiskCategory'] as String),
      logNum: map['logNum'] == null ? null : pulumi.Output.create<int>(map['logNum'] as int),
      logSingleStorage: map['logSingleStorage'] == null ? null : pulumi.Output.create<int>(map['logSingleStorage'] as int),
      logSpec: map['logSpec'] == null ? null : pulumi.Output.create<String>(map['logSpec'] as String),
      ltsNodeCount: map['ltsNodeCount'] == null ? null : pulumi.Output.create<int>(map['ltsNodeCount'] as int),
      ltsNodeSpecification: map['ltsNodeSpecification'] == null ? null : pulumi.Output.create<String>(map['ltsNodeSpecification'] as String),
      multiZoneCombination: map['multiZoneCombination'] == null ? null : pulumi.Output.create<String>(map['multiZoneCombination'] as String),
      paymentType: pulumi.Output.create<String>(map['paymentType'] as String),
      pricingCycle: map['pricingCycle'] == null ? null : pulumi.Output.create<String>(map['pricingCycle'] as String),
      primaryVswitchId: map['primaryVswitchId'] == null ? null : pulumi.Output.create<String>(map['primaryVswitchId'] as String),
      primaryZoneId: map['primaryZoneId'] == null ? null : pulumi.Output.create<String>(map['primaryZoneId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      searchEngineNodeCount: map['searchEngineNodeCount'] == null ? null : pulumi.Output.create<int>(map['searchEngineNodeCount'] as int),
      searchEngineSpecification: map['searchEngineSpecification'] == null ? null : pulumi.Output.create<String>(map['searchEngineSpecification'] as String),
      standbyVswitchId: map['standbyVswitchId'] == null ? null : pulumi.Output.create<String>(map['standbyVswitchId'] as String),
      standbyZoneId: map['standbyZoneId'] == null ? null : pulumi.Output.create<String>(map['standbyZoneId'] as String),
      streamEngineNodeCount: map['streamEngineNodeCount'] == null ? null : pulumi.Output.create<int>(map['streamEngineNodeCount'] as int),
      streamEngineSpecification: map['streamEngineSpecification'] == null ? null : pulumi.Output.create<String>(map['streamEngineSpecification'] as String),
      tableEngineNodeCount: map['tableEngineNodeCount'] == null ? null : pulumi.Output.create<int>(map['tableEngineNodeCount'] as int),
      tableEngineSpecification: map['tableEngineSpecification'] == null ? null : pulumi.Output.create<String>(map['tableEngineSpecification'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeSeriesEngineNodeCount: map['timeSeriesEngineNodeCount'] == null ? null : pulumi.Output.create<int>(map['timeSeriesEngineNodeCount'] as int),
      timeSeriesEngineSpecification: map['timeSeriesEngineSpecification'] == null ? null : pulumi.Output.create<String>(map['timeSeriesEngineSpecification'] as String),
      timeSeriresEngineSpecification: map['timeSeriresEngineSpecification'] == null ? null : pulumi.Output.create<String>(map['timeSeriresEngineSpecification'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}


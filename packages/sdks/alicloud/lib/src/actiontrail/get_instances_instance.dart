// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance_allowed_list.dart';
import 'get_instances_instance_upgrade_service_detail_info.dart';

class GetInstancesInstance {
  /// The allowed list of the instance.
  final List<GetInstancesInstanceAllowedList> allowedLists;
  /// The config the instance.
  final String config;
  /// The create time of the instance.
  final String createTime;
  /// The deployed type of the instance.
  final int deployType;
  /// The disk size of the instance.
  final int diskSize;
  /// The disk type of the instance. 0: efficient cloud disk , 1: SSD.
  final int diskType;
  /// The domain point of the instance.
  final String domainEndpoint;
  /// The peak bandwidth of the instance.
  final int eipMax;
  /// The endPoint to access the instance.
  final String endPoint;
  /// The expired time  of the instance.
  final int expiredTime;
  /// ID of the instance.
  final String id;
  /// The peak value of io of the instance.
  final int ioMax;
  /// The msg retain of the instance.
  final int msgRetain;
  /// Name of the instance.
  final String name;
  /// The paid type of the instance.
  final String paidType;
  /// (Available in 1.194.0+) The number of partitions.
  final int partitionNum;
  /// The SASL domain point of the instance.
  final String saslDomainEndpoint;
  /// The security group of the instance.
  final String securityGroup;
  /// The current status of the instance. -1: unknown status, 0: wait deploy, 1: initializing, 2: preparing, 3 starting, 5: in service, 7: wait upgrade, 8: upgrading, 10: released, 15: freeze, 101: deploy error, 102: upgrade error.
  final int serviceStatus;
  /// The kafka openSource version of the instance.
  final String serviceVersion;
  /// The spec type of the instance.
  final String specType;
  /// The SSL domain point of the instance.
  final String sslDomainEndpoint;
  /// The SSL end point of the instance.
  final String sslEndPoint;
  /// A mapping of tags to assign to the instance.
  final Map<String, String>? tags;
  /// The max num of topic can be create of the instance.
  final int topicQuota;
  /// The UpgradeServiceDetailInfo List.
  final List<GetInstancesInstanceUpgradeServiceDetailInfo> upgradeServiceDetailInfos;
  /// The ID of attaching VPC to instance.
  final String vpcId;
  /// The ID of attaching vswitch to instance.
  final String vswitchId;
  /// The ID of attaching zone to instance.
  final String zoneId;

  /// Creates a new [GetInstancesInstance].
  /// [allowedLists] The allowed list of the instance.
  /// [config] The config the instance.
  /// [createTime] The create time of the instance.
  /// [deployType] The deployed type of the instance.
  /// [diskSize] The disk size of the instance.
  /// [diskType] The disk type of the instance. 0: efficient cloud disk , 1: SSD.
  /// [domainEndpoint] The domain point of the instance.
  /// [eipMax] The peak bandwidth of the instance.
  /// [endPoint] The endPoint to access the instance.
  /// [expiredTime] The expired time  of the instance.
  /// [id] ID of the instance.
  /// [ioMax] The peak value of io of the instance.
  /// [msgRetain] The msg retain of the instance.
  /// [name] Name of the instance.
  /// [paidType] The paid type of the instance.
  /// [partitionNum] (Available in 1.194.0+) The number of partitions.
  /// [saslDomainEndpoint] The SASL domain point of the instance.
  /// [securityGroup] The security group of the instance.
  /// [serviceStatus] The current status of the instance. -1: unknown status, 0: wait deploy, 1: initializing, 2: preparing, 3 starting, 5: in service, 7: wait upgrade, 8: upgrading, 10: released, 15: freeze, 101: deploy error, 102: upgrade error.
  /// [serviceVersion] The kafka openSource version of the instance.
  /// [specType] The spec type of the instance.
  /// [sslDomainEndpoint] The SSL domain point of the instance.
  /// [sslEndPoint] The SSL end point of the instance.
  /// [tags] A mapping of tags to assign to the instance.
  /// [topicQuota] The max num of topic can be create of the instance.
  /// [upgradeServiceDetailInfos] The UpgradeServiceDetailInfo List.
  /// [vpcId] The ID of attaching VPC to instance.
  /// [vswitchId] The ID of attaching vswitch to instance.
  /// [zoneId] The ID of attaching zone to instance.
  GetInstancesInstance({
    required this.allowedLists,
    required this.config,
    required this.createTime,
    required this.deployType,
    required this.diskSize,
    required this.diskType,
    required this.domainEndpoint,
    required this.eipMax,
    required this.endPoint,
    required this.expiredTime,
    required this.id,
    required this.ioMax,
    required this.msgRetain,
    required this.name,
    required this.paidType,
    required this.partitionNum,
    required this.saslDomainEndpoint,
    required this.securityGroup,
    required this.serviceStatus,
    required this.serviceVersion,
    required this.specType,
    required this.sslDomainEndpoint,
    required this.sslEndPoint,
    this.tags,
    required this.topicQuota,
    required this.upgradeServiceDetailInfos,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedLists': pulumi.Input.encodeList<GetInstancesInstanceAllowedList, Map<String, dynamic>>(allowedLists, (value) => value.toMap()),
      'config': config,
      'createTime': createTime,
      'deployType': deployType,
      'diskSize': diskSize,
      'diskType': diskType,
      'domainEndpoint': domainEndpoint,
      'eipMax': eipMax,
      'endPoint': endPoint,
      'expiredTime': expiredTime,
      'id': id,
      'ioMax': ioMax,
      'msgRetain': msgRetain,
      'name': name,
      'paidType': paidType,
      'partitionNum': partitionNum,
      'saslDomainEndpoint': saslDomainEndpoint,
      'securityGroup': securityGroup,
      'serviceStatus': serviceStatus,
      'serviceVersion': serviceVersion,
      'specType': specType,
      'sslDomainEndpoint': sslDomainEndpoint,
      'sslEndPoint': sslEndPoint,
      'tags': ?tags,
      'topicQuota': topicQuota,
      'upgradeServiceDetailInfos': pulumi.Input.encodeList<GetInstancesInstanceUpgradeServiceDetailInfo, Map<String, dynamic>>(upgradeServiceDetailInfos, (value) => value.toMap()),
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      allowedLists: pulumi.Input.decodeList<GetInstancesInstanceAllowedList>(map['allowedLists'], (value) => GetInstancesInstanceAllowedList.fromMap((value as Map).cast<String, dynamic>())),
      config: map['config'] as String,
      createTime: map['createTime'] as String,
      deployType: map['deployType'] as int,
      diskSize: map['diskSize'] as int,
      diskType: map['diskType'] as int,
      domainEndpoint: map['domainEndpoint'] as String,
      eipMax: map['eipMax'] as int,
      endPoint: map['endPoint'] as String,
      expiredTime: map['expiredTime'] as int,
      id: map['id'] as String,
      ioMax: map['ioMax'] as int,
      msgRetain: map['msgRetain'] as int,
      name: map['name'] as String,
      paidType: map['paidType'] as String,
      partitionNum: map['partitionNum'] as int,
      saslDomainEndpoint: map['saslDomainEndpoint'] as String,
      securityGroup: map['securityGroup'] as String,
      serviceStatus: map['serviceStatus'] as int,
      serviceVersion: map['serviceVersion'] as String,
      specType: map['specType'] as String,
      sslDomainEndpoint: map['sslDomainEndpoint'] as String,
      sslEndPoint: map['sslEndPoint'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      topicQuota: map['topicQuota'] as int,
      upgradeServiceDetailInfos: pulumi.Input.decodeList<GetInstancesInstanceUpgradeServiceDetailInfo>(map['upgradeServiceDetailInfos'], (value) => GetInstancesInstanceUpgradeServiceDetailInfo.fromMap((value as Map).cast<String, dynamic>())),
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}


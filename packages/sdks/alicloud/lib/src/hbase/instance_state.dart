// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_slb_conn_addr.dart';
import 'instance_ui_proxy_conn_addr.dart';
import 'instance_zk_conn_addr.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// The account of the cluster web ui. Size [0-128].
  final pulumi.Input<String>? account;
  /// Valid values are `true`, `false`, system default to `false`, valid when pay_type = PrePaid.
  final pulumi.Input<bool>? autoRenew;
  /// 0 or [800, 100000000], step:10-GB increments. 0 means is_cold_storage = false. [800, 100000000] means is_cold_storage = true.
  final pulumi.Input<int>? coldStorageSize;
  /// User-defined HBase instance one core node's storage. Valid when engine=hbase/hbaseue. Bds engine no need core_disk_size, space.Unit: GB. Value range:
  /// - Custom storage space, value range: [20, 64000].
  /// - Cluster [400, 64000], step:40-GB increments.
  /// - Single [20-500GB], step:1-GB increments.
  final pulumi.Input<int>? coreDiskSize;
  /// Valid values are `cloud_ssd`, `cloud_essd_pl1`, `cloud_efficiency`, `local_hdd_pro`, `local_ssd_pro`，``, local_disk size is fixed. When engine=bds, no need to set disk type(or empty string).
  final pulumi.Input<String>? coreDiskType;
  /// Default=2, [1-200]. If core_instance_quantity &gt; 1, this is cluster's instance. If core_instance_quantity = 1, this is a single instance.
  final pulumi.Input<int>? coreInstanceQuantity;
  /// Instance specification. See [Instance specifications](https://help.aliyun.com/document_detail/53532.html), or you can call describeInstanceType api.
  final pulumi.Input<String>? coreInstanceType;
  /// The switch of delete protection. True: delete protect, False: no delete protect. You must set false when you want to delete cluster.
  final pulumi.Input<bool>? deletionProtection;
  /// 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24, 36, valid when pay_type = PrePaid,  unit: month. 12, 24, 36 mean 1, 2, 3 years.
  final pulumi.Input<int>? duration;
  /// Valid values are "hbase/hbaseue/bds". The following types are supported after v1.73.0: `hbaseue` and `bds`. Single hbase instance need to set engine=hbase, core_instance_quantity=1.
  final pulumi.Input<String>? engine;
  /// HBase major version. hbase:1.1/2.0, hbaseue:2.0, bds:1.0, unsupport other engine temporarily. Value options can refer to the latest docs [CreateInstance](https://www.alibabacloud.com/help/en/data-lake-analytics/latest/createinstance).
  final pulumi.Input<String>? engineVersion;
  /// The switch of delete immediate. True: delete immediate, False: delete delay. You will not found the cluster no matter set true or false.
  final pulumi.Input<bool>? immediateDeleteFlag;
  /// The white ip list of the cluster.
  final pulumi.Input<String>? ipWhite;
  /// The end time of the operation and maintenance time period of the instance, in the format of HH:mmZ (UTC time), for example 04:00Z.
  final pulumi.Input<String>? maintainEndTime;
  /// The start time of the operation and maintenance time period of the instance, in the format of HH:mmZ (UTC time), for example 02:00Z.
  final pulumi.Input<String>? maintainStartTime;
  /// Count nodes of the master node.
  final pulumi.Input<int>? masterInstanceQuantity;
  /// Instance specification. See [Instance specifications](https://help.aliyun.com/document_detail/53532.html), or you can call describeInstanceType api.
  final pulumi.Input<String>? masterInstanceType;
  /// HBase instance name. Length must be 2-128 characters long. Only Chinese characters, English letters, numbers, period (.), underline (_), or dash (-) are permitted.
  final pulumi.Input<String>? name;
  /// The password of the cluster web ui account. Size [0-128].
  final pulumi.Input<String>? password;
  /// Valid values are `PrePaid`, `PostPaid`, System default to `PostPaid`. You can also convert PostPaid to PrePaid. And support convert PrePaid to PostPaid from 1.115.0+.
  final pulumi.Input<String>? payType;
  /// The security group resource of the cluster.
  final pulumi.Input<List<String>>? securityGroups;
  /// The slb service addresses of the cluster. See `slb_conn_addrs` below.
  ///
  /// &gt; **NOTE:** Now only instance name can be change. The others(instance_type, disk_size, core_instance_quantity and so on) will be supported in the furture.
  final pulumi.Input<List<InstanceSlbConnAddr>>? slbConnAddrs;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Web UI proxy addresses of the cluster. See `ui_proxy_conn_addrs` below.
  final pulumi.Input<List<InstanceUiProxyConnAddr>>? uiProxyConnAddrs;
  /// The id of the VPC.
  final pulumi.Input<String>? vpcId;
  /// If vswitch_id is not empty, that mean net_type = vpc and has a same region. If vswitch_id is empty, net_type=classic. Intl site not support classic network.
  final pulumi.Input<String>? vswitchId;
  /// The zookeeper addresses of the cluster. See `zk_conn_addrs` below.
  final pulumi.Input<List<InstanceZkConnAddr>>? zkConnAddrs;
  /// The Zone to launch the HBase instance. If vswitch_id is not empty, this zone_id can be "" or consistent.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [InstanceState].
  /// [account] The account of the cluster web ui. Size [0-128].
  /// [autoRenew] Valid values are `true`, `false`, system default to `false`, valid when pay_type = PrePaid.
  /// [coldStorageSize] 0 or [800, 100000000], step:10-GB increments. 0 means is_cold_storage = false. [800, 100000000] means is_cold_storage = true.
  /// [coreDiskSize] User-defined HBase instance one core node's storage. Valid when engine=hbase/hbaseue. Bds engine no need core_disk_size, space.Unit: GB. Value range:
  /// [coreDiskType] Valid values are `cloud_ssd`, `cloud_essd_pl1`, `cloud_efficiency`, `local_hdd_pro`, `local_ssd_pro`，``, local_disk size is fixed. When engine=bds, no need to set disk type(or empty string).
  /// [coreInstanceQuantity] Default=2, [1-200]. If core_instance_quantity &gt; 1, this is cluster's instance. If core_instance_quantity = 1, this is a single instance.
  /// [coreInstanceType] Instance specification. See [Instance specifications](https://help.aliyun.com/document_detail/53532.html), or you can call describeInstanceType api.
  /// [deletionProtection] The switch of delete protection. True: delete protect, False: no delete protect. You must set false when you want to delete cluster.
  /// [duration] 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24, 36, valid when pay_type = PrePaid,  unit: month. 12, 24, 36 mean 1, 2, 3 years.
  /// [engine] Valid values are "hbase/hbaseue/bds". The following types are supported after v1.73.0: `hbaseue` and `bds`. Single hbase instance need to set engine=hbase, core_instance_quantity=1.
  /// [engineVersion] HBase major version. hbase:1.1/2.0, hbaseue:2.0, bds:1.0, unsupport other engine temporarily. Value options can refer to the latest docs [CreateInstance](https://www.alibabacloud.com/help/en/data-lake-analytics/latest/createinstance).
  /// [immediateDeleteFlag] The switch of delete immediate. True: delete immediate, False: delete delay. You will not found the cluster no matter set true or false.
  /// [ipWhite] The white ip list of the cluster.
  /// [maintainEndTime] The end time of the operation and maintenance time period of the instance, in the format of HH:mmZ (UTC time), for example 04:00Z.
  /// [maintainStartTime] The start time of the operation and maintenance time period of the instance, in the format of HH:mmZ (UTC time), for example 02:00Z.
  /// [masterInstanceQuantity] Count nodes of the master node.
  /// [masterInstanceType] Instance specification. See [Instance specifications](https://help.aliyun.com/document_detail/53532.html), or you can call describeInstanceType api.
  /// [name] HBase instance name. Length must be 2-128 characters long. Only Chinese characters, English letters, numbers, period (.), underline (_), or dash (-) are permitted.
  /// [password] The password of the cluster web ui account. Size [0-128].
  /// [payType] Valid values are `PrePaid`, `PostPaid`, System default to `PostPaid`. You can also convert PostPaid to PrePaid. And support convert PrePaid to PostPaid from 1.115.0+.
  /// [securityGroups] The security group resource of the cluster.
  /// [slbConnAddrs] The slb service addresses of the cluster. See `slb_conn_addrs` below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [uiProxyConnAddrs] The Web UI proxy addresses of the cluster. See `ui_proxy_conn_addrs` below.
  /// [vpcId] The id of the VPC.
  /// [vswitchId] If vswitch_id is not empty, that mean net_type = vpc and has a same region. If vswitch_id is empty, net_type=classic. Intl site not support classic network.
  /// [zkConnAddrs] The zookeeper addresses of the cluster. See `zk_conn_addrs` below.
  /// [zoneId] The Zone to launch the HBase instance. If vswitch_id is not empty, this zone_id can be "" or consistent.
  InstanceState({
    this.account,
    this.autoRenew,
    this.coldStorageSize,
    this.coreDiskSize,
    this.coreDiskType,
    this.coreInstanceQuantity,
    this.coreInstanceType,
    this.deletionProtection,
    this.duration,
    this.engine,
    this.engineVersion,
    this.immediateDeleteFlag,
    this.ipWhite,
    this.maintainEndTime,
    this.maintainStartTime,
    this.masterInstanceQuantity,
    this.masterInstanceType,
    this.name,
    this.password,
    this.payType,
    this.securityGroups,
    this.slbConnAddrs,
    this.tags,
    this.uiProxyConnAddrs,
    this.vpcId,
    this.vswitchId,
    this.zkConnAddrs,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': ?account,
      'autoRenew': ?autoRenew,
      'coldStorageSize': ?coldStorageSize,
      'coreDiskSize': ?coreDiskSize,
      'coreDiskType': ?coreDiskType,
      'coreInstanceQuantity': ?coreInstanceQuantity,
      'coreInstanceType': ?coreInstanceType,
      'deletionProtection': ?deletionProtection,
      'duration': ?duration,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'immediateDeleteFlag': ?immediateDeleteFlag,
      'ipWhite': ?ipWhite,
      'maintainEndTime': ?maintainEndTime,
      'maintainStartTime': ?maintainStartTime,
      'masterInstanceQuantity': ?masterInstanceQuantity,
      'masterInstanceType': ?masterInstanceType,
      'name': ?name,
      'password': ?password,
      'payType': ?payType,
      'securityGroups': ?securityGroups,
      'slbConnAddrs': ?pulumi.Input.mapOptionalInputValue<List<InstanceSlbConnAddr>, List<Map<String, dynamic>>>(slbConnAddrs, (value) => pulumi.Input.encodeList<InstanceSlbConnAddr, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'uiProxyConnAddrs': ?pulumi.Input.mapOptionalInputValue<List<InstanceUiProxyConnAddr>, List<Map<String, dynamic>>>(uiProxyConnAddrs, (value) => pulumi.Input.encodeList<InstanceUiProxyConnAddr, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zkConnAddrs': ?pulumi.Input.mapOptionalInputValue<List<InstanceZkConnAddr>, List<Map<String, dynamic>>>(zkConnAddrs, (value) => pulumi.Input.encodeList<InstanceZkConnAddr, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      account: (() { final guardedValue = map['account']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      coldStorageSize: (() { final guardedValue = map['coldStorageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      coreDiskSize: (() { final guardedValue = map['coreDiskSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      coreDiskType: (() { final guardedValue = map['coreDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coreInstanceQuantity: (() { final guardedValue = map['coreInstanceQuantity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      coreInstanceType: (() { final guardedValue = map['coreInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      immediateDeleteFlag: (() { final guardedValue = map['immediateDeleteFlag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipWhite: (() { final guardedValue = map['ipWhite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintainEndTime: (() { final guardedValue = map['maintainEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintainStartTime: (() { final guardedValue = map['maintainStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterInstanceQuantity: (() { final guardedValue = map['masterInstanceQuantity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      masterInstanceType: (() { final guardedValue = map['masterInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payType: (() { final guardedValue = map['payType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      slbConnAddrs: (() { final guardedValue = map['slbConnAddrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceSlbConnAddr>(guardedValue, (value) => InstanceSlbConnAddr.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      uiProxyConnAddrs: (() { final guardedValue = map['uiProxyConnAddrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceUiProxyConnAddr>(guardedValue, (value) => InstanceUiProxyConnAddr.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zkConnAddrs: (() { final guardedValue = map['zkConnAddrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceZkConnAddr>(guardedValue, (value) => InstanceZkConnAddr.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


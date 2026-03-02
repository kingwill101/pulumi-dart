// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDdosCooInstancesInstance {
  /// The instance's elastic defend bandwidth.
  final pulumi.Input<int> bandwidth;
  /// The instance's base defend bandwidth.
  final pulumi.Input<int> baseBandwidth;
  /// The creation time of the instance.
  final pulumi.Input<int> createTime;
  /// The debt status of the instance.
  final pulumi.Input<int> debtStatus;
  /// The instance's count of domain retransmission config.
  final pulumi.Input<int> domainCount;
  /// The edition of the instance.
  final pulumi.Input<int> edition;
  /// The enabled of the instance.
  final pulumi.Input<int> enabled;
  /// The expiry time of the instance.
  final pulumi.Input<int> expireTime;
  /// The instance's id.
  final pulumi.Input<String> id;
  /// The ip mode of the instance.
  final pulumi.Input<String> ipMode;
  /// The ip version of the instance.
  final pulumi.Input<String> ipVersion;
  /// The instance's remark.
  final pulumi.Input<String> name;
  /// The instance's count of port retransmission config.
  final pulumi.Input<int> portCount;
  /// The remark of the instance.
  final pulumi.Input<String> remark;
  /// The instance's business bandwidth.
  final pulumi.Input<int> serviceBandwidth;
  /// The status of the instance.
  final pulumi.Input<int> status;

  /// Creates a new [GetDdosCooInstancesInstance].
  /// [bandwidth] The instance's elastic defend bandwidth.
  /// [baseBandwidth] The instance's base defend bandwidth.
  /// [createTime] The creation time of the instance.
  /// [debtStatus] The debt status of the instance.
  /// [domainCount] The instance's count of domain retransmission config.
  /// [edition] The edition of the instance.
  /// [enabled] The enabled of the instance.
  /// [expireTime] The expiry time of the instance.
  /// [id] The instance's id.
  /// [ipMode] The ip mode of the instance.
  /// [ipVersion] The ip version of the instance.
  /// [name] The instance's remark.
  /// [portCount] The instance's count of port retransmission config.
  /// [remark] The remark of the instance.
  /// [serviceBandwidth] The instance's business bandwidth.
  /// [status] The status of the instance.
  GetDdosCooInstancesInstance({
    required this.bandwidth,
    required this.baseBandwidth,
    required this.createTime,
    required this.debtStatus,
    required this.domainCount,
    required this.edition,
    required this.enabled,
    required this.expireTime,
    required this.id,
    required this.ipMode,
    required this.ipVersion,
    required this.name,
    required this.portCount,
    required this.remark,
    required this.serviceBandwidth,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'baseBandwidth': baseBandwidth,
      'createTime': createTime,
      'debtStatus': debtStatus,
      'domainCount': domainCount,
      'edition': edition,
      'enabled': enabled,
      'expireTime': expireTime,
      'id': id,
      'ipMode': ipMode,
      'ipVersion': ipVersion,
      'name': name,
      'portCount': portCount,
      'remark': remark,
      'serviceBandwidth': serviceBandwidth,
      'status': status,
    };
  }

  factory GetDdosCooInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetDdosCooInstancesInstance(
      bandwidth: (map['bandwidth'] as int).input(),
      baseBandwidth: (map['baseBandwidth'] as int).input(),
      createTime: (map['createTime'] as int).input(),
      debtStatus: (map['debtStatus'] as int).input(),
      domainCount: (map['domainCount'] as int).input(),
      edition: (map['edition'] as int).input(),
      enabled: (map['enabled'] as int).input(),
      expireTime: (map['expireTime'] as int).input(),
      id: (map['id'] as String).input(),
      ipMode: (map['ipMode'] as String).input(),
      ipVersion: (map['ipVersion'] as String).input(),
      name: (map['name'] as String).input(),
      portCount: (map['portCount'] as int).input(),
      remark: (map['remark'] as String).input(),
      serviceBandwidth: (map['serviceBandwidth'] as int).input(),
      status: (map['status'] as int).input(),
    );
  }
}


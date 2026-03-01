// ignore_for_file: unused_element, unnecessary_cast


class GetDdosCooInstancesInstance {
  /// The instance's elastic defend bandwidth.
  final int bandwidth;
  /// The instance's base defend bandwidth.
  final int baseBandwidth;
  /// The creation time of the instance.
  final int createTime;
  /// The debt status of the instance.
  final int debtStatus;
  /// The instance's count of domain retransmission config.
  final int domainCount;
  /// The edition of the instance.
  final int edition;
  /// The enabled of the instance.
  final int enabled;
  /// The expiry time of the instance.
  final int expireTime;
  /// The instance's id.
  final String id;
  /// The ip mode of the instance.
  final String ipMode;
  /// The ip version of the instance.
  final String ipVersion;
  /// The instance's remark.
  final String name;
  /// The instance's count of port retransmission config.
  final int portCount;
  /// The remark of the instance.
  final String remark;
  /// The instance's business bandwidth.
  final int serviceBandwidth;
  /// The status of the instance.
  final int status;

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
      bandwidth: map['bandwidth'] as int,
      baseBandwidth: map['baseBandwidth'] as int,
      createTime: map['createTime'] as int,
      debtStatus: map['debtStatus'] as int,
      domainCount: map['domainCount'] as int,
      edition: map['edition'] as int,
      enabled: map['enabled'] as int,
      expireTime: map['expireTime'] as int,
      id: map['id'] as String,
      ipMode: map['ipMode'] as String,
      ipVersion: map['ipVersion'] as String,
      name: map['name'] as String,
      portCount: map['portCount'] as int,
      remark: map['remark'] as String,
      serviceBandwidth: map['serviceBandwidth'] as int,
      status: map['status'] as int,
    );
  }
}


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
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as int),
      baseBandwidth: pulumi.Input.fromValue(map['baseBandwidth'] as int),
      createTime: pulumi.Input.fromValue(map['createTime'] as int),
      debtStatus: pulumi.Input.fromValue(map['debtStatus'] as int),
      domainCount: pulumi.Input.fromValue(map['domainCount'] as int),
      edition: pulumi.Input.fromValue(map['edition'] as int),
      enabled: pulumi.Input.fromValue(map['enabled'] as int),
      expireTime: pulumi.Input.fromValue(map['expireTime'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipMode: pulumi.Input.fromValue(map['ipMode'] as String),
      ipVersion: pulumi.Input.fromValue(map['ipVersion'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      portCount: pulumi.Input.fromValue(map['portCount'] as int),
      remark: pulumi.Input.fromValue(map['remark'] as String),
      serviceBandwidth: pulumi.Input.fromValue(map['serviceBandwidth'] as int),
      status: pulumi.Input.fromValue(map['status'] as int),
    );
  }
}

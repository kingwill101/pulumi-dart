// ignore_for_file: unused_element, unnecessary_cast


class InstanceZoneInfo {
  /// The ID of the node.
  final String? insName;
  /// The type of the node.
  final String? nodeType;
  /// The id of the role.
  final String? roleId;
  /// The role of the node.
  final String? roleType;
  /// The Zone to launch the DB instance. it supports multiple zone.
  /// If it is a multi-zone and `vswitch_id` is specified, the vswitch must in one of them.
  /// The multiple zone ID can be retrieved by setting `multi` to "true" in the data source `alicloud.getZones`.
  final String? zoneId;

  /// Creates a new [InstanceZoneInfo].
  /// [insName] The ID of the node.
  /// [nodeType] The type of the node.
  /// [roleId] The id of the role.
  /// [roleType] The role of the node.
  /// [zoneId] The Zone to launch the DB instance. it supports multiple zone.
  InstanceZoneInfo({
    this.insName,
    this.nodeType,
    this.roleId,
    this.roleType,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insName': ?insName,
      'nodeType': ?nodeType,
      'roleId': ?roleId,
      'roleType': ?roleType,
      'zoneId': ?zoneId,
    };
  }

  factory InstanceZoneInfo.fromMap(Map<String, dynamic> map) {
    return InstanceZoneInfo(
      insName: map['insName'] == null ? null : map['insName'] as String,
      nodeType: map['nodeType'] == null ? null : map['nodeType'] as String,
      roleId: map['roleId'] == null ? null : map['roleId'] as String,
      roleType: map['roleType'] == null ? null : map['roleType'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}


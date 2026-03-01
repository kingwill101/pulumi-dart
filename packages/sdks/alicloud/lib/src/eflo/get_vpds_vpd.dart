// ignore_for_file: unused_element, unnecessary_cast


class GetVpdsVpd {
  /// CIDR network segment
  final String cidr;
  /// The creation time of the resource
  final String createTime;
  /// Modification time
  final String gmtModified;
  /// The id of the vpd.
  final String id;
  /// The Resource group id
  final String resourceGroupId;
  /// The Vpd status. Valid values: `Available`, `Not Available`, `Executing`, `Deleting`,
  final String status;
  /// The id of the vpd.
  final String vpdId;
  /// The Name of the VPD.
  final String vpdName;

  /// Creates a new [GetVpdsVpd].
  /// [cidr] CIDR network segment
  /// [createTime] The creation time of the resource
  /// [gmtModified] Modification time
  /// [id] The id of the vpd.
  /// [resourceGroupId] The Resource group id
  /// [status] The Vpd status. Valid values: `Available`, `Not Available`, `Executing`, `Deleting`,
  /// [vpdId] The id of the vpd.
  /// [vpdName] The Name of the VPD.
  GetVpdsVpd({
    required this.cidr,
    required this.createTime,
    required this.gmtModified,
    required this.id,
    required this.resourceGroupId,
    required this.status,
    required this.vpdId,
    required this.vpdName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'createTime': createTime,
      'gmtModified': gmtModified,
      'id': id,
      'resourceGroupId': resourceGroupId,
      'status': status,
      'vpdId': vpdId,
      'vpdName': vpdName,
    };
  }

  factory GetVpdsVpd.fromMap(Map<String, dynamic> map) {
    return GetVpdsVpd(
      cidr: map['cidr'] as String,
      createTime: map['createTime'] as String,
      gmtModified: map['gmtModified'] as String,
      id: map['id'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      status: map['status'] as String,
      vpdId: map['vpdId'] as String,
      vpdName: map['vpdName'] as String,
    );
  }
}


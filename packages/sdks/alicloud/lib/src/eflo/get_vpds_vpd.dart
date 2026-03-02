// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpdsVpd {
  /// CIDR network segment
  final pulumi.Input<String> cidr;
  /// The creation time of the resource
  final pulumi.Input<String> createTime;
  /// Modification time
  final pulumi.Input<String> gmtModified;
  /// The id of the vpd.
  final pulumi.Input<String> id;
  /// The Resource group id
  final pulumi.Input<String> resourceGroupId;
  /// The Vpd status. Valid values: `Available`, `Not Available`, `Executing`, `Deleting`,
  final pulumi.Input<String> status;
  /// The id of the vpd.
  final pulumi.Input<String> vpdId;
  /// The Name of the VPD.
  final pulumi.Input<String> vpdName;

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
      cidr: (map['cidr'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      gmtModified: (map['gmtModified'] as String).input(),
      id: (map['id'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      status: (map['status'] as String).input(),
      vpdId: (map['vpdId'] as String).input(),
      vpdName: (map['vpdName'] as String).input(),
    );
  }
}


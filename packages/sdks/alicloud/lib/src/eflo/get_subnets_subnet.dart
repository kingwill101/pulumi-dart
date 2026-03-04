// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSubnetsSubnet {
  /// Network segment
  final pulumi.Input<String> cidr;

  /// The creation time of the resource
  final pulumi.Input<String> createTime;

  /// Modification time
  final pulumi.Input<String> gmtModified;

  /// The ID of the resource.
  final pulumi.Input<String> id;

  /// Error message
  final pulumi.Input<String> message;

  /// Resource Group ID.
  final pulumi.Input<String> resourceGroupId;

  /// The status of the resource.
  final pulumi.Input<String> status;

  /// Primary key ID.
  final pulumi.Input<String> subnetId;

  /// The Subnet name.
  final pulumi.Input<String> subnetName;

  /// Eflo subnet usage type, optional value:
  /// - General type is not filled in
  /// - OOB:OOB type
  /// - LB: LB type
  final pulumi.Input<String> type;

  /// The Eflo VPD ID.
  final pulumi.Input<String> vpdId;

  /// The zone ID of the resource.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetSubnetsSubnet].
  /// [cidr] Network segment
  /// [createTime] The creation time of the resource
  /// [gmtModified] Modification time
  /// [id] The ID of the resource.
  /// [message] Error message
  /// [resourceGroupId] Resource Group ID.
  /// [status] The status of the resource.
  /// [subnetId] Primary key ID.
  /// [subnetName] The Subnet name.
  /// [type] Eflo subnet usage type, optional value:
  /// [vpdId] The Eflo VPD ID.
  /// [zoneId] The zone ID of the resource.
  GetSubnetsSubnet({
    required this.cidr,
    required this.createTime,
    required this.gmtModified,
    required this.id,
    required this.message,
    required this.resourceGroupId,
    required this.status,
    required this.subnetId,
    required this.subnetName,
    required this.type,
    required this.vpdId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'createTime': createTime,
      'gmtModified': gmtModified,
      'id': id,
      'message': message,
      'resourceGroupId': resourceGroupId,
      'status': status,
      'subnetId': subnetId,
      'subnetName': subnetName,
      'type': type,
      'vpdId': vpdId,
      'zoneId': zoneId,
    };
  }

  factory GetSubnetsSubnet.fromMap(Map<String, dynamic> map) {
    return GetSubnetsSubnet(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      gmtModified: pulumi.Input.fromValue(map['gmtModified'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      subnetName: pulumi.Input.fromValue(map['subnetName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      vpdId: pulumi.Input.fromValue(map['vpdId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

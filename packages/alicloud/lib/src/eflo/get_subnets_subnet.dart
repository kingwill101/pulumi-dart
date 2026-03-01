// ignore_for_file: unused_element, unnecessary_cast


class GetSubnetsSubnet {
  /// Network segment
  final String cidr;
  /// The creation time of the resource
  final String createTime;
  /// Modification time
  final String gmtModified;
  /// The ID of the resource.
  final String id;
  /// Error message
  final String message;
  /// Resource Group ID.
  final String resourceGroupId;
  /// The status of the resource.
  final String status;
  /// Primary key ID.
  final String subnetId;
  /// The Subnet name.
  final String subnetName;
  /// Eflo subnet usage type, optional value:
  /// - General type is not filled in
  /// - OOB:OOB type
  /// - LB: LB type
  final String type;
  /// The Eflo VPD ID.
  final String vpdId;
  /// The zone ID of the resource.
  final String zoneId;

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
      cidr: map['cidr'] as String,
      createTime: map['createTime'] as String,
      gmtModified: map['gmtModified'] as String,
      id: map['id'] as String,
      message: map['message'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      status: map['status'] as String,
      subnetId: map['subnetId'] as String,
      subnetName: map['subnetName'] as String,
      type: map['type'] as String,
      vpdId: map['vpdId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}


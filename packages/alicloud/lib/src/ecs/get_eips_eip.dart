// ignore_for_file: unused_element, unnecessary_cast


class GetEipsEip {
  /// EIP internet max bandwidth in Mbps.
  final String bandwidth;
  /// Time of creation.
  final String creationTime;
  /// (Optional, Available in v1.124.4+) Whether enable the deletion protection or not.
  final bool deletionProtection;
  /// ID of the EIP.
  final String id;
  /// The ID of the instance that is being bound.
  final String instanceId;
  /// The instance type of that the EIP is bound.
  final String instanceType;
  /// EIP internet charge type.
  final String internetChargeType;
  /// Public IP Address of the the EIP.
  final String ipAddress;
  /// EIP status. Possible values are: `Associating`, `Unassociating`, `InUse` and `Available`.
  final String status;

  /// Creates a new [GetEipsEip].
  /// [bandwidth] EIP internet max bandwidth in Mbps.
  /// [creationTime] Time of creation.
  /// [deletionProtection] (Optional, Available in v1.124.4+) Whether enable the deletion protection or not.
  /// [id] ID of the EIP.
  /// [instanceId] The ID of the instance that is being bound.
  /// [instanceType] The instance type of that the EIP is bound.
  /// [internetChargeType] EIP internet charge type.
  /// [ipAddress] Public IP Address of the the EIP.
  /// [status] EIP status. Possible values are: `Associating`, `Unassociating`, `InUse` and `Available`.
  GetEipsEip({
    required this.bandwidth,
    required this.creationTime,
    required this.deletionProtection,
    required this.id,
    required this.instanceId,
    required this.instanceType,
    required this.internetChargeType,
    required this.ipAddress,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'creationTime': creationTime,
      'deletionProtection': deletionProtection,
      'id': id,
      'instanceId': instanceId,
      'instanceType': instanceType,
      'internetChargeType': internetChargeType,
      'ipAddress': ipAddress,
      'status': status,
    };
  }

  factory GetEipsEip.fromMap(Map<String, dynamic> map) {
    return GetEipsEip(
      bandwidth: map['bandwidth'] as String,
      creationTime: map['creationTime'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      instanceType: map['instanceType'] as String,
      internetChargeType: map['internetChargeType'] as String,
      ipAddress: map['ipAddress'] as String,
      status: map['status'] as String,
    );
  }
}

